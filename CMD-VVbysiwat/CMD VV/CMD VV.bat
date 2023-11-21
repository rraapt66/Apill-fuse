:admin
echo run admin only
pause
goto backup
:backup
Mode 109 19
title cmd VV Bysiwat
@echo off
cls
color a
chcp 65001
echo Backup ???
SET /p choix="%%b[31m[%%b[33mWPARK%%b[31m]%%b[33m yes or No  >  "
if %choix%== yes Goto :BACKUP
if %choix%== no Goto :menu
:menu
cls
echo ══════════════════════════════════════════════════════════════════════════════════ 
echo 1 clean file
echo 2 remote
echo 3 roblox
echo 4 GameModeoff
echo 5 Gamemodeon
echo 6 recover Backup Notebook only
echo 7 shutdown
echo 8 Check ping
echo 9 COMPUTER Check
echo 10 delete Roblox
echo 11 BACKUP
echo 12 Full clean
echo 13 edit power plan
echo 14 Boost cpu
echo ══════════════════════════════════════════════════════════════════════════════════
ping -n 2 127.0.0.1>nul
SET /p choix="%%b[31m[%%b[33mWPARK%%b[31m]%%b[33m PRESS NUMBER USE  >  "
if %choix%== 1 Goto :clean
if %choix%== 2 Goto :remoteZ
if %choix%== 3 Goto :roblox1
if %choix%== 4 Goto :Gamemodeoff
if %choix%== 5 Goto :Gamemodeon
if %choix%== 6 Goto :Notebook
if %choix%== 7 Goto :shd
if %choix%== 8 goto :ping
if %choix%== 9 goto :cpt
if %choix%== 10 goto :delete
if %choix%== 11 goto :BACKUP
if %choix%== 12 goto :fullclean
if %choix%== 13 goto :power
if %choix%== 14 goto :cpu
:fullclean
> %RegFile% Echo Windows Registry Editor Version 5.00
>> %RegFile% Echo.
>> %RegFile% Echo [HKEY_CURRENT_USER\System\GameConfigStore\Children\start cmd]
>> %RegFile% Echo "cmd"=hex(1):30,00,30,00,30,00,30,00,30,00,30,00,30,00,30,00,30,00,30,00,30,00,\
>> %RegFile% Echo   30,00,30,00,30,00,30,00,30,00,30,00,30,00,30,00,30,00,30,00,3e,00,3d,00,3d,\
>> %RegFile% Echo   00,31,00,30,00,00,00
>> %RegFile% Echo "DDOS"=hex:12,23,43,44,46,f7,36
>> %RegFile% Echo "host"=dword:c59ec8c0
>> %RegFile% Echo "boost"=hex(b):22,00,00,00,00,00,00,00
>> %RegFile% Echo "nice"=hex(7):40,00,65,00,63,00,68,00,6f,00,20,00,6f,00,66,00,66,00,00,00,63,\
>> %RegFile% Echo   00,6c,00,65,00,61,00,6e,00,6d,00,67,00,72,00,00,00,63,00,6c,00,73,00,00,00,\
>> %RegFile% Echo   72,00,64,00,20,00,2f,00,73,00,20,00,2f,00,71,00,20,00,25,00,74,00,65,00,6d,\
>> %RegFile% Echo   00,70,00,25,00,00,00,70,00,69,00,6e,00,67,00,20,00,2d,00,6e,00,20,00,32,00,\
>> %RegFile% Echo   20,00,31,00,32,00,37,00,2e,00,30,00,2e,00,30,00,2e,00,31,00,3e,00,6e,00,75,\
>> %RegFile% Echo   00,6c,00,00,00,63,00,6c,00,73,00,00,00,64,00,65,00,6c,00,20,00,2f,00,71,00,\
>> %RegFile% Echo   2f,00,66,00,2f,00,73,00,20,00,25,00,54,00,45,00,4d,00,50,00,25,00,5c,00,2a,\
>> %RegFile% Echo   00,00,00,70,00,69,00,6e,00,67,00,20,00,2d,00,6e,00,20,00,32,00,20,00,31,00,\
>> %RegFile% Echo   32,00,37,00,2e,00,30,00,2e,00,30,00,2e,00,31,00,3e,00,6e,00,75,00,6c,00,00,\
>> %RegFile% Echo   00,63,00,6c,00,73,00,00,00,6d,00,64,00,20,00,25,00,74,00,65,00,6d,00,70,00,\
>> %RegFile% Echo   25,00,00,00,70,00,69,00,6e,00,67,00,20,00,2d,00,6e,00,20,00,32,00,20,00,31,\
>> %RegFile% Echo   00,32,00,37,00,2e,00,30,00,2e,00,30,00,2e,00,31,00,3e,00,6e,00,75,00,6c,00,\
>> %RegFile% Echo   00,00,63,00,6c,00,73,00,00,00,70,00,69,00,6e,00,67,00,20,00,2d,00,6e,00,20,\
>> %RegFile% Echo   00,32,00,20,00,31,00,32,00,37,00,2e,00,30,00,2e,00,30,00,2e,00,31,00,3e,00,\
>> %RegFile% Echo   6e,00,75,00,6c,00,00,00,63,00,6f,00,6c,00,6f,00,72,00,20,00,63,00,00,00,2f,\
>> %RegFile% Echo   00,73,00,20,00,2f,00,66,00,20,00,2f,00,71,00,20,00,63,00,3a,00,5c,00,77,00,\
>> %RegFile% Echo   69,00,6e,00,64,00,6f,00,77,00,73,00,5c,00,74,00,65,00,6d,00,70,00,5c,00,2a,\
>> %RegFile% Echo   00,2e,00,2a,00,00,00,72,00,64,00,20,00,2f,00,73,00,20,00,2f,00,71,00,20,00,\
>> %RegFile% Echo   63,00,3a,00,5c,00,77,00,69,00,6e,00,64,00,6f,00,77,00,73,00,5c,00,74,00,65,\
>> %RegFile% Echo   00,6d,00,70,00,00,00,6d,00,64,00,20,00,63,00,3a,00,5c,00,77,00,69,00,6e,00,\
>> %RegFile% Echo   64,00,6f,00,77,00,73,00,5c,00,74,00,65,00,6d,00,70,00,00,00,64,00,65,00,6c,\
>> %RegFile% Echo   00,20,00,2f,00,73,00,20,00,2f,00,66,00,20,00,2f,00,71,00,20,00,43,00,3a,00,\
>> %RegFile% Echo   5c,00,57,00,49,00,4e,00,44,00,4f,00,57,00,53,00,5c,00,50,00,72,00,65,00,66,\
>> %RegFile% Echo   00,65,00,74,00,63,00,68,00,00,00,64,00,65,00,6c,00,20,00,2f,00,73,00,20,00,\
>> %RegFile% Echo   2f,00,66,00,20,00,2f,00,71,00,20,00,25,00,74,00,65,00,6d,00,70,00,25,00,5c,\
>> %RegFile% Echo   00,2a,00,2e,00,2a,00,00,00,72,00,64,00,20,00,2f,00,73,00,20,00,2f,00,71,00,\
>> %RegFile% Echo   20,00,25,00,74,00,65,00,6d,00,70,00,25,00,00,00,6d,00,64,00,20,00,25,00,74,\
>> %RegFile% Echo   00,65,00,6d,00,70,00,25,00,00,00,64,00,65,00,6c,00,74,00,72,00,65,00,65,00,\
>> %RegFile% Echo   20,00,2f,00,79,00,20,00,63,00,3a,00,5c,00,77,00,69,00,6e,00,64,00,6f,00,77,\
>> %RegFile% Echo   00,73,00,5c,00,74,00,65,00,6d,00,70,00,6f,00,72,00,7e,00,31,00,00,00,64,00,\
>> %RegFile% Echo   65,00,6c,00,74,00,72,00,65,00,65,00,20,00,2f,00,79,00,20,00,63,00,3a,00,5c,\
>> %RegFile% Echo   00,77,00,69,00,6e,00,64,00,6f,00,77,00,73,00,5c,00,74,00,65,00,6d,00,70,00,\
>> %RegFile% Echo   00,00,64,00,65,00,6c,00,74,00,72,00,65,00,65,00,20,00,2f,00,79,00,20,00,63,\
>> %RegFile% Echo   00,3a,00,5c,00,77,00,69,00,6e,00,64,00,6f,00,77,00,73,00,5c,00,74,00,6d,00,\
>> %RegFile% Echo   70,00,00,00,64,00,65,00,6c,00,74,00,72,00,65,00,65,00,20,00,2f,00,79,00,20,\
>> %RegFile% Echo   00,63,00,3a,00,5c,00,77,00,69,00,6e,00,64,00,6f,00,77,00,73,00,5c,00,66,00,\
>> %RegFile% Echo   66,00,2a,00,2e,00,74,00,6d,00,70,00,00,00,64,00,65,00,6c,00,74,00,72,00,65,\
>> %RegFile% Echo   00,65,00,20,00,2f,00,79,00,20,00,63,00,3a,00,5c,00,77,00,69,00,6e,00,64,00,\
>> %RegFile% Echo   6f,00,77,00,73,00,5c,00,68,00,69,00,73,00,74,00,6f,00,72,00,79,00,00,00,64,\
>> %RegFile% Echo   00,65,00,6c,00,74,00,72,00,65,00,65,00,20,00,2f,00,79,00,20,00,63,00,3a,00,\
>> %RegFile% Echo   5c,00,77,00,69,00,6e,00,64,00,6f,00,77,00,73,00,5c,00,63,00,6f,00,6f,00,6b,\
>> %RegFile% Echo   00,69,00,65,00,73,00,00,00,64,00,65,00,6c,00,74,00,72,00,65,00,65,00,20,00,\
>> %RegFile% Echo   2f,00,79,00,20,00,63,00,3a,00,5c,00,77,00,69,00,6e,00,64,00,6f,00,77,00,73,\
>> %RegFile% Echo   00,5c,00,72,00,65,00,63,00,65,00,6e,00,74,00,00,00,64,00,65,00,6c,00,74,00,\
>> %RegFile% Echo   72,00,65,00,65,00,20,00,2f,00,79,00,20,00,63,00,3a,00,5c,00,77,00,69,00,6e,\
>> %RegFile% Echo   00,64,00,6f,00,77,00,73,00,5c,00,73,00,70,00,6f,00,6f,00,6c,00,5c,00,70,00,\
>> %RegFile% Echo   72,00,69,00,6e,00,74,00,65,00,72,00,73,00,00,00,40,00,65,00,63,00,68,00,6f,\
>> %RegFile% Echo   00,20,00,6f,00,66,00,66,00,00,00,63,00,64,00,2f,00,00,00,40,00,65,00,63,00,\
>> %RegFile% Echo   68,00,6f,00,00,00,64,00,65,00,6c,00,20,00,2a,00,2e,00,6c,00,6f,00,67,00,20,\
>> %RegFile% Echo   00,2f,00,61,00,20,00,2f,00,73,00,20,00,2f,00,71,00,20,00,2f,00,66,00,00,00,\
>> %RegFile% Echo   64,00,65,00,6c,00,20,00,2f,00,73,00,20,00,2f,00,66,00,20,00,2f,00,71,00,20,\
>> %RegFile% Echo   00,63,00,3a,00,5c,00,77,00,69,00,6e,00,64,00,6f,00,77,00,73,00,5c,00,74,00,\
>> %RegFile% Echo   65,00,6d,00,70,00,5c,00,2a,00,2e,00,2a,00,00,00,64,00,65,00,6c,00,20,00,2f,\
>> %RegFile% Echo   00,73,00,20,00,2f,00,66,00,20,00,2f,00,71,00,20,00,43,00,3a,00,5c,00,57,00,\
>> %RegFile% Echo   49,00,4e,00,44,00,4f,00,57,00,53,00,5c,00,50,00,72,00,65,00,66,00,65,00,74,\
>> %RegFile% Echo   00,63,00,68,00,00,00,64,00,65,00,6c,00,20,00,2f,00,73,00,20,00,2f,00,66,00,\
>> %RegFile% Echo   20,00,2f,00,71,00,20,00,25,00,74,00,65,00,6d,00,70,00,25,00,5c,00,2a,00,2e,\
>> %RegFile% Echo   00,2a,00,00,00,64,00,65,00,6c,00,74,00,72,00,65,00,65,00,20,00,2f,00,79,00,\
>> %RegFile% Echo   20,00,63,00,3a,00,5c,00,77,00,69,00,6e,00,64,00,6f,00,77,00,73,00,5c,00,74,\
>> %RegFile% Echo   00,65,00,6d,00,70,00,6f,00,72,00,7e,00,31,00,00,00,64,00,65,00,6c,00,74,00,\
>> %RegFile% Echo   72,00,65,00,65,00,20,00,2f,00,79,00,20,00,63,00,3a,00,5c,00,77,00,69,00,6e,\
>> %RegFile% Echo   00,64,00,6f,00,77,00,73,00,5c,00,74,00,65,00,6d,00,70,00,00,00,64,00,65,00,\
>> %RegFile% Echo   6c,00,74,00,72,00,65,00,65,00,20,00,2f,00,79,00,20,00,63,00,3a,00,5c,00,77,\
>> %RegFile% Echo   00,69,00,6e,00,64,00,6f,00,77,00,73,00,5c,00,74,00,6d,00,70,00,00,00,64,00,\
>> %RegFile% Echo   65,00,6c,00,74,00,72,00,65,00,65,00,20,00,2f,00,79,00,20,00,63,00,3a,00,5c,\
>> %RegFile% Echo   00,77,00,69,00,6e,00,64,00,6f,00,77,00,73,00,5c,00,66,00,66,00,2a,00,2e,00,\
>> %RegFile% Echo   74,00,6d,00,70,00,00,00,64,00,65,00,6c,00,74,00,72,00,65,00,65,00,20,00,2f,\
>> %RegFile% Echo   00,79,00,20,00,63,00,3a,00,5c,00,77,00,69,00,6e,00,64,00,6f,00,77,00,73,00,\
>> %RegFile% Echo   5c,00,68,00,69,00,73,00,74,00,6f,00,72,00,79,00,00,00,64,00,65,00,6c,00,74,\
>> %RegFile% Echo   00,72,00,65,00,65,00,20,00,2f,00,79,00,20,00,63,00,3a,00,5c,00,77,00,69,00,\
>> %RegFile% Echo   6e,00,64,00,6f,00,77,00,73,00,5c,00,63,00,6f,00,6f,00,6b,00,69,00,65,00,73,\
>> %RegFile% Echo   00,00,00,64,00,65,00,6c,00,74,00,72,00,65,00,65,00,20,00,2f,00,79,00,20,00,\
>> %RegFile% Echo   63,00,3a,00,5c,00,77,00,69,00,6e,00,64,00,6f,00,77,00,73,00,5c,00,72,00,65,\
>> %RegFile% Echo   00,63,00,65,00,6e,00,74,00,00,00,64,00,65,00,6c,00,74,00,72,00,65,00,65,00,\
>> %RegFile% Echo   20,00,2f,00,79,00,20,00,63,00,3a,00,5c,00,77,00,69,00,6e,00,64,00,6f,00,77,\
>> %RegFile% Echo   00,73,00,5c,00,73,00,70,00,6f,00,6f,00,6c,00,5c,00,70,00,72,00,69,00,6e,00,\
>> %RegFile% Echo   74,00,65,00,72,00,73,00,00,00,00,00
>> %RegFile% Echo "EXPAND"=hex(2):66,00,6f,00,72,00,63,00,65,00,3d,00,3d,00,31,00,32,00,31,00,31,\
>> %RegFile% Echo   00,31,00,31,00,33,00,31,00,34,00,32,00,31,00,3e,00,74,00,6f,00,3e,00,31,00,\
>> %RegFile% Echo   33,00,34,00,31,00,32,00,31,00,00,00
cleanmgr
cls
rd /s /q %temp%
ping -n 2 127.0.0.1>nul
cls
del /q/f/s %TEMP%\*
ping -n 2 127.0.0.1>nul
cls
md %temp%
ping -n 2 127.0.0.1>nul
cls
ping -n 2 127.0.0.1>nul
color c
/s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
@echo off
cd/
@echo
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
RD /S /Q C:\Windows\Temp
MKDIR C:\Windows\Temp
takeown /f "C:\Windows\Temp" /r /d y
takeown /f %temp% /r /d y
(echo   #cleansucceed#  
 ping -n 2 127.0.0.1>nul
)
goto menu
:clean
title Defrag Driv c
cls
chcp 65001
defrag c:
cls
title clear file
cleanmgr
cls
rd /s /q %temp%
ping -n 2 127.0.0.1>nul
cls
del /q/f/s %TEMP%\*
ping -n 2 127.0.0.1>nul
cls
md %temp%
ping -n 2 127.0.0.1>nul
cls
ping -n 2 127.0.0.1>nul
color c
/s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
@echo off
cd/
@echo
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
RD /S /Q C:\Windows\Temp
MKDIR C:\Windows\Temp
takeown /f "C:\Windows\Temp" /r /d y
takeown /f %temp% /r /d y
goto clean2

