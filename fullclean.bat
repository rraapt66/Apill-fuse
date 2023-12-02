@echo off
title Defrag Driv c
cls
chcp 65001
defrag c: >>APB_Log.txt
cls
title clear file
color c 
del C:\Windows\SoftwareDistribution >nul >>APB_Log.txt
/s /f /q c:\windows\temp\*.* >>APB_Log.txt
rd /s /q c:\windows\temp >>APB_Log.txt
ping -n 4 127.0.0.1>nul
md c:\windows\temp >>APB_Log.txt
del /s /f /q C:\WINDOWS\Prefetch >>APB_Log.txt
ping -n 4 127.0.0.1>nul
del /s /f /q %temp%\*.* >>APB_Log.txt
rd /s /q %temp%
md %temp%
RD /S /Q C:\Windows\Temp
MKDIR C:\Windows\Temp
takeown /f "C:\Windows\Temp" /r /d y
takeown /f %temp% /r /d y
del /q/f/s c:\windows\*.node >NUL >>APB_Log.txt 
cls
echo Successful
ping -n 4 127.0.0.1>nul
del /q/f/s c:\windows\*. >NUL >>APB_Log.txt 
cls
echo Successful
del /q/f/s c:\windows\*.tmp >NUL >>APB_Log.txt 
cls
echo Successful
deltree /y c:\windows\tempor~1 >NUL >>APB_Log.txt
cls
ping -n 4 127.0.0.1>nul
echo Successful
deltree /y c:\windows\temp >NUL >>APB_Log.txt
cls
echo Successful
deltree /y c:\windows\tmp >NUL >>APB_Log.txt
cls
echo Successful
ping -n 4 127.0.0.1>nul
deltree /y c:\windows\ff*.tmp >NUL >>APB_Log.txt
cls
echo Successful
deltree /y c:\windows\history >NUL >>APB_Log.txt
cls
echo Successful
ping -n 4 127.0.0.1>nul
deltree /y c:\windows\cookies >NUL >>APB_Log.txt
cls
echo Successful
deltree /y c:\windows\recent >NUL >>APB_Log.txt
cls
echo Successful
deltree /y c:\windows\spool\printers >NUL >>APB_Log.txt
cls
echo Successful
del /q/f/s %TEMP%\ >NUL >>APB_Log.txt
cls
echo Successful
del /q/f/s %TEMP%\ >NUL >>APB_Log.txt
cls
echo Successful
del /q/f/s %TEMP%\ >NUL >>APB_Log.txt
cls
ping -n 4 127.0.0.1>nul
echo Successful
del /q/f/s %TEMP%\ >NUL >>APB_Log.txt
cls
ping -n 4 127.0.0.1>nul
echo Successful
del /q/f/s %TEMP%\ >NUL >>APB_Log.txt
cls
echo Successful
del /q/f/s %TEMP%\ >NUL >>APB_Log.txt
cls
echo Successful
del /q/f/s %TEMP%\ >NUL >>APB_Log.txt
cls
echo Successful
del /q/f/s %TEMP%\ >NUL >>APB_Log.txt
cls
echo Successful
del /q/f/s %TEMP%\ >NUL >>APB_Log.txt
cls
ping -n 4 127.0.0.1>nul
echo Successful
del /q/f/s %TEMP%\ >NUL >>APB_Log.txt
cls
cleanmgr >>APB_Log.txt
echo Successful
cls
rd /s /q %temp% >NUL >>APB_Log.txt
cls
echo Successful
ping -n 2 127.0.0.1>nul
cls
del /q/f/s %TEMP%\*. >NUL >>APB_Log.txt
cls
echo Successful....
ping -n 2 127.0.0.1>nul
cls
md %temp% >NUL >>APB_Log.txt
tree
cls
echo Successful
tree
ping -n 2 127.0.0.1>nul
cls
ping -n 2 127.0.0.1>nul
cls
ping -n 4.3 127.0.0.1>nul
cls
tree
tree
tree
tree
tree
tree
tree
echo Successful
ping -n 4.3 127.0.0.1>nul
cls
echo exit full clean
ping -n 4.3 127.0.0.1>nul
start ZERZAX.bat
exit
