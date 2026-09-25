<#
.SYNOPSIS
  Aplica al repositorio C:\CAFAYATE los archivos descargados de Claude,
  prepara las láminas, compila el libro y la cubierta, y commitea y sube.

.DESCRIPTION
  Sirve para cualquier ronda, sin tocar nada del script:

    1. Si entre las descargas hay un Actualizar-Cafayate.ps1 más nuevo,
       se reemplaza a sí mismo y vuelve a arrancar.
    2. Lee en EVALUA-informe.md qué commit se evaluó y arma con eso los
       mensajes de los commits.
    3. Commit «Evaluación del commit X»: evalua.json y EVALUA-informe.md,
       con las notas y el veredicto en el mensaje.
    4. Copia los archivos corregidos, corre cmyk.py, compila el interior
       y la cubierta.
    5. Commit con las correcciones. El mensaje sale de
       mensaje-correcciones.txt si vino con la descarga; si no, dice qué
       archivos cambiaron. Si solo cambiaron los PDF por recompilar, no
       commitea nada.
    6. Push a GitHub.

  Solo toma descargas posteriores al último commit, así que nunca aplica
  por error archivos de una ronda anterior que hayan quedado en Descargas.
  Si el navegador los renombró («cafayate (1).tex»), toma el más reciente
  y lo deja con su nombre definitivo.

  Nunca pisa un cambio tuyo: si un archivo cambió en el repositorio
  después del commit evaluado, o tiene cambios sin commitear distintos
  de lo descargado, se detiene y te lo dice (salvo con -Forzar, que
  guarda un respaldo).

.PARAMETER Origen
  Carpeta donde buscar los archivos descargados. Si no se indica, busca en
  la carpeta del repositorio y en Descargas.

.PARAMETER Repo
  Carpeta del repositorio. Por defecto, la carpeta de este script.

.PARAMETER SinPush
  Commitea pero no sube a GitHub.

.PARAMETER Forzar
  Reemplaza aunque haya conflictos, guardando antes un respaldo.

.EXAMPLE
  .\Actualizar-Cafayate.ps1
  .\Actualizar-Cafayate.ps1 -SinPush
  .\Actualizar-Cafayate.ps1 -Origen D:\bajadas
#>
[CmdletBinding()]
param(
  [string]$Origen = '',
  [string]$Repo   = '',
  [switch]$SinPush,
  [switch]$Forzar
)

$ErrorActionPreference = 'Stop'
[Console]::OutputEncoding = [Text.Encoding]::UTF8
$env:PYTHONUTF8 = '1'
$Utf8SinBom = New-Object System.Text.UTF8Encoding($false)

# Archivos que puede traer una ronda. Los que no vengan, se dejan como están.
$Evaluacion   = @('evalua.json', 'EVALUA-informe.md')
$Correcciones = @('cafayate.tex', 'cubierta.tex', 'datos-editorial.tex', 'contratapa-texto.tex',
                  'PENDIENTES-editorial.md', 'cmyk.py', 'cmyk.bat', 'cmyk.ps1',
                  'Actualizar-Cafayate.ps1', 'Actualizar-Cafayate.bat')
$Adjuntos     = @('codigo-barras-isbn.pdf', 'codigo-barras-isbn.png')
$Generados    = @('cafayate.pdf', 'cubierta.pdf', 'perfil-salida.tex', 'perfil-salida.icc')
$ArchivoMensaje = 'mensaje-correcciones.txt'
$EsteScript   = 'Actualizar-Cafayate.ps1'