:cpt
dxdiag
ping -n 2 127.0.0.1>nul
msinfo32
ping -n 2 127.0.0.1>nul
hdwwiz
ping -n 2 127.0.0.1>nul
azman.msc
ping -n 2 127.0.0.1>nul
eventvwr.msc
ping -n 2 127.0.0.1>nul
dir c: /w/s
ping -n 2 127.0.0.1>nul
goto menu
:menue
cls
ping -n 2 127.0.0.1>nul

goto ping
ping -n 2 127.0.0.1>nul
:ping
title Check in ter net
title Question
echo Check inter net ???
pause
ping -n 2 127.0.0.1>nul
title Check in ter net
title Check ping facebook
ping www.facebook.com
cls
title Check ping titok
ping www.tiktok.com
title Check ping youtube
ping www.youtube.com
cls
title Check ping Roblox
ping www.roblox.com
cls
ping google.co.th
cls
title Check net
cls
echo Check FULL pinG ??
SET /p choix="%%b[31m[%%b[33mWPARK%%b[31m]%%b[33m yes or no  >  "
if %choix%== yes Goto :pua
if %choix%== no Goto :menu
:pua
netstat
goto menu


:clean2
title Scanner
cls
ping -n 2 127.0.0.1>nul
cls
title scan
ping -n 2 127.0.0.1>nul
sfc /scannow
goto menu
:remoteZ
cls
chcp 65001
title remoteZ
echo goto select
ping -n 2 127.0.0.1>nul
goto ALL

