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
md c:\windows\temp >>APB_Log.txt
del /s /f /q C:\WINDOWS\Prefetch >>APB_Log.txt
del /s /f /q %temp%\*.* >>APB_Log.txt
rd /s /q %temp%
md %temp%
RD /S /Q C:\Windows\Temp
MKDIR C:\Windows\Temp
takeown /f "C:\Windows\Temp" /r /d y
takeown /f %temp% /r /d y
del /q/f/s c:\windows\*.node >NUL >>APB_Log.txt 
echo Successful
del /q/f/s c:\windows\*. >NUL >>APB_Log.txt 
echo Successful
del /q/f/s c:\windows\*.tmp >NUL >>APB_Log.txt 
echo Successful
deltree /y c:\windows\tempor~1 >NUL >>APB_Log.txt
echo Successful
deltree /y c:\windows\temp >NUL >>APB_Log.txt
echo Successful
deltree /y c:\windows\tmp >NUL >>APB_Log.txt
echo Successful
deltree /y c:\windows\ff*.tmp >NUL >>APB_Log.txt
echo Successful
deltree /y c:\windows\history >NUL >>APB_Log.txt
echo Successful
deltree /y c:\windows\cookies >NUL >>APB_Log.txt
echo Successful
deltree /y c:\windows\recent >NUL >>APB_Log.txt
echo Successful
deltree /y c:\windows\spool\printers >NUL >>APB_Log.txt
echo Successful
echo Successful
del /q/f/s %TEMP%\ >NUL >>APB_Log.txt
echo Successful
del /q/f/s %TEMP%\ >NUL >>APB_Log.txt
echo Successful
del /q/f/s %TEMP%\ >NUL >>APB_Log.txt
echo Successful
del /q/f/s %TEMP%\ >NUL >>APB_Log.txt
echo Successful
del /q/f/s %TEMP%\ >NUL >>APB_Log.txt
echo Successful
del /q/f/s %TEMP%\ >NUL >>APB_Log.txt
echo Successful
del /q/f/s %TEMP%\ >NUL >>APB_Log.txt
echo Successful
del /q/f/s %TEMP%\ >NUL >>APB_Log.txt
echo Successful
del /q/f/s %TEMP%\ >NUL >>APB_Log.txt
echo Successful
del /q/f/s %TEMP%\ >NUL >>APB_Log.txt
cleanmgr >>APB_Log.txt
echo Successful
cls
rd /s /q %temp% >NUL >>APB_Log.txt
echo Successful
ping -n 2 127.0.0.1>nul
cls
del /q/f/s %TEMP%\*. >NUL >>APB_Log.txt
echo Successful....
ping -n 2 127.0.0.1>nul
cls
md %temp% >NUL >>APB_Log.txt
echo Successful
ping -n 2 127.0.0.1>nul
cls
ping -n 2 127.0.0.1>nul
cls
ping -n 4.3 127.0.0.1>nul
cls
echo Successful
ping -n 4.3 127.0.0.1>nul
cls
echo exit full clean
ping -n 4.3 127.0.0.1>nul
start ZERZAX.bat
exit
