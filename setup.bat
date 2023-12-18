@echo off
start https://github.com/git-for-windows/git/releases/download/v2.43.0.windows.1/Git-2.43.0-64-bit.exe
echo Run Git first
ping -n 24 127.0.0.1>nul
cls 
cls
start Apill-fuse.bat
exit
