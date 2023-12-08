@echo off
start https://github.com/git-for-windows/git/releases/download/v2.43.0.windows.1/Git-2.43.0-64-bit.exe
start https://www.python.org/ftp/python/3.12.0/python-3.12.0-amd64.exe
echo Run Git first
ping -n 16 127.0.0.1>nul
cls 
echo run python first
ping -n 16 127.0.0.1>nul
python -m pip install -r requirements.txt
pause
cls
start ZERZAX.bat
start Boostfps(dont run is Beta).exe
exit
