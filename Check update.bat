@echo off
echo check update
echo .
del APB_Log.txt > nul
ping -n 4 127.0.0.1>nul
echo ..
del error.bat > nul
ping -n 1 127.0.0.1>nul
echo ...
del reportbug.py > nul
ping -n 3 127.0.0.1>nul
echo ....
del requirements.txt > nul
ping -n 2 127.0.0.1>nul
echo .....
del setup.bat > nul
ping -n 4 127.0.0.1>nul
echo .............
del Apill-fuse.bat > nul
del readme.txt > nul
git clone https://github.com/rraapt66/Apill-fuse.git
echo .
ping -n 2 127.0.0.1>nul
cls
echo ..
ping -n 3 127.0.0.1>nul
cls
echo ...
ping -n 4 127.0.0.1>nul
cls
echo ....
ping -n 1 127.0.0.1>nul
cls
echo .....
ping -n 2 127.0.0.1>nul
cls
echo .............
cls
echo exit.......
ping -n 4 127.0.0.1>nul
color d
exit
