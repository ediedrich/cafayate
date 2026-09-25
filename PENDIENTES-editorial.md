# Pendientes para cerrar la edición

*Yuyos de la Quebrada de Cafayate* está compuesto y corregido. Lo que falta son datos y trámites que no dependen del texto. Mientras falte algún dato, el PDF lo muestra en un recuadro amarillo y la compilación avisa cuántos quedan.

Todos los datos se cargan en **un solo archivo, `datos-editorial.tex`**, escribiendo el valor entre las llaves. No hace falta tocar `cafayate.tex` ni `cubierta.tex`.

## Datos que completa Editorial Juana Manuela

| Dato en `datos-editorial.tex` | Dónde aparece | Quién lo da | Ejemplo |
|---|---|---|---|
| `\datoSello` | Créditos (p. iv) y contratapa | Editorial | `Editorial Juana Manuela, Salta` |
| `\datoISBN` | Créditos (p. iv) | Editorial (trámite en la Agencia Argentina de ISBN, Cámara Argentina del Libro) | `978-987-XXXX-XX-X` |
| `codigo-barras-isbn.pdf` (archivo, o `.png`) | Contratapa, recuadro de 50 × 30 mm | Editorial, al obtener el ISBN | — |
| `\datoFechaImpresion` | Colofón (p. 45) | Imprenta | `noviembre de 2026` |
| `\datoImprenta` | Colofón | Editorial | `Imprenta X, Salta` |
| `\datoPapel` | Colofón | Imprenta | `obra de 90 g/m²` |
| `\datoTapas` | Colofón | Imprenta | `cartulina ilustración de 300 g/m², laminado mate` |
| `\datoTirada` | Colofón | Editorial | `500` |
| `\datoEspesorHoja` | Ancho del lomo | Imprenta, según el papel elegido | `0.11` (mm por hoja, con punto) |

Hoy el lomo se calcula con 0,11 mm por hoja, provisorio. Con 60 páginas da unos 3,3 mm: no alcanza para imprimir título en el lomo (hacen falta 6 mm).

## Lo que decide la autora

- **Licencia.** La p. iv propone CC BY-NC-SA 4.0. Cuando María Eugenia Orellana la confirme por escrito, cambiar `\licenciaconfirmadafalse` por `\licenciaconfirmadatrue` en `datos-editorial.tex`. Si prefiere otra licencia, hay que cambiar el texto de la p. iv. Conviene que la lea sabiendo que la glosa «con fines educativos y comunitarios» es más estrecha que la licencia, que permite cualquier uso no comercial.
- **Contrato de edición con la editorial.** La licencia NC no autoriza a terceros a vender el libro. Si la editorial lo comercializa, necesita una autorización de la autora aparte, normalmente un contrato de edición, que diga también quién hace el depósito legal de la Ley 11.723 y a nombre de quién va el ISBN.
- **Bibliografía.** Faltan los nombres de pila de «Fernández y Huiaracha» (*Comidas típicas y plantas medicinales*, p. 43). Si la autora los tiene, se cargan en la bibliografía de `cafayate.tex`.

## Constancias que conviene guardar (no se imprimen)

- Consentimiento de los vecinos nombrados en los agradecimientos (Luis y Norma Nini, Marino Da Silva, Adriana Giobanelli, Felisa Reales, Ana Guralnik).
- Condiciones de uso de la herramienta con que se generaron las láminas, para la edición impresa.

## Antes de imprimir

- Prueba de color de las láminas en la imprenta, sobre el papel elegido.
- Revisar el colofón compuesto con los datos reales: con nombres largos, la primera línea del párrafo de impresión puede quedar muy abierta.