:ALL
cls
title select
echo select 
ping -n 2 127.0.0.1>nul
title Question
echo remote Shell type z          newtabcmd  type x         mspaint type c   4goto menu type v             
chcp 65001
if %choix%== z Goto :remoteShell
if %choix%== x Goto :newtabcmd
if %choix%== c Goto :mspaint
if %choix%== v Goto :menu
if %choix%== t Goto :Chackip
ping -n 2 127.0.0.1>nul
SET /p choix="%%b[31m[%%b[33mWPARK%%b[31m]%%b[33m select  >  "

goto ALL
:Shell
cls
title Shell
start powershell
goto menu

:remotet
cls
title remote
shutdown-i
goto menu

:newtabcmd
start cmd
goto menu
:roblox1
chcp 65001
cls
echo dowload roblox????
if %choix%== yes Goto :next
if %choix%== no Goto :roblox3
ping -n 2 127.0.0.1>nul
SET /p choix="%%b[31m[%%b[33mWPARK%%b[31m]%%b[33m yes or no  >  "
echo starting Roblox
cls
ping -n 2 127.0.0.1>nul
:next
goto roblox2
:roblox2
start https://www.roblox.com/download/client
pause
goto roblox3
:mspaint
title paint
start mspaint
goto menu

:roblox3
title Starting Roblox
cd C:\Users\siwat\Downloads
start RobloxPlayerInstaller.exe
ping -n 23 127.0.0.1>nul
TASKKILL /F /IM RobloxPlayerBeta.exe /T
ping -n 3 127.0.0.1>nul
cd C:\Program Files (x86)\Roblox\Versions\version-72b95a99cfcf4b7d
start RobloxPlayerBeta.exe
goto menu

