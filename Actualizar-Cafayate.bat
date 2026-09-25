@echo off
rem Actualiza el repositorio CAFAYATE con las correcciones descargadas.
rem Va en C:\CAFAYATE junto a Actualizar-Cafayate.ps1.
rem Acepta los mismos parametros que el .ps1, por ejemplo:
rem   Actualizar-Cafayate.bat -SinPush
rem   Actualizar-Cafayate.bat -Origen D:\bajadas
cd /d "%~dp0"
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0Actualizar-Cafayate.ps1" %*
set ERR=%ERRORLEVEL%
echo.
if not "%ERR%"=="0" echo El script termino con errores (codigo %ERR%).
pause
exit /b %ERR%
