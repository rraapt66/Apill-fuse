@echo off
echo %username%
cls
start https://github.com/git-for-windows/git/releases/download/v2.43.0.windows.1/Git-2.43.0-64-bit.exe
cd C:\Users\%username%\Downloads
timeout /t 13 /nobreak > NUL
start Git-2.43.0-64-bit.exe
echo Run Git first
timeout /t 30 /nobreak > NUL
start Apill-fuse.bat
exit