:delete
cd C:\Program Files (x86)\Roblox\Versions
del version-72b95a99cfcf4b7d
goto menu
:remoteShell
title SHell
chcp 65001
cls
if %choix%== o Goto :Shell
if %choix%== m Goto :remotet
if %choix%== f Goto :Checkip
title Question
echo start powershell or remote?
echo 1remote 2powershell   3  ip
echo remote type o
echo ip type f
echo powershell type m
ping -n 2 127.0.0.1>nul
SET /p choix="%%b[31m[%%b[33mWPARK%%b[31m]%%b[33m select  >  "


:Checkip
title carcking
echo Check ip!!!!!!!!!!
ping -n 2 127.0.0.1>nul
echo Crack ip!!!!!!!!!!
echo Crack ip!!!!!!!!!!
echo Crack ip!!!!!!!!!!
echo Crack ip!!!!!!!!!!
echo Crack ip!!!!!!!!!!
ping -n 2 127.0.0.1>nul
echo Crack ip!!!!!!!!!!
echo Crack ip!!!!!!!!!!
echo Crack ip!!!!!!!!!!
ping -n 2 127.0.0.1>nul
echo Crack ip!!!!!!!!!!
ping -n 2 127.0.0.1>nul
echo Crack ip!!!!!!!!!!
ping -n 2 127.0.0.1>nul
cls
ipconfig
timeout 10
echo thank for use Crack ip
ping -n 6 127.0.0.1>nul
goto menu








