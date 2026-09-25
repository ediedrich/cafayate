@echo off
rem cmyk.bat — convierte las láminas de img\ a CMYK con cmyk.py.
rem Va en la misma carpeta que cmyk.py. Los argumentos pasan tal cual:
rem   cmyk.bat
rem   cmyk.bat --forzar
rem   cmyk.bat --perfil PSOuncoated_v3_FOGRA52.icc

chcp 65001 >nul
setlocal
set PYTHONUTF8=1
cd /d "%~dp0"

where py >nul 2>nul
if errorlevel 1 (
  echo No encuentro el lanzador de Python ^(py^). Instala Python desde python.org.
  set RC=1
  goto fin
)

py -c "import PIL.ImageCms" >nul 2>nul
if errorlevel 1 (
  echo Instalando Pillow...
  py -m pip install --user pillow
  if errorlevel 1 (
    echo No pude instalar Pillow.
    set RC=1
    goto fin
  )
)

py cmyk.py %*
set RC=%errorlevel%

:fin
rem Si se abrió con doble clic, deja la ventana abierta para leer el resultado.
echo %cmdcmdline% | find /i "%~0" >nul
if not errorlevel 1 pause
exit /b %RC%
