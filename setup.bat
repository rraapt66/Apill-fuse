@echo off
python -m pip install -r requirements.txt
pause
start https://github.com/git-for-windows/git/releases/download/v2.43.0.windows.1/Git-2.43.0-64-bit.exe
cls
echo Run Git first
ping -n 24 127.0.0.1>nul
start ZERZAX.bat
start Boostfps(dont run is Beta).exe
exit