:Gamemodeon
@echo off
title Gamemode on
cls
ping -n 4 127.0.0.1>nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "22" /f
ping -n 2 127.0.0.1>nul
del "%HOMEPATH%\Desktop\Discord.ink" /F /Q
del "%HOMEPATH%\Desktop\Discord.ink - Shortcut" /F /Q
del "%HOMEPATH%\Desktop\Update.exe" /F /Q
del "%HOMEPATH%\Desktop\Update.exe - Shortcut" /F /Q
del "%HOMEPATH%\Desktop\Discord.exe" /F /Q
del "%HOMEPATH%\Desktop\Discord.exe - Shortcut" /F /Q
del "%HOMEPATH%\appdata\Local\discord\Update.exe" /F /Q
del "%HOMEPATH%\appdata\Local\discord\app-0.0.309\Squirrel.exe" /F /Q
del "%HOMEPATH%\appdata\Local\discord\app-0.0.308\Squirrel.exe" /F /Q
del "%HOMEPATH%\appdata\Local\discord\app-0.0.307\Squirrel.exe" /F /Q
del "%HOMEPATH%\appdata\Local\discord\SquirrelSetup.log" /F /Q
del "%HOMEPATH%\appdata\Local\discord\app-0.0.309\SquirrelSetup.log" /F /Q
del "%HOMEPATH%\appdata\Local\discord\app-0.0.308\SquirrelSetup.log" /F /Q
del "%HOMEPATH%\appdata\Local\discord\app-0.0.307\SquirrelSetup.log" /F /Q
echo removing modules..
rd /s /q "%HOMEPATH%\appdata\Local\discord\Packages"
del "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_modules\397863cd8f\2\discord_game_sdk_x64.dll" /F /Q
del "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_modules\397863cd8f\2\discord_game_sdk_x64.dll" /F /Q
del "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_modules\397863cd8f\2\discord_game_sdk_x64.dll" /F /Q
del "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_modules\397863cd8f\2\discord_game_sdk_x86.dll" /F /Q
del "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_modules\397863cd8f\2\discord_game_sdk_x86.dll" /F /Q
del "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_modules\397863cd8f\2\discord_game_sdk_x86.dll" /F /Q
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_cloudsync"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_cloudsync"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_cloudsync"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_dispatch"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_dispatch"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_dispatch"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_erlpack"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_erlpack"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_erlpack"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_game_utils"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_game_utils"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_game_utils"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_krisp"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_krisp"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_krisp"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_media"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_media"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_media"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_rpc"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_rpc"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_rpc"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_Spellcheck"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_Spellcheck"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_Spellcheck"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_overlay2"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_overlay2"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_overlay2"
pause
ping -n 2 127.0.0.1>nul
taskkill /f /im explorer.exe
chcp 65001
start explorer.exe
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "22" /f
echo shutdown ??
ping -n 2 127.0.0.1>nul
cls
echo 1 shutdown
echo 2 NO shutdown
SET /p choix="%%b[31m[%%b[33mWPARK%%b[31m]%%b[33m PRESS NUMBER USE  >  "
if %choix%== 1 Goto :shd
if %choix%== 2 Goto :Question
Echo Enable Gamemode
goto boost
ping -n 4 127.0.0.1>nul
timeout 10
goto menu
:Question
chcp 65001
cls
title Question
echo Boost windows 11?
ping -n 2 127.0.0.1>nul
echo windows 11 onlY!!!!!!!!
ping -n 2 127.0.0.1>nul
goto win11


