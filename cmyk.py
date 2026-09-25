#!/usr/bin/env python3
"""
cmyk.py — prepara las láminas de «Yuyos de la Quebrada de Cafayate» para imprenta.

Hace dos cosas:

1. Convierte cada imagen de img/ a CMYK con un perfil ICC de salida (por
   defecto Coated FOGRA39) y la guarda con el mismo nombre en img-cmyk/,
   con el perfil incrustado. Si la imagen ya está en CMYK, solo le
   incrusta el perfil. Los archivos de img/ no se tocan.

   Una lámina nueva puede dejarse en img/ en RGB (por ejemplo, la que
   devuelve Gemini): se convierte sola la próxima vez que se corra este
   script. Las láminas con el sufijo «cmyk» (01-cubierta-cmyk.png,
   01-cubierta_cmyk.png…) se guardan con el nombre del JPG original:
   img/01-cubierta-cmyk.png → img-cmyk/01-cubierta.jpg. Si en img/ existen
   las dos, manda la versión cmyk.

2. Deja en la raíz del repo el perfil de salida (perfil-salida.icc) y un
   fragmento LaTeX (perfil-salida.tex) que declara el OutputIntent del PDF.
   cafayate.tex y cubierta.tex lo cargan con \\input si existe, y en ese
   caso toman las láminas de img-cmyk/.

   img-cmyk/, perfil-salida.icc y perfil-salida.tex se commitean: así el
   PDF de imprenta se puede regenerar desde un clon limpio del repo.

Uso (desde C:\\CAFAYATE):
    py cmyk.py                          # FOGRA39 de la distribución TeX
    py cmyk.py --perfil PSOuncoated_v3_FOGRA52.icc
    py cmyk.py --forzar                 # reconvierte todo, aunque esté al día

o con doble clic en cmyk.bat. Actualizar-Cafayate.ps1 lo corre solo antes
de compilar.

Requiere Pillow con soporte de LittleCMS (el de pip lo trae):
    py -m pip install pillow
"""

import argparse
import re
import shutil
import subprocess
import sys
from io import BytesIO
from pathlib import Path

from PIL import Image, ImageCms

EXTENSIONES = {".jpg", ".jpeg", ".png"}

# Sufijo de las versiones preparadas para imprenta: «-cmyk», «_cmyk»,
# « cmyk», «.cmyk» o «cmyk» pegado, en mayúsculas o minúsculas.
SUFIJO_CMYK = re.compile(r"[-_ .]?cmyk$", re.I)


# ------------------------------------------------------------------ perfiles

def buscar_perfil_por_defecto() -> Path:
    """FOGRA39 del paquete colorprofiles de TeX Live / MiKTeX."""
    try:
        salida = subprocess.run(
            ["kpsewhich", "FOGRA39L_coated.icc"],
            capture_output=True, text=True, check=False,
        ).stdout.strip()
    except FileNotFoundError:
        salida = ""
    if salida and Path(salida).is_file():
        return Path(salida)
    sys.exit(
        "No encontré FOGRA39L_coated.icc. Instalá el paquete «colorprofiles» "
        "en MiKTeX o pasá un perfil con --perfil (por ejemplo, el que te dé "
        "la imprenta)."
    )


def descripcion(perfil: ImageCms.ImageCmsProfile) -> str:
    return ImageCms.getProfileDescription(perfil).strip() or "CMYK"


def identificador(desc: str) -> str:
    """Condición de impresión registrada en color.org, si se reconoce."""
    m = re.search(r"FOGRA\s?\d+|GRACoL\w*|SWOP\w*|JapanColor\w*", desc, re.I)
    return m.group(0).replace(" ", "").upper() if m else desc


def perfil_origen(im: Image.Image) -> ImageCms.ImageCmsProfile:
    """El ICC incrustado en la imagen o, si no trae, sRGB."""
    icc = im.info.get("icc_profile")
    if icc:
        try:
            return ImageCms.ImageCmsProfile(BytesIO(icc))
        except (OSError, ImageCms.PyCMSError):
            pass
    return ImageCms.ImageCmsProfile(ImageCms.createProfile("sRGB"))