# En Windows PowerShell 5.1, $PSScriptRoot llega vacío si se usa como valor
# por defecto de un parámetro: los valores por defecto se calculan acá.
if (-not $Repo) {
  if ($PSScriptRoot)                    { $Repo = $PSScriptRoot }
  elseif ($MyInvocation.MyCommand.Path) { $Repo = Split-Path -Parent $MyInvocation.MyCommand.Path }
  else                                  { $Repo = (Get-Location).Path }
}
$Repo = $Repo.TrimEnd('\')
if ($Origen) {
  $Carpetas = @($Origen)
} else {
  $bajadas = $null
  try   { $bajadas = (New-Object -ComObject Shell.Application).NameSpace('shell:Downloads').Self.Path } catch {}
  if (-not $bajadas) { $bajadas = Join-Path $env:USERPROFILE 'Downloads' }
  $Carpetas = @($Repo, $bajadas) | Where-Object { $_ -and (Test-Path $_) } | Select-Object -Unique
}

# ------------------------------------------------------------ utilidades
function Paso($texto)  { Write-Host ''; Write-Host "==> $texto" -ForegroundColor Cyan }
function Ok($texto)    { Write-Host "    $texto" -ForegroundColor Green }
function Aviso($texto) { Write-Host "    ATENCIÓN: $texto" -ForegroundColor Yellow }
function Falla($texto) { Write-Host ''; Write-Host "ERROR: $texto" -ForegroundColor Red; exit 1 }

# Con ErrorActionPreference=Stop, PowerShell 5.1 toma como error fatal
# cualquier línea que un programa escriba en stderr (el progreso de git
# push, por ejemplo). Las llamadas externas bajan la preferencia dentro de
# su función y miran el código de salida.
function Git {
  $ErrorActionPreference = 'Continue'
  $salida = & git.exe @args 2>&1
  if ($LASTEXITCODE -ne 0) { Falla ("git $($args -join ' ')`n" + ($salida | Out-String)) }
  return $salida
}
function GitCodigo {
  $ErrorActionPreference = 'Continue'
  & git.exe @args 2>&1 | Out-Null
  return $LASTEXITCODE
}
function Lineas {
  # Salida de git como lista de textos, sin líneas vacías. (Canalizar $null
  # a ForEach-Object produce un elemento vacío: de ahí salía el falso
  # «Láminas actualizadas».)
  return @($input | ForEach-Object { "$_".Trim() } | Where-Object { $_ })
}

$script:Desde = [DateTime]::MinValue
function Buscar-Descarga([string]$nombre) {
  # Archivo exacto o su copia renombrada («nombre (1).ext»), posterior al
  # último commit. Devuelve el más reciente.
  $base = [IO.Path]::GetFileNameWithoutExtension($nombre)
  $ext  = [IO.Path]::GetExtension($nombre)
  $patron = '^' + [regex]::Escape($base) + '( \(\d+\))?' + [regex]::Escape($ext) + '$'
  Get-ChildItem -LiteralPath $Carpetas -File -ErrorAction SilentlyContinue |
    Where-Object { $_.Name -match $patron -and $_.LastWriteTime -gt $script:Desde } |
    Sort-Object LastWriteTime -Descending |
    Select-Object -First 1
}

function Mismo-Archivo([string]$a, [string]$b) {
  # Texto: compara sin importar CRLF/LF ni BOM. Binario: byte a byte.
  if (-not (Test-Path -LiteralPath $a) -or -not (Test-Path -LiteralPath $b)) { return $false }
  $ext = [IO.Path]::GetExtension($a).ToLower()
  if ($ext -in @('.pdf', '.png', '.jpg', '.icc')) {
    return ((Get-FileHash -LiteralPath $a).Hash -eq (Get-FileHash -LiteralPath $b).Hash)
  }
  $ta = ([IO.File]::ReadAllText($a) -replace "`r`n", "`n").TrimStart([char]0xFEFF)
  $tb = ([IO.File]::ReadAllText($b) -replace "`r`n", "`n").TrimStart([char]0xFEFF)
  return ($ta -eq $tb)
}

function Poner([IO.FileInfo]$fuente, [string]$nombre) {
  # Deja $fuente en el repositorio con su nombre definitivo. Una copia
  # renombrada dentro del repositorio se mueve, para no dejar duplicados.
  $destino = Join-Path $Repo $nombre
  if ($fuente.FullName -eq [IO.Path]::GetFullPath($destino)) { return }
  if ($fuente.DirectoryName.TrimEnd('\') -eq $Repo) {
    Move-Item -LiteralPath $fuente.FullName $destino -Force
  } else {
    Copy-Item -LiteralPath $fuente.FullName $destino -Force
  }
}

function Commitear([string]$mensaje, [string[]]$rutas) {
  # Mensaje por archivo, en UTF-8, para que no se rompan los acentos. Solo
  # se commitean las rutas indicadas.
  $tmp = [IO.Path]::GetTempFileName()
  [IO.File]::WriteAllText($tmp, $mensaje, $Utf8SinBom)
  try { Git commit -F $tmp -- @rutas | Out-Null } finally { Remove-Item $tmp -Force }
  $hash = (Git rev-parse --short HEAD | Out-String).Trim()
  Ok "Commit $hash"
}

function Compilar([string]$archivo, [int]$pasadas) {
  $ErrorActionPreference = 'Continue'
  $nombre = [IO.Path]::GetFileNameWithoutExtension($archivo)
  for ($i = 1; $i -le $pasadas; $i++) {
    Write-Host "    pdflatex $archivo ($i/$pasadas)..."
    & pdflatex -interaction=nonstopmode -halt-on-error $archivo | Out-Null
    if ($LASTEXITCODE -ne 0) {
      $errores = Select-String -Path "$nombre.log" -Pattern '^!' -Context 0,3 -ErrorAction SilentlyContinue |
                 Select-Object -First 3 | Out-String
      Falla "$archivo no compila. Revisá $nombre.log`n$errores"
    }
  }
  $log = [IO.File]::ReadAllText((Join-Path $Repo "$nombre.log"), [Text.Encoding]::GetEncoding(28591))
  if ($log -match 'Falta perfil-salida\.tex') { Falla "$archivo se compiló sin perfil de salida: falta perfil-salida.tex." }
  $m = [regex]::Match($log, 'Output written on .*?\((\d+) pages?')
  if (-not $m.Success) { Falla "No encontré la cantidad de páginas en $nombre.log" }
  $f = [regex]::Match($log, 'Faltan (\d+) datos')
  $faltan = 0; if ($f.Success) { $faltan = [int]$f.Groups[1].Value }
  return @{ Paginas = [int]$m.Groups[1].Value; Faltan = $faltan }
}

function Correr-Cmyk {
  $ErrorActionPreference = 'Continue'
  & py -c 'import PIL.ImageCms' 2>&1 | Out-Null
  if ($LASTEXITCODE -ne 0) {
    Write-Host '    Instalando Pillow...'
    & py -m pip install --user pillow 2>&1 | Out-Null
    if ($LASTEXITCODE -ne 0) { Falla 'No pude instalar Pillow (py -m pip install --user pillow).' }
  }
  & py cmyk.py 2>&1 | ForEach-Object { Write-Host "    $_" }
  if ($LASTEXITCODE -ne 0) { Falla 'cmyk.py terminó con errores.' }
  foreach ($f in @('perfil-salida.tex', 'perfil-salida.icc')) {
    if (-not (Test-Path $f)) { Falla "cmyk.py no generó $f." }
  }
}

function Leer-Informe([string]$ruta) {
  # Saca del informe el commit evaluado, las notas y el veredicto.
  $t = [IO.File]::ReadAllText($ruta, [Text.Encoding]::UTF8)
  $r = @{}
  $m = [regex]::Match($t, '\*\*Commit evaluado:\*\*\s*`([0-9a-f]{7,40})`')
  if ($m.Success) { $r.Commit = $m.Groups[1].Value }
  $m = [regex]::Match($t, '(?s)Nota analítica\s*\n+\*\*([\d.,]+)\s*/\s*100')
  if ($m.Success) { $r.Analitica = $m.Groups[1].Value }
  $m = [regex]::Match($t, '(?s)Nota holística\s*\n+\*\*([\d.,]+)\s*/\s*100')
  if ($m.Success) { $r.Holistica = $m.Groups[1].Value }
  $m = [regex]::Match($t, '(?s)##\s*\d+\.\s*Veredicto\s*\n+\*\*(.+?)\*\*')
  if ($m.Success) { $r.Veredicto = $m.Groups[1].Value.Trim() }
  $r.Excluyentes = -not ($t -match 'No se da ninguna condición excluyente')
  return $r
}

# ------------------------------------------------------ 1. comprobaciones
Paso 'Comprobaciones'
if (-not (Get-Command git -ErrorAction SilentlyContinue))      { Falla 'No encuentro git en el PATH.' }
if (-not (Get-Command pdflatex -ErrorAction SilentlyContinue)) { Falla 'No encuentro pdflatex en el PATH.' }
if (-not (Get-Command py -ErrorAction SilentlyContinue))       { Falla 'No encuentro el lanzador de Python (py). Instalalo desde python.org.' }
if (-not (Test-Path (Join-Path $Repo '.git')))                 { Falla "$Repo no es un repositorio git." }
if ($Origen -and -not (Test-Path $Origen))                     { Falla "No existe la carpeta de origen $Origen." }
Set-Location $Repo
Ok "Repositorio: $Repo"
Ok "Busco en:    $($Carpetas -join '  y  ')"

$rama = (Git rev-parse --abbrev-ref HEAD | Out-String).Trim()
if ($rama -ne 'main') { Falla "Estás en la rama '$rama'. Cambiá a main antes de seguir." }

# ------------------------------------------------- 2. traer lo de GitHub
Paso 'Actualizando desde GitHub'
Git pull --ff-only | Out-Null
$segundos = [long]((Git log -1 --format=%ct | Out-String).Trim())
$script:Desde = [DateTimeOffset]::FromUnixTimeSeconds($segundos).LocalDateTime
Ok "HEAD: $((Git log -1 --format='%h %s' | Out-String).Trim())"
Ok "Tomo solo descargas posteriores a $($script:Desde.ToString('dd/MM/yyyy HH:mm'))."

# ------------------------------------------ 3. ¿hay un script más nuevo?
$nuevo = Buscar-Descarga $EsteScript
$actual = $PSCommandPath
if (-not $actual) { $actual = $MyInvocation.MyCommand.Path }
if ($nuevo -and -not (Mismo-Archivo $nuevo.FullName $actual)) {
  Paso 'Hay una versión nueva de este script: la instalo y vuelvo a arrancar'
  $destino = Join-Path $Repo $EsteScript
  Copy-Item -LiteralPath $nuevo.FullName $destino -Force
  $argumentos = @('-NoProfile', '-ExecutionPolicy', 'Bypass', '-File', $destino, '-Repo', $Repo)
  if ($Origen)  { $argumentos += @('-Origen', $Origen) }
  if ($SinPush) { $argumentos += '-SinPush' }
  if ($Forzar)  { $argumentos += '-Forzar' }
  $ErrorActionPreference = 'Continue'
  & powershell.exe @argumentos
  exit $LASTEXITCODE
}

# ----------------------------------------------- 4. ubicar las descargas
Paso 'Buscando los archivos descargados'
$descargas = [ordered]@{}
foreach ($n in ($Evaluacion + $Correcciones + $Adjuntos + @($ArchivoMensaje))) {
  $d = Buscar-Descarga $n
  if ($d) { $descargas[$n] = $d; Ok ("{0,-26} <- {1}" -f $n, $d.Name) }
}
if ($descargas.Count -eq 0) { Aviso 'No hay descargas nuevas: solo recompilo y commiteo si cambió algo.' }

# Commit evaluado: del informe descargado o, si no vino, del que está en el repo.
$rutaInforme = Join-Path $Repo 'EVALUA-informe.md'
if ($descargas.Contains('EVALUA-informe.md')) { $rutaInforme = $descargas['EVALUA-informe.md'].FullName }
$informe = @{}
if (Test-Path -LiteralPath $rutaInforme) { $informe = Leer-Informe $rutaInforme }
$base = $informe.Commit
if ($base) {
  if ((GitCodigo cat-file -e "$base^{commit}") -ne 0)             { Falla "El informe evalúa el commit $base, que no está en el repositorio." }
  if ((GitCodigo merge-base --is-ancestor $base HEAD) -ne 0)       { Falla "El commit evaluado ($base) no es un antecesor de HEAD." }
  Ok "Commit evaluado: $base"
} else {
  Aviso 'No encontré el commit evaluado en EVALUA-informe.md; comparo contra HEAD.'
  $base = (Git rev-parse --short HEAD | Out-String).Trim()
}

# ------------------------------------------ 5. revisar posibles conflictos
Paso 'Revisando que no se pise nada tuyo'
$sinCommitear = @(Git status --porcelain --untracked-files=no | Lineas |
                  ForEach-Object { $_.Substring(2).Trim().Trim('"') })
$conflictos = @()
$respaldo = Join-Path $Repo ('respaldo-' + (Get-Date -Format 'yyyyMMdd-HHmmss'))
foreach ($n in @($descargas.Keys)) {
  if ($n -eq $ArchivoMensaje) { continue }
  $local = Join-Path $Repo $n
  if (Mismo-Archivo $local $descargas[$n].FullName) { continue }
  $motivo = $null
  if ($n -in $sinCommitear) {
    $motivo = 'tiene cambios sin commitear'
  } elseif ((GitCodigo cat-file -e "${base}:$n") -eq 0 -and (GitCodigo diff --quiet $base HEAD -- $n) -ne 0) {
    $motivo = "cambió en el repositorio después de $base"
  }
  if (-not $motivo) { continue }
  if ($Forzar) {
    New-Item -ItemType Directory -Force $respaldo | Out-Null
    Copy-Item -LiteralPath $local $respaldo -Force
    Aviso "$n $motivo; tu versión quedó en $respaldo."
  } else {
    $conflictos += "$n ($motivo)"
  }
}
if ($conflictos) {
  Falla ("Estos archivos tienen cambios tuyos que lo descargado pisaría:`n  " + ($conflictos -join "`n  ") +
         "`nSi querés conservarlos, commitealos y pedí que se integren." +
         "`nSi querés reemplazarlos (guarda un respaldo), corré con -Forzar.")
}
foreach ($n in $Correcciones) {
  if ($n -in $sinCommitear -and -not $descargas.Contains($n)) { Aviso "$n tiene cambios tuyos sin commitear: van en el commit de correcciones." }
}
Ok 'Nada que se pise.'

# ----------------------------------------- 6. commit de la evaluación
Paso "Commit 1: evaluación de $base"
foreach ($n in $Evaluacion) { if ($descargas.Contains($n)) { Poner $descargas[$n] $n } }
if (Test-Path 'evalua.json') {
  try { Get-Content 'evalua.json' -Raw -Encoding UTF8 | ConvertFrom-Json | Out-Null }
  catch { Falla 'evalua.json no es un JSON válido.' }
}
$evalExistentes = @($Evaluacion | Where-Object { Test-Path $_ })
if ($evalExistentes) { Git add -- @evalExistentes | Out-Null }
if ($evalExistentes -and (GitCodigo diff --cached --quiet -- @evalExistentes) -ne 0) {
  $informe = Leer-Informe (Join-Path $Repo 'EVALUA-informe.md')
  $linea = @()
  if ($informe.Analitica) { $linea += "Analítica $($informe.Analitica)" }
  if ($informe.Holistica) { $linea += "holística $($informe.Holistica)" }
  if ($informe.Excluyentes) { $linea += 'con condiciones excluyentes' } else { $linea += 'sin condiciones excluyentes' }
  $mensaje = "Evaluación del commit $base`n`n" + ($linea -join '; ') + '.'
  if ($informe.Veredicto) { $mensaje += "`nVeredicto: $($informe.Veredicto)" }
  Commitear $mensaje $evalExistentes
} else {
  Ok 'La evaluación ya estaba commiteada.'
}

# ----------------------------------------- 7. poner las correcciones
Paso 'Copiando las correcciones'
foreach ($n in ($Correcciones + $Adjuntos)) {
  if ($n -eq $EsteScript) { continue }   # ya se resolvió en el paso 3
  if ($descargas.Contains($n) -and -not (Mismo-Archivo (Join-Path $Repo $n) $descargas[$n].FullName)) {
    Poner $descargas[$n] $n
    Ok "$n"
  }
}

# ------------------------------------------- 8. láminas para imprenta
Paso 'Preparando las láminas (cmyk.py)'
Correr-Cmyk

# ------------------------------------------------------- 9. compilar
Paso 'Compilando el interior'
$interior = Compilar 'cafayate.tex' 3
$paginas = $interior.Paginas
Ok "cafayate.pdf: $paginas páginas"

$pliego = 4
try { $p = (Get-Content 'evalua.json' -Raw -Encoding UTF8 | ConvertFrom-Json).pliego; if ($p) { $pliego = [int]$p } } catch {}
if ($paginas % $pliego -ne 0) { Aviso "$paginas páginas no es múltiplo del pliego ($pliego)." }

$desbordes = @(Select-String -Path 'cafayate.log' -Pattern '^Overfull \\hbox' -ErrorAction SilentlyContinue).Count
if ($desbordes) { Aviso "$desbordes renglones desbordados (Overfull \hbox). Revisá cafayate.log." }
else            { Ok 'Sin renglones desbordados.' }

Paso 'Compilando la cubierta'
$cub = [IO.File]::ReadAllText((Join-Path $Repo 'cubierta.tex'), [Text.Encoding]::UTF8)
$m = [regex]::Match($cub, '\\def\\paginas\{(\d+)\}')
if ($m.Success -and [int]$m.Groups[1].Value -ne $paginas) {
  $cub = $cub.Remove($m.Groups[1].Index, $m.Groups[1].Length).Insert($m.Groups[1].Index, "$paginas")
  [IO.File]::WriteAllText((Join-Path $Repo 'cubierta.tex'), $cub, $Utf8SinBom)
  Ok "cubierta.tex: \paginas pasa de $($m.Groups[1].Value) a $paginas (el lomo se recalcula)."
}
$cubierta = Compilar 'cubierta.tex' 2
Ok 'cubierta.pdf listo.'

$faltan = $interior.Faltan + $cubierta.Faltan
if ($faltan) { Aviso "faltan $faltan datos editoriales ($($interior.Faltan) en el interior, $($cubierta.Faltan) en la cubierta): salen en amarillo. Ver PENDIENTES-editorial.md." }
else         { Ok 'No falta ningún dato editorial.' }

# ------------------------------------ 10. commit de las correcciones
Paso 'Commit 2: correcciones'
$rutas = @($Correcciones + $Adjuntos + $Generados + @('img', 'img-cmyk') | Where-Object { Test-Path $_ })
Git add -- @rutas | Out-Null
$cambios = @(Git diff --cached --name-only -- @rutas | Lineas)
$fuentes = @($cambios | Where-Object { $_ -notin @('cafayate.pdf', 'cubierta.pdf') })

if ($fuentes.Count -eq 0) {
  # Solo cambiaron los PDF por recompilar (fecha interna): no vale un commit.
  Git reset -q -- cafayate.pdf cubierta.pdf | Out-Null
  Git checkout -- cafayate.pdf cubierta.pdf | Out-Null
  Ok 'No hay cambios para commitear: todo estaba al día.'
} else {
  $lista = ($fuentes | ForEach-Object { '  ' + $_ }) -join "`n"
  $mensajeDescargado = Join-Path $Repo $ArchivoMensaje
  if ($descargas.Contains($ArchivoMensaje)) { $mensajeDescargado = $descargas[$ArchivoMensaje].FullName }
  if (Test-Path -LiteralPath $mensajeDescargado) {
    $mensaje = [IO.File]::ReadAllText($mensajeDescargado, [Text.Encoding]::UTF8).TrimStart([char]0xFEFF).Trim()
    $mensaje = $mensaje.Replace('{base}', $base).Replace('{paginas}', "$paginas")
  } elseif (@($fuentes | Where-Object { $_ -notmatch '^(datos-editorial\.tex|codigo-barras-isbn\.(pdf|png)|cubierta\.tex)$' }).Count -eq 0 -and
            @($fuentes | Where-Object { $_ -match '^(datos-editorial\.tex|codigo-barras-isbn)' }).Count -gt 0) {
    $mensaje = "Datos editoriales`n`n$lista`n`nInterior de $paginas páginas; faltan $faltan datos."
  } elseif (@($fuentes | Where-Object { $_ -notmatch '^img(-cmyk)?/' }).Count -eq 0) {
    $mensaje = "Láminas actualizadas`n`n$lista`n`nInterior de $paginas páginas."
  } else {
    $mensaje = "Correcciones de la evaluación de $base`n`n$lista`n`nInterior de $paginas páginas."
  }
  Commitear $mensaje $rutas
  # El mensaje ya se usó: se borra para que no se aplique en la próxima ronda.
  $enRepo = Get-ChildItem -LiteralPath $Repo -File | Where-Object { $_.Name -match '^mensaje-correcciones( \(\d+\))?\.txt$' }
  $enRepo | Remove-Item -Force
}

# ------------------------------------------------------------ 11. subir
if ($SinPush) {
  Paso 'Sin push (-SinPush). Cuando quieras: git push origin main'
} else {
  Paso 'Subiendo a GitHub'
  Git push origin main | Out-Null
  Ok 'Listo en https://github.com/ediedrich/cafayate'
}

Write-Host ''
Write-Host 'Terminado.' -ForegroundColor Cyan
if ($faltan) {
  Write-Host '  Para cerrar la edición: completar datos-editorial.tex (ver PENDIENTES-editorial.md),'
  Write-Host '  volver a correr este script y pedir una nueva EVALÚA.'
} else {
  Write-Host '  Pedí una nueva EVALÚA sobre el último commit.'
}