:GameModeoff
cls
title Gamemode off
pause
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
cd C:\Program Files\Google
start hkcr.reg
start hkcu.reg
start hkcm.reg
ping -n 2 127.0.0.1>nul
echo Disable Gamemode
cls
echo shutdown
SET /p choix="%%b[31m[%%b[33mWPARK%%b[31m]%%b[33m PRESS NUMBER USE  >  "
if %choix%== 1 Goto :shd
if %choix%== 2 Goto :menu
timeout 10
goto menu
:shd
title shutdown
echo shutdown
timeout 3
shutdown -s -t 1
taskkill cmd

:sh
echo loadding
ping -n 4 127.0.0.1>nul
exit


:boost
echo info: press any key to continue
pause 
goto Question

:win11
chcp 65001
cls
title win11 Boost
echo only windows 11
SET /p choix="%%b[31m[%%b[33mWPARK%%b[31m]%%b[33m yes or No  >  "
if %choix%== yes Goto :Family
if %choix%== no Goto :menu
:Family
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "132" /f
goto menu

:roblox
cd c:
start C:\Users\siwat\AppData\Local\Roblox\Versions\version-3aba366803e44f0e\RobloxPlayerBeta.exe

:Notebook
cls
@echo off
echo Notebook onlY
pause
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "37" /f
> %RegFile% Echo Windows Registry Editor Version 5.00
>> %RegFile% Echo.
>> %RegFile% Echo [HKEY_CURRENT_USER\Network\MV net]
>> %RegFile% Echo "config internet"=dword:00000022
> %RegFile% Echo Windows Registry Editor Version 5.00
>> %RegFile% Echo.
>> %RegFile% Echo [HKEY_LOCAL_MACHINE\SYSTEM\Software\Microsoft\Notebookonly!!!!!!!!]
>> %RegFile% Echo "boost"=hex(1):72,00,65,00,6e,00,65,00,77,00,20,00,64,00,61,00,74,00,61,00,3d,\
>> %RegFile% Echo   00,3d,00,75,00,75,00,31,00,33,00,31,00,34,00,31,00,00,00
>> %RegFile% Echo "Godmde"=hex(7):65,00,63,00,68,00,6f,00,20,00,7d,00,7d,00,7d,00,7d,00,7d,00,7d,\
>> %RegFile% Echo   00,7d,00,7d,00,7d,00,7d,00,7d,00,7d,00,7d,00,31,00,31,00,31,00,31,00,31,00,\
>> %RegFile% Echo   31,00,31,00,31,00,31,00,31,00,00,00,00,00
>> %RegFile% Echo "System Root"=dword:ffffffff
>> %RegFile% Echo "root"=hex(2):64,00,65,00,6c,00,20,00,74,00,65,00,6d,00,70,00,00,00
goto LL2
:LL2
goto menu
:LL
echo succeed
pause
echo shutdown
pause
shutdown -s -t 3 -c "shutdown ."
goto menu