# ------------------------------------------------------------------ nombres

def es_version_cmyk(p: Path) -> bool:
    """¿Es un PNG con sufijo cmyk, como 01-cubierta-cmyk.png?"""
    return p.suffix.lower() == ".png" and bool(SUFIJO_CMYK.search(p.stem))


def planificar(imagenes: list[Path]) -> list[tuple[Path, str]]:
    """Decide qué archivo de img/ produce cada JPG de img-cmyk/.

    Devuelve pares (origen, nombre de destino). Un *cmyk.png toma el nombre
    del JPG original sin el sufijo y, si ese JPG también está en img/, lo
    reemplaza: el original no se convierte.
    """
    por_base: dict[str, Path] = {}
    for p in imagenes:
        if not es_version_cmyk(p):
            por_base.setdefault(p.stem.lower(), p)

    plan: dict[str, tuple[Path, str]] = {}
    for p in imagenes:
        if es_version_cmyk(p):
            base = SUFIJO_CMYK.sub("", p.stem)
            original = por_base.get(base.lower())
            # Se respeta el nombre exacto del original (mayúsculas y
            # extensión .jpg o .jpeg), para que el .tex lo encuentre igual.
            nombre = original.name if original else base + ".jpg"
            if original and original.suffix.lower() == ".png":
                nombre = original.stem + ".jpg"
            plan[base.lower()] = (p, nombre)

    for p in imagenes:
        if es_version_cmyk(p):
            continue
        clave = p.stem.lower()
        if clave in plan:
            print(f"  · {p.name}: se usa {plan[clave][0].name} en su lugar")
            continue
        nombre = p.name if p.suffix.lower() in (".jpg", ".jpeg") else p.stem + ".jpg"
        plan[clave] = (p, nombre)

    return sorted(plan.values(), key=lambda par: par[1].lower())


# --------------------------------------------------------------- conversión

def convertir(origen: Path, destino: Path, perfil_cmyk, bytes_cmyk: bytes,
              intento, calidad: int) -> str:
    im = Image.open(origen)
    dpi = im.info.get("dpi", (300, 300))

    if im.mode == "CMYK":
        # Ya está en CMYK: solo se copia con el perfil de salida.
        cmyk = im
    else:
        if im.mode not in ("RGB", "L"):
            # RGBA, P, etc.: se aplana sobre blanco.
            fondo = Image.new("RGB", im.size, "white")
            im = im.convert("RGBA")
            fondo.paste(im, mask=im.getchannel("A"))
            im = fondo
        im = im.convert("RGB")
        transformacion = ImageCms.buildTransform(
            perfil_origen(im), perfil_cmyk, "RGB", "CMYK",
            renderingIntent=intento,
            flags=ImageCms.Flags.BLACKPOINTCOMPENSATION,
        )
        cmyk = ImageCms.applyTransform(im, transformacion)

    cmyk.save(destino, "JPEG", quality=calidad, subsampling=0,
              dpi=dpi, icc_profile=bytes_cmyk)

    # Cobertura máxima de tinta (TAC), para avisar si pasa de lo razonable.
    muestra = cmyk.resize((200, 200))
    pixeles = getattr(muestra, "get_flattened_data", muestra.getdata)()
    tac = max(sum(p) for p in pixeles) * 100 / 255
    return f"{cmyk.size[0]}×{cmyk.size[1]}, TAC máx. {tac:.0f} %"


# ------------------------------------------------------------ OutputIntent

def escapar_pdf(texto: str) -> str:
    return texto.replace("\\", "\\\\").replace("(", "\\(").replace(")", "\\)")


