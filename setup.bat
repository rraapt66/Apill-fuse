@echo off
start https://github.com/git-for-windows/git/releases/download/v2.43.0.windows.1/Git-2.43.0-64-bit.exe
echo Run Git first
timeout 3 > nul
@echo off
:loop
cls

TASKLIST /FI "IMAGENAME eq Git-2.43.0-64-bit.exe"

if "%errorlevel%" == "0" (

rem Check giy bash running

echo ok

goto :end

)

rem git bash no running

echo  Run Git first

timeout /t 1

goto :loop

:end
start Apill-fuse.bat
exit