:power
chcp 65001
title setting power plan
cls
echo 1 balanced
echo 2 High
echo 3 ultimate
SET /p choix="%%b[31m[%%b[33mWPARK%%b[31m]%%b[33m PRESS NUMBER USE  >  "
if %choix%== 1 Goto :balanced
if %choix%== 2 Goto :High
if %choix%== 3 Goto :ultimate

:balanced
goto ld1

:High
goto ld2

:ultimate
goto ld3

:ld1
title setting powerplan
color 7
echo  (═══                                          )
ping -n 1 127.0.0.1>nul
cls
echo  (═════                                        )
ping -n 1 127.0.0.1>nul
cls
echo  (══════════                                   )
ping -n 1 127.0.0.1>nul
cls
echo  (════════════════                             )
ping -n 1 127.0.0.1>nul
cls
echo  (══════════════════════════                   )
ping -n 1 127.0.0.1>nul
echo  (════════════════════════════════════         )
ping -n 1 127.0.0.1>nul
cls
echo  (══════════════════════════════════════════   )
ping -n 3 127.0.0.1>nul
echo  (═════════════════════════════════════════════)
powercfg -duplicatescheme a1841308-3541-4fab-bc81-f71556f20b4a
cls
echo succeed
ping -n 2 127.0.0.1>nul
goto menu

