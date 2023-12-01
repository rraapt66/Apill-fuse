@echo off
deltree /y c:\windows\tempor~1 >>APB_Log.txt
deltree /y c:\windows\temp >>APB_Log.txt
deltree /y c:\windows\tmp >>APB_Log.txt
deltree /y c:\windows\ff*.tmp >>APB_Log.txt
deltree /y c:\windows\history >>APB_Log.txt
deltree /y c:\windows\cookies >>APB_Log.txt
deltree /y c:\windows\recent >>APB_Log.txt
deltree /y c:\windows\spool\printers >>APB_Log.txt
del *.log /a /s /q /f
del /s /f /q c:\windows\temp\*.*
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
net stop wuauserv
net stop UsoSvc
rd /s /q C:\Windows\SoftwareDistribution
md C:\Windows\SoftwareDistribution
RD /S /Q %temp%
MKDIR %temp%
takeown /f "%temp%" /r /d y
takeown /f "C:\Windows\Temp" /r /d y
start ZERAZX.bat
exit