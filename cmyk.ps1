\xef\xbb\xbf<#
.SYNOPSIS
  Convierte las láminas de img\ a CMYK con cmyk.py.

.DESCRIPTION
  Va en la misma carpeta que cmyk.py. Corre desde esa carpeta, esté donde
  esté la consola, y le pasa a cmyk.py todos los argumentos tal cual.

.EXAMPLE
  .\cmyk.ps1
.EXAMPLE
  .\cmyk.ps1 --forzar
.EXAMPLE
  .\cmyk.ps1 --perfil PSOuncoated_v3_FOGRA52.icc
#>

$env:PYTHONUTF8 = '1'
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

if (-not (Get-Command py -ErrorAction SilentlyContinue)) {
    Write-Host 'No encuentro el lanzador de Python (py). Instalá Python desde python.org.' -ForegroundColor Red
    exit 1
}

Push-Location $PSScriptRoot
try {
    & py -c 'import PIL.ImageCms' 2>$null
    if ($LASTEXITCODE -ne 0) {
        Write-Host 'Instalando Pillow...' -ForegroundColor Yellow
        & py -m pip install --user pillow
        if ($LASTEXITCODE -ne 0) {
            Write-Host 'No pude instalar Pillow.' -ForegroundColor Red
            exit 1
        }
    }

    & py cmyk.py @args
    exit $LASTEXITCODE
}
finally {
    Pop-Location
}