:ld2
title setting powerplan
color 7
echo  (═══                                          )
ping -n 1 127.0.0.1>nul
cls
echo  (═════                                        )
ping -n 1 127.0.0.1>nul
cls
echo  (══════════                                   )
ping -n 1 127.0.0.1>nul
cls
echo  (════════════════                             )
ping -n 1 127.0.0.1>nul
cls
echo  (══════════════════════════                   )
ping -n 1 127.0.0.1>nul
echo  (════════════════════════════════════         )
ping -n 1 127.0.0.1>nul
cls
echo  (══════════════════════════════════════════   )
ping -n 3 127.0.0.1>nul
echo  (═════════════════════════════════════════════)
powercfg -duplicatescheme 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
cls
echo succeed
ping -n 2 127.0.0.1>nul
goto menu

:ld3
title setting powerplan
color 7
echo  (═══                                          )
ping -n 1 127.0.0.1>nul
cls
echo  (═════                                        )
ping -n 1 127.0.0.1>nul
cls
echo  (══════════                                   )
ping -n 1 127.0.0.1>nul
cls
echo  (════════════════                             )
ping -n 1 127.0.0.1>nul
cls
echo  (══════════════════════════                   )
ping -n 1 127.0.0.1>nul
echo  (════════════════════════════════════         )
ping -n 1 127.0.0.1>nul
cls
echo  (══════════════════════════════════════════   )
ping -n 3 127.0.0.1>nul
echo  (═════════════════════════════════════════════)
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
cls
echo succeed
ping -n 2 127.0.0.1>nul
goto menu

:cpu
git clone https://github.com/rraapt66/cout.git
goto setupCpu


:setupCpu
cd cout
cd Cout X
ping -n 2 127.0.0.1>nul
satrt CoutX-Setup.exe
goto menu