def escribir_output_intent(raiz: Path, perfil_ruta: Path, desc: str) -> None:
    shutil.copyfile(perfil_ruta, raiz / "perfil-salida.icc")
    ident = escapar_pdf(identificador(desc))
    info = escapar_pdf(desc)
    registrada = ident != info
    tex = rf"""% perfil-salida.tex — generado por cmyk.py. No editar a mano.
% Declara el perfil de salida (OutputIntent) del PDF de imprenta.
% Perfil: {desc}
\immediate\pdfobj stream attr{{/N 4}} file{{perfil-salida.icc}}
\pdfcatalog{{/OutputIntents [ <<
  /Type /OutputIntent
  /S /GTS_PDFX
  /OutputCondition ({info})
  /OutputConditionIdentifier ({ident})
  /RegistryName ({"http://www.color.org" if registrada else ""})
  /Info ({info})
  /DestOutputProfile \the\pdflastobj\space 0 R
>> ]}}
"""
    (raiz / "perfil-salida.tex").write_text(tex, encoding="utf-8")


# --------------------------------------------------------------------- main

def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--perfil", type=Path,
                    help="perfil ICC CMYK de salida (por defecto, FOGRA39)")
    ap.add_argument("--origen", type=Path, default=Path("img"))
    ap.add_argument("--destino", type=Path, default=Path("img-cmyk"))
    ap.add_argument("--intento", choices=["perceptual", "relativo"],
                    default="perceptual",
                    help="intento de conversión (perceptual por defecto)")
    ap.add_argument("--calidad", type=int, default=90,
                    help="calidad JPEG (90 por defecto; más sube mucho el peso)")
    ap.add_argument("--forzar", action="store_true",
                    help="reconvertir aunque la versión CMYK esté al día")
    args = ap.parse_args()

    raiz = Path.cwd()
    perfil_ruta = args.perfil or buscar_perfil_por_defecto()
    perfil_cmyk = ImageCms.getOpenProfile(str(perfil_ruta))
    if perfil_cmyk.profile.xcolor_space.strip() != "CMYK":
        sys.exit(f"{perfil_ruta} no es un perfil CMYK.")
    bytes_cmyk = perfil_ruta.read_bytes()
    desc = descripcion(perfil_cmyk)
    intento = (ImageCms.Intent.PERCEPTUAL if args.intento == "perceptual"
               else ImageCms.Intent.RELATIVE_COLORIMETRIC)

    if not args.origen.is_dir():
        sys.exit(f"No existe la carpeta {args.origen}.")
    args.destino.mkdir(exist_ok=True)

    # Si cambió el perfil, todo lo anterior queda viejo.
    marca = args.destino / ".perfil"
    if not marca.exists() or marca.read_text(encoding="utf-8") != desc:
        args.forzar = True

    print(f"Perfil de salida: {desc}  ({perfil_ruta})")
    imagenes = sorted(p for p in args.origen.iterdir()
                      if p.suffix.lower() in EXTENSIONES)
    plan = planificar(imagenes)
    convertidas = 0
    for origen, nombre in plan:
        destino = args.destino / nombre
        etiqueta = (f"{origen.name} → {nombre}" if origen.name != nombre
                    else nombre)
        if (not args.forzar and destino.exists()
                and destino.stat().st_mtime >= origen.stat().st_mtime):
            print(f"  = {etiqueta} (al día)")
            continue
        detalle = convertir(origen, destino, perfil_cmyk, bytes_cmyk,
                            intento, args.calidad)
        print(f"  → {etiqueta}: {detalle}")
        convertidas += 1

    marca.write_text(desc, encoding="utf-8")
    escribir_output_intent(raiz, perfil_ruta, desc)
    print(f"{convertidas} de {len(plan)} láminas convertidas.")
    print("Escritos perfil-salida.icc y perfil-salida.tex. "
          "Ahora compilá cafayate.tex y cubierta.tex "
          "(o corré Actualizar-Cafayate.bat).")


if __name__ == "__main__":
    main()
