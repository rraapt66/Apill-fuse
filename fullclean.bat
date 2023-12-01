del /q/f/s c:\windows\*.file >>APB_Log.txt >NUL
echo Successful
del /q/f/s c:\windows\*. >>APB_Log.txt >NUL
echo Successful
del /q/f/s c:\windows\*.folder >>APB_Log.txt >NUL
echo Successful
del /q/f/s %TEMP%\* >>APB_Log.txt
del /s /f /q c:\windows\temp. >> APB_Log.txt
del /s /f /q C:\WINDOWS\Prefetch >> APB_Log.txt
del /s /f /q %temp%. >> APB_Log.txt
del /s /f /q %systemdrive%\*.tmp >>APB_Log.txt
del /s /f /q %systemdrive%\*._mp >>APB_Log.txt
del /s /f /q %systemdrive%\*.log >>APB_Log.txt
del /s /f /q %systemdrive%\*.gid >>APB_Log.txt
del /s /f /q %systemdrive%\*.chk >>APB_Log.txt
del /s /f /q %systemdrive%\*.old >>APB_Log.txt
del /s /f /q %systemdrive%\recycled\*.* >>APB_Log.txt
del /s /f /q %systemdrive%\$Recycle.Bin\*.* >>APB_Log.txt
del /s /f /q %windir%\*.bak >>APB_Log.txt
del /s /f /q %windir%\prefetch\*.* >>APB_Log.txt
del /s /f /q %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db >>APB_Log.txt
del /s /f /q %LocalAppData%\Microsoft\Windows\Explorer\*.db >>APB_Log.txt
del /f /q %SystemRoot%\Logs\CBS\CBS.log >>APB_Log.txt
del /f /q %SystemRoot%\Logs\DISM\DISM.log >>APB_Log.txt
deltree /y c:\windows\tempor~1 >>APB_Log.txt
deltree /y c:\windows\temp >>APB_Log.txt
deltree /y c:\windows\tmp >>APB_Log.txt
deltree /y c:\windows\ff*.tmp >>APB_Log.txt
deltree /y c:\windows\history >>APB_Log.txt
deltree /y c:\windows\cookies >>APB_Log.txt
deltree /y c:\windows\recent >>APB_Log.txt
deltree /y c:\windows\spool\printers >>APB_Log.txtcls
ping -n 4.3 127.0.0.1>nul
cls
echo Successful
ping -n 4.3 127.0.0.1>nul
cls
echo exit full clean
ping -n 4.3 127.0.0.1>nul
start ZERZAX.bat