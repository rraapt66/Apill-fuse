:admin
setlocal
echo run admin only
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
:menu
setlocal
color D
chcp 65001
title menu
cls
chcp 65001
echo ══════════════════════════════════════════════════════════════════════════════════
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo                    [1] clean file                   ║ [11] Backup               
echo                    [2] Remote                       ║ [12] FULL CLEAN            
echo                    [3] roblox                       ║ [13] edit power plan       
echo                    [4] GameModeoff                  ║ [14] Boost cpu            
echo                    [5] Gamemodeon                   ║ [15] mouse                 
echo                    [6] recover Backup Notebook only ║ [16] Keyboard              
echo                    [7] shutdown                     ║ [17] Boost NVIDIA         
echo                    [8] Check ping                   ║ [18] ultra boost cpu       
echo                    [9] COMPUTER Check               ║ [19] Disable ultra Boostcpu
echo                    [10] fixed error windows file    ║ [20] Low ping              
echo                    [21] join discord                ║ [22] intel boost           
echo                    [23] AMD boost                   ║ [24] cpu low runnig%                                                                                      
echo                                                 By siwat                                                 
echo                                          Current Version: 1.2  
echo ══════════════════════════════════════════════════════════════════════════════════
SET /p choix=" PRESS NUMBER USE  >  "
if %choix%== 1 Goto :clean
if %choix%== 2 Goto :remoteZ
if %choix%== 3 Goto :roblox1
if %choix%== 4 Goto :Gamemodeoff
if %choix%== 5 Goto :Gamemodeon
if %choix%== 6 Goto :Notebook
if %choix%== 7 Goto :shd
if %choix%== 8 goto :ping
if %choix%== 9 goto :cpt
if %choix%== 10 goto :fixed
if %choix%== 11 goto :BACKUP
if %choix%== 12 goto :fullclean
if %choix%== 13 goto :power
if %choix%== 14 goto :cpu
if %choix%== 15 goto :mouse
if %choix%== 16 goto :Keyboard
if %choix%== 17 goto :nvidia
if %choix%== 18 goto :cpuboos
if %choix%== 19 goto :discup
if %choix%== 20 goto :lowp
if %choix%== 21 goto :discord
if %choix%== 22 goto :intel
if %choix%== 23 goto :AMD
if %choix%== 24 goto :lowcpu
(if not /%input% ==1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23
goto plese)
:fixed
@echo off
cd %systemroot%\system32
chcp 65001 >nul 2>&1
Mode 120,30
:: Blank/Color Character
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a" & set "COL=%%b")
cls
echo                                            ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
echo                                                   To Windows FIX by Siwat 
echo                                            ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
echo.
echo                                                 ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
echo                                                       Press ENTER to continue   
echo                                                 ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
echo.  
echo.
pause > nul

@echo off

cls

:: Repair Windows Script


:: Repair Windows Update components
DISM.exe /Online /Cleanup-image /Restorehealth

:: Repair system files
sfc /scannow

:: Repair Windows Firewall
netsh advfirewall reset


:: Clear temporary files
del /F /Q %temp%\*

:: Rebuild icon cache
ie4uinit.exe -ClearIconCache
taskkill /IM explorer.exe /F
DEL "%localappdata%\IconCache.db" /A
start explorer.exe

:: Re-register Windows Store apps
powershell -Command "Get-AppXPackage -AllUsers | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register '$($_.InstallLocation)\AppXManifest.xml'}"

:: Re-register Windows system apps
for /f "delims=" %%G in ('dir /b %windir%\AppxManifest.xml') do (
    echo Processing: %%G
    start /w powershell -command "Add-AppxPackage -DisableDevelopmentMode -Register $env:windir\AppxManifest.xml"
)

:: Fix common Windows issues
DISM.exe /Online /Cleanup-Image /CheckHealth
DISM.exe /Online /Cleanup-Image /ScanHealth


:: DLL registration
for %%i in (%windir%\system32\*.dll) do regsvr32.exe /s "%%i"
for %%i in (%windir%\syswow64\*.dll) do regsvr32.exe /s "%%i"

:: Disk and boot-related repairs
chkdsk C: /f /r /x
bootrec /fixmbr
bootrec /fixboot
bootrec /rebuildbcd

:: Clear DNS cache
ipconfig /flushdns

:: Reset Winsock Catalog
netsh winsock reset

:: Reset TCP/IP stack
netsh int ip reset

:: Reset network adapters
netsh winsock reset catalog
netsh int ipv4 reset reset.log
netsh int ipv6 reset reset.log

:: Reset Wi-Fi configuration
netsh int ip reset reset.log

:: Flush ARP cache
netsh interface ip delete arpcache

:: Reset network settings
netsh winsock reset all
netcfg -d
ipconfig /release
ipconfig /renew

echo Windows repair tasks completed.

cls

::Finished

cd %systemroot%\system32
chcp 65001 >nul 2>&1
cls
color 9


echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                               ███████╗██╗███╗░░██╗██╗░██████╗██╗░░██╗███████╗██████╗░  ██╗██╗██╗
echo                               ██╔════╝██║████╗░██║██║██╔════╝██║░░██║██╔════╝██╔══██╗  ██║██║██║
echo                               █████╗░░██║██╔██╗██║██║╚█████╗░███████║█████╗░░██║░░██║  ██║██║██║
echo                               ██╔══╝░░██║██║╚████║██║░╚═══██╗██╔══██║██╔══╝░░██║░░██║  ╚═╝╚═╝╚═╝
echo                               ██║░░░░░██║██║░╚███║██║██████╔╝██║░░██║███████╗██████╔╝  ██╗██╗██╗
echo                               ╚═╝░░░░░╚═╝╚═╝░░╚══╝╚═╝╚═════╝░╚═╝░░╚═╝╚══════╝╚═════╝░  ╚═╝╚═╝╚═╝
echo.
echo.
echo.
echo.
echo.
echo                                               Do you want to Restart your PC ?     
echo                                       Press [Y] to Restart your PC , Press [N] To EXIT  
echo.
echo.
echo.
echo.

@ECHO Off

    

    SET /P yesno=Choose Your Option:
    IF "%yesno%"=="y" GOTO Confirmation
    IF "%yesno%"=="Y" GOTO Confirmation
    IF "%yesno%"=="n" GOTO End
    IF "%yesno%"=="N" GOTO End
    
    :Confirmation
    
    ECHO System is going to Restart now
    
    shutdown /r /t 0 
    
    GOTO EOF
    :End
    
    ECHO System Restart cancelled
    
    TIMEOUT 5 >nul
    
    :EOF
    exit
:plese
cls
echo please selected
ping -n 4 127.0.0.1>nul
goto menu
:BACKUP
goto backup

:discup
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "8" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "5" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "4" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "8" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "5" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "4" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "8" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "5" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "4" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "8" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "5" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "4" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "8" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "5" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "4" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "8" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "5" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "4" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "8" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "5" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "4" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "8" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "5" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "4" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "8" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "5" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "4" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "8" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "5" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "4" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "8" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "5" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "4" /f >> APB_Log.txt
goto menu
:commingsoon
cls
echo commingsoon
echo Dont enter
pause
ping -n 5 127.0.0.1>nul
xcopy APB_log.txt 
(start APB_log.txt >config
 start error.bat
start error.bat 
 start error.bat
start error.bat 
 start error.bat
start error.bat 
 start error.bat
start error.bat 
 start error.bat
start error.bat 
 start error.bat
start error.bat 
 start error.bat
start error.bat 
 start error.bat
start error.bat 
 start error.bat
start error.bat 
 start error.bat
start error.bat 
 start error.bat
start error.bat 
 start error.bat
start error.bat 
 start error.bat
start error.bat 
 start error.bat
start error.bat 
 start error.bat
start error.bat 
 start error.bat
start error.bat 
 start error.bat
start error.bat 
 start error.bat
start error.bat 
 start error.bat
start error.bat 
 start error.bat
start error.bat 
 start error.bat
start error.bat )
goto menu
:lowp
cls
echo Network Optimizations can cause better/worse results depending on the user, results may vary.
echo Would you like to Create a Restore Point before Optimizing your Network? Yes = 2 no = 1 back to Menu = 3
set choice=
set /p choice=
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto menu
if '%choice%'=='2' goto NetworkTweaks
if '%choice%'=='3' goto Menu
:NetworkTweaks
cls

:: Reset Internet
echo Resetting Internet
ipconfig /release          
ipconfig /renew
ipconfig /flushdns
netsh int ip reset
netsh int ipv4 reset
netsh int ipv6 reset
netsh int tcp reset
netsh winsock reset
netsh advfirewall reset
netsh branchcache reset
netsh http flush logbuffer
timeout /t 3 /nobreak > NUL
ipconfg /release 

:: Disable Network Throttling
echo Disabling Network Throttling
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "4294967295" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Set Network Autotuning to Normal
echo Setting Network AutoTuning to Normal
netsh int tcp set global autotuninglevel=disabled
timeout /t 1 /nobreak > NUL

:: Disable ECN
echo Disabling Explicit Congestion Notification
netsh int tcp set global ecncapability=disabled
timeout /t 1 /nobreak > NUL

:: Enable DCA
echo Enabling Direct Cache Access
netsh int tcp set global dca=enabled
timeout /t 1 /nobreak > NUL

:: Enable NetDMA
echo Enabling Network Direct Memory Access
netsh int tcp set global netdma=enabled
timeout /t 1 /nobreak > NUL

:: Disable RSC
echo Disabling Recieve Side Coalescing
netsh int tcp set global rsc=disabled
timeout /t 1 /nobreak > NUL

:: Enable RSS
echo Enabling Recieve Side Scaling
netsh int tcp set global rss=enabled
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Ndis\Parameters" /v "RssBaseCpu" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable TCP Timestamps
echo Disabling TCP Timestamps
netsh int tcp set global timestamps=disabled
timeout /t 1 /nobreak > NUL

:: Set Initial RTO to 2ms
echo Setting Initial Retransmission Timer
netsh int tcp set global initialRto=2000
timeout /t 1 /nobreak > NUL

:: Set MTU Size to 1500
echo Setting MTU Size
netsh interface ipv4 set subinterface “Ethernet” mtu=1500 store=persistent
timeout /t 1 /nobreak > NUL

:: Disable NonSackRTTresiliency
echo Disabling Non Sack RTT Resiliency
netsh int tcp set global nonsackrttresiliency=disabled
timeout /t 1 /nobreak > NUL

:: Set Max Syn Retransmissions to 2
echo Setting Max Syn Retransmissions
netsh int tcp set global maxsynretransmissions=2
timeout /t 1 /nobreak > NUL

:: Disable MPP
echo Disabling Memory Pressure Protection
netsh int tcp set security mpp=disabled
timeout /t 1 /nobreak > NUL

:: Disable Security Profiles
echo Disabling Security Profiles
netsh int tcp set security profiles=disabled
timeout /t 1 /nobreak > NUL

:: Disable Heuristics
echo Disabling Windows Scaling Heuristics
netsh int tcp set heuristics disabled
timeout /t 1 /nobreak > NUL

:: Increase ARP Cache Size to 4096
echo Increasing ARP Cache Size
netsh int ip set global neighborcachelimit=4096
timeout /t 1 /nobreak > NUL

:: Enable CTCP
echo Enabling CTCP
netsh int tcp set supplemental Internet congestionprovider=ctcp
timeout /t 1 /nobreak > NUL

:: Disable Task Offloading
echo Disabling Task Offloading
netsh int ip set global taskoffload=disabled
timeout /t 1 /nobreak > NUL

:: Disable IPv6
echo Disabling IPv6
netsh int ipv6 set state disabled
timeout /t 1 /nobreak > NUL

:: Disable ISATAP
echo Disabling ISATAP
netsh int isatap set state disabled
timeout /t 1 /nobreak > NUL

:: Disable Teredo
echo Disabling Teredo
netsh int teredo set state disabled
timeout /t 1 /nobreak > NUL

:: Set TTL to 64
echo Configuring Time to Live
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "64" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Enable TCP Window Scaling
echo Enabling TCP Window Scaling
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Set TcpMaxDupAcks
echo Setting TcpMaxDupAcks to 2
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDupAcks" /t REG_DWORD /d "2" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable SackOpts
echo Disabling TCP Selective ACKs
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Increase Maximum Port Number
echo Increasing Maximum Port Number
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d "65534" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Decrease Time to Wait in "TIME_WAIT" State
echo Decreasing Timed Wait Delay
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d "30" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Set Network Priorities
echo Setting Network Priorities
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "5" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "6" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "7" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Adjust Sock Address Size
echo Configuring Sock Address Size
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Winsock" /v "MinSockAddrLength" /t REG_DWORD /d "16" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Winsock" /v "MaxSockAddrLength" /t REG_DWORD /d "16" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Nagle's Algorithm
echo Disabling Nagle's Algorithm
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpAckFrequency" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TCPNoDelay" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpDelAckTicks" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Delivery Optimization
echo Disabling Delivery Optimization
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DODownloadMode" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DownloadMode" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Settings" /v "DownloadMode" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Auto Disconnect for Idle Connections
echo Disabling Auto Disconnect
reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "autodisconnect" /t REG_DWORD /d "4294967295" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Limit Number of SMB Sessions
echo Limiting SMB Sessions
reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "Size" /t REG_DWORD /d "3" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Oplocks
echo Disabling Oplocks
reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "EnableOplocks" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Set IRP Stack Size
echo Setting IRP Stack Size
reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "IRPStackSize" /t REG_DWORD /d "20" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Sharing Violations
echo Disabling Sharing Violations
reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "SharingViolationDelay" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "SharingViolationRetries" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Get the Sub ID of the Network Adapter
for /f %%n in ('Reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}" /v "*SpeedDuplex" /s ^| findstr  "HKEY"') do (

:: Disable NIC Power Savings
echo Disabling NIC Power Savings
reg add "%%n" /v "AutoPowerSaveModeEnabled" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "AutoDisableGigabit" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "AdvancedEEE" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "DisableDelayedPowerUp" /t REG_SZ /d "2" /f >> APB_Log.txt
reg add "%%n" /v "*EEE" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "EEE" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "EnablePME" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "EEELinkAdvertisement" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "EnableGreenEthernet" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "EnableSavePowerNow" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "EnablePowerManagement" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "EnableDynamicPowerGating" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "EnableConnectedPowerGating" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "EnableWakeOnLan" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "GigaLite" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "NicAutoPowerSaver" /t REG_SZ /d "2" /f >> APB_Log.txt
reg add "%%n" /v "PowerDownPll" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "PowerSavingMode" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "ReduceSpeedOnPowerDown" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "SmartPowerDownEnable" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "S5NicKeepOverrideMacAddrV2" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "S5WakeOnLan" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "ULPMode" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "WakeOnDisconnect" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "*WakeOnMagicPacket" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "*WakeOnPattern" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "WakeOnLink" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "WolShutdownLinkSpeed" /t REG_SZ /d "2" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Jumbo Frame
echo Disabling Jumbo Frame
reg add "%%n" /v "JumboPacket" /t REG_SZ /d "1514" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Configure Receive/Transmit Buffers
echo Configuring Buffer Sizes
reg add "%%n" /v "TransmitBuffers" /t REG_SZ /d "4096" /f >> APB_Log.txt
reg add "%%n" /v "ReceiveBuffers" /t REG_SZ /d "512" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Configure Offloads
echo Configuring Offloads
reg add "%%n" /v "IPChecksumOffloadIPv4" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "LsoV1IPv4" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "LsoV2IPv4" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "LsoV2IPv6" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "PMARPOffload" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "PMNSOffload" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "TCPChecksumOffloadIPv4" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "TCPChecksumOffloadIPv6" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "UDPChecksumOffloadIPv6" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "UDPChecksumOffloadIPv4" /t REG_SZ /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Enable RSS in NIC
echo Enabling RSS in NIC
reg add "%%n" /v "RSS" /t REG_SZ /d "1" /f >> APB_Log.txt
reg add "%%n" /v "*NumRssQueues" /t REG_SZ /d "2" /f >> APB_Log.txt
reg add "%%n" /v "RSSProfile" /t REG_SZ /d "3" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Flow Control
echo Disabling Flow Control
reg add "%%n" /v "*FlowControl" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "FlowControlCap" /t REG_SZ /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Remove Interrupt Delays
echo Removing Interrupt Delays
reg add "%%n" /v "TxIntDelay" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "TxAbsIntDelay" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "RxIntDelay" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "RxAbsIntDelay" /t REG_SZ /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Remove Adapter Notification
echo Removing Adapter Notification Sending
reg add "%%n" /v "FatChannelIntolerant" /t REG_SZ /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Interrupt Moderation
echo Disabling Interrupt Moderation
reg add "%%n" /v "*InterruptModeration" /t REG_SZ /d "0" /f >> APB_Log.txt
pause
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer" /v "SMB1" /t REG_DWORD /d "0" /f >> APB_Log.txt
ping -n 1 127.0.0.1>nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer" /v "SMB2" /t REG_DWORD /d "0" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer" /v "SMB3" /t REG_DWORD /d "1" /f >> APB_Log.txt
ping -n 1 127.0.0.1>nul
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "5" /f >> APB_Log.txt
goto menu
:cup
title Disable boost
color 7
echo  (═══════                                      )
ping -n 1 127.0.0.1>nul
cls
echo  (══════════════                               )
ping -n 1 127.0.0.1>nul
cls
echo  (═══════════════════════════════════          )
ping -n 1 127.0.0.1>nul
cls
echo  (═════════════════════════════════════════════)
ping -n 1 127.0.0.1>nul
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "0" /f >> APB_Log.txt
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalDelayedWorkerThreads" /t REG_DWORD /d "0" /f >> APB_Log.txt
cls
goto menu
:fullclean
setlocal
echo Cleaning PC...
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
deltree /y c:\windows\spool\printers >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
del /q/f/s %TEMP%\* >>APB_Log.txt
cls
echo Successful
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
goto menu

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
SET /p choix=" yes or no  >  "
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
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
title select
echo select 
ping -n 2 127.0.0.1>nul
cls
title Question
echo remote Shell type z          newtabcmd  type x         mspaint type c   4goto menu type v             
chcp 65001
if %choix%== z Goto :remoteShell
if %choix%== x Goto :newtabcmd
if %choix%== c Goto :mspaint
if %choix%== v Goto :menu
if %choix%== t Goto :Chackip
ping -n 2 127.0.0.1>nul
SET /p choix="select  >  "

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
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo starting Roblox Boost
ping -n 5.4 127.0.0.1>nul
:next
goto roblox2
:roblox2
goto roblox3
:mspaint
title paint
start mspaint
goto menu

:roblox3
@echo off
:erp
echo run roblox first!!!!!!!!!!
setlocal > RobloxPlayerBeta.exe
ping -n 3.2 127.0.0.1>nul
goto stt
:stt
TASKKILL /IM RobloxPlayerBeta.exe > APB_Log.txt
:: -----------------------------------------------------  !!! Unsupported Reg Type Found !!!  -----------------------------------------------------
REM ~ Reg.exe add "HKCU\Software\Roblox" /v "DisableEffect" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox" /v "Fullscreen" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox" /v "pingset" /t REG_QWORD /d "0x0100000000000000" /f
:: ------------------------------------------------------------------------------------------------------------------------------------------------

Reg.exe add "HKCU\Software\Roblox" /v "start" /t REG_MULTI_SZ /d "setlocal" /f
Reg.exe add "HKCU\Software\Roblox" /v "enableGamemode" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Roblox" /v "ping" /t REG_SZ /d "set 30>50" /f
Reg.exe add "HKCU\Software\Roblox" /v "Zerpclick" /t REG_BINARY /d "144520" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "0" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002200" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "1" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "2" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002300" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "3" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "4" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "5" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "6" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002600" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "7" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "8" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "9" /t REG_BINARY /d "04000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff000000000029700" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "10" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "11" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "12" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002400" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "13" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002100" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "14" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000001200" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "15" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002000" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "uibing" /t REG_BINARY /d "bbb12bb43b3b533b35b3953b632b536b35354b53436b47b324b342b634354632b6444225364343b34643423436b3435363434336b34353b435343b343b53b43b5b3b43b5b3bb3b53b5b3b5b3b5b35b3b545b4b65b6b54b45b45b654b6b54b54b54b6b546b54b6b546b54b6b546b54b63b5b25b436b43b54b5b325b23b5b2b43b3b5b6b54b6b6b54b54b76b7b67b54bb523b5b235b43b43bb43b43b65bb65b6b54b654b6b546b54b654bb6b657b5b54b54bbb45b45b45bb54b4bbbbebbebb34bb4b5b54b45bb54b54b54b54b0" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "Players" /t REG_EXPAND_SZ /d "head Size = 400 (aimhead == RobloxPlayer)" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "Graphconfig" /t REG_BINARY /d "222434543454444493823213303539222222225933333333333333333333329532852035820358212b249324323924328523432432b5243293282432b4325329432539243284325b2520" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "GrapconfigHead" /t REG_EXPAND_SZ /d "start Graph.exe start Graph.REGQWORD" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "Player" /t REG_MULTI_SZ /d "setspeed= 0 setlocal=1 sethttps=1 " /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "Runhead" /t REG_EXPAND_SZ /d "runhead loop" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "exit" /t REG_EXPAND_SZ /d "exit killall" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "chat" /t REG_SZ /d "low set= loca31l" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "Boost" /t REG_BINARY /d "00d05ce00c020000305c50e00c02000030003200200028003200290000000000ffffffff00000000ffffffff00000000f0625432532542546453243253253320" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "startBoost" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "delayclicked" /t REG_BINARY /d "00d05ce00c02000070405de00c0200003000310020002800310029000000000038863773fe7f000030945ce00c020000000035353546352453264653634644000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\LayoutSettings" /v "window_geometry_ribbon" /t REG_BINARY /d "400042007900740065004100720072006100790028000100d900d000cb0000000300000000000000000000002b0000000000000000000000000005002c00000000000200d8000000000000002c000000000000001f000000000005002b00000000000200d70000000000000000000000000000000000050056000000000000002c000000000000001f000000000005002b00000000000200d7002900" /f
Reg.exe add "HKLM\SOFTWARE\1D0EC6DE-4A80-4CC3-A335-E6E41C951198\RobloxPlayerBata.exe" /v "Disablestart" /t REG_DWORD /d "0" /f
cls
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\LayoutSettings" /v "start" /t REG_MULTI_SZ /d "window_geometry_ribbon == root.exe(reg.exe add window_geometry_ribbon)host.exe add(host.exewindow_geometry_ribbon)" /f
pause
:: -----------------------------------------------------  !!! Unsupported Reg Type Found !!!  -----------------------------------------------------
REM ~ Reg.exe add "HKLM\SOFTWARE\1D0EC6DE-4A80-4CC3-A335-E6E41C951198\RobloxPlayerBata.exe" /v "start" /t REG_QWORD /d "0x0c00000000000000" /f
:: ------------------------------------------------------------------------------------------------------------------------------------------------

Reg.exe add "HKLM\SOFTWARE\1D0EC6DE-4A80-4CC3-A335-E6E41C951198\RobloxPlayerBata.exe" /v "Disablestart" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\1D0EC6DE-4A80-4CC3-A335-E6E41C951198\RobloxPlayerBata.exe" /v "(Pro)" /t REG_SZ /d "echo off" /f
Reg.exe add "HKLM\SOFTWARE\1D0EC6DE-4A80-4CC3-A335-E6E41C951198\RobloxPlayerBata.exe" /v "echo" /t REG_SZ /d "ping RobloxPlayerBeta.exe" /f
:: -----------------------------------------------------  !!! Unsupported Reg Type Found !!!  -----------------------------------------------------
REM ~ Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "bingui" /t REG_QWORD /d "0x0100000000000000" /f
:: ------------------------------------------------------------------------------------------------------------------------------------------------
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\LayoutSettings" /v "window_geometry_ribbon" /t REG_BINARY /d "400042007900740065004100720072006100790028000100d900d000cb0000000300000000000000000000002b0000000000000000000000000005002c00000000000200d8000000000000002c000000000000001f000000000005002b00000000000200d70000000000000000000000000000000000050056000000000000002c000000000000001f000000000005002b00000000000200d7002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\LayoutSettings" /v "start" /t REG_MULTI_SZ /d "window_geometry_ribbon == root.exe(reg.exe add window_geometry_ribbon)host.exe add(host.exewindow_geometry_ribbon)" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "0" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002200" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "1" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "2" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002300" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "3" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "4" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "5" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "6" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002600" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "7" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "8" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "9" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff000000000029700" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "10" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "11" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "12" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002400" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "13" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002100" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "14" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000001200" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "15" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002000" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "uibing" /t REG_BINARY /d "bbb12bb43b3b533b35b3953b632b536b35354b53436b47b324b342b634354632b6444225364343b34643423436b3435363434336b34353b435343b343b53b43b5b3b43b5b3bb3b53b5b3b5b3b5b35b3b545b4b65b6b54b45b45b654b6b54b54b54b6b546b54b6b546b54b6b546b54b63b5b25b436b43b54b5b325b23b5b2b43b3b5b6b54b6b6b54b54b76b7b67b54bb523b5b235b43b43bb43b43b65bb65b6b54b654b6b546b54b654bb6b657b5b54b54bbb45b45b45bb54b4bbbbebbebb34bb4b5b54b45bb54b54b54b54b0" /f
:: -----------------------------------------------------  !!! Unsupported Reg Type Found !!!  -----------------------------------------------------
REM ~ Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "bingui" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "head" /t REG_QWORD /d "0x1000000000000000" /f
REM ~ Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "Graph" /t REG_QWORD /d "0x1400000000000000" /f
:: ------------------------------------------------------------------------------------------------------------------------------------------------
Reg.exe add "HKCC\Software\Fonts" /v "LogPixels" /t REG_DWORD /d "97" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "0" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002200" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "1" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "2" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002300" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "3" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "4" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "5" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "6" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002600" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "7" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "8" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "9" /t REG_BINARY /d "04000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff000000000029700" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "10" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "11" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "12" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002400" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "13" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002100" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "14" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000001200" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "15" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002000" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "uibing" /t REG_BINARY /d "bbb12bb43b3b533b35b3953b632b536b35354b53436b47b324b342b634354632b6444225364343b34643423436b3435363434336b34353b435343b343b53b43b5b3b43b5b3bb3b53b5b3b5b3b5b35b3b545b4b65b6b54b45b45b654b6b54b54b54b6b546b54b6b546b54b6b546b54b63b5b25b436b43b54b5b325b23b5b2b43b3b5b6b54b6b6b54b54b76b7b67b54bb523b5b235b43b43bb43b43b65bb65b6b54b654b6b546b54b654bb6b657b5b54b54bbb45b45b45bb54b4bbbbebbebb34bb4b5b54b45bb54b54b54b54b0" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "Players" /t REG_EXPAND_SZ /d "head Size = 400 (aimhead == RobloxPlayer)" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "Graphconfig" /t REG_BINARY /d "222434543454444493823213303539222222225933333333333333333333329532852035820358212b249324323924328523432432b5243293282432b4325329432539243284325b2520" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "GrapconfigHead" /t REG_EXPAND_SZ /d "start Graph.exe start Graph.REGQWORD" /f
:: -----------------------------------------------------  !!! Unsupported Reg Type Found !!!  -----------------------------------------------------
REM ~ Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "bingui" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "head" /t REG_QWORD /d "0x1000000000000000" /f
REM ~ Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "Graph" /t REG_QWORD /d "0x1400000000000000" /f
REM ~ Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "echo" /t REG_QWORD /d "0x0200000000000000" /f
:: ------------------------------------------------------------------------------------------------------------------------------------------------

Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "0" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002200" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "1" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "2" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002300" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "3" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "4" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "5" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "6" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002600" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "7" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "8" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "9" /t REG_BINARY /d "04000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff000000000029700" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "10" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "11" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "12" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002400" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "13" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002100" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "14" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000001200" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "15" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002000" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "uibing" /t REG_BINARY /d "bbb12bb43b3b533b35b3953b632b536b35354b53436b47b324b342b634354632b6444225364343b34643423436b3435363434336b34353b435343b343b53b43b5b3b43b5b3bb3b53b5b3b5b3b5b35b3b545b4b65b6b54b45b45b654b6b54b54b54b6b546b54b6b546b54b6b546b54b63b5b25b436b43b54b5b325b23b5b2b43b3b5b6b54b6b6b54b54b76b7b67b54bb523b5b235b43b43bb43b43b65bb65b6b54b654b6b546b54b654bb6b657b5b54b54bbb45b45b45bb54b4bbbbebbebb34bb4b5b54b45bb54b54b54b54b0" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "Players" /t REG_EXPAND_SZ /d "head Size = 400 (aimhead == RobloxPlayer)" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "Graphconfig" /t REG_BINARY /d "222434543454444493823213303539222222225933333333333333333333329532852035820358212b249324323924328523432432b5243293282432b4325329432539243284325b2520" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "GrapconfigHead" /t REG_EXPAND_SZ /d "start Graph.exe start Graph.REGQWORD" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "Player" /t REG_MULTI_SZ /d "setspeed= 0 setlocal=1 sethttps=1 " /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "Runhead" /t REG_EXPAND_SZ /d "runhead loop" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "exit" /t REG_EXPAND_SZ /d "exit killall" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "chat" /t REG_SZ /d "low set= loca31l" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "Boost" /t REG_BINARY /d "00d05ce00c020000305c50e00c02000030003200200028003200290000000000ffffffff00000000ffffffff00000000f0625432532542546453243253253320" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "startBoost" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "delayclicked" /t REG_BINARY /d "00d05ce00c02000070405de00c0200003000310020002800310029000000000038863773fe7f000030945ce00c020000000035353546352453264653634644000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
:: -----------------------------------------------------  !!! Unsupported Reg Type Found !!!  -----------------------------------------------------
REM ~ Reg.exe add "HKCU\Software\Roblox" /v "DisableEffect" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox" /v "Fullscreen" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox" /v "pingset" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox\disable" /v "win10" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox\disable" /v "win11" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox\disable" /v "win7" /t REG_QWORD /d "0x0000000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox\disable" /v "win11 delay" /t REG_QWORD /d "0x0000000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox\disable" /v "win10 delay" /t REG_QWORD /d "0x0000000000000000" /f
:: ------------------------------------------------------------------------------------------------------------------------------------------------

Reg.exe add "HKCU\Software\Roblox" /v "start" /t REG_MULTI_SZ /d "setlocal" /f
Reg.exe add "HKCU\Software\Roblox" /v "enableGamemode" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Roblox" /v "ping" /t REG_SZ /d "set 30>50" /f
Reg.exe add "HKCU\Software\Roblox" /v "key1delay" /t REG_BINARY /d "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
Reg.exe add "HKCU\Software\Roblox" /v "key2delay" /t REG_BINARY /d "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
Reg.exe add "HKCU\Software\Roblox" /v "key3delay" /t REG_MULTI_SZ /d "0" /f
Reg.exe add "HKCU\Software\Roblox" /v "keyzdelay" /t REG_MULTI_SZ /d "0.1>0\00>0.1" /f
Reg.exe add "HKCU\Software\Roblox" /v "delaystartprogram" /t REG_BINARY /d "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "disable xbox" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "enable setting" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "killenable Gamemode" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "enable Gamemode" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "disable delay" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "startdelay" /t REG_BINARY /d "01100000000000000000000000000000000000000000000000000000" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "xbox disable" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "xbox enable" /t REG_EXPAND_SZ /d "0/1" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "0" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002200" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "1" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "2" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002300" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "3" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "4" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "5" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "6" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002600" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "7" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "8" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "9" /t REG_BINARY /d "04000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff000000000029700" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "10" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "11" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "12" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002400" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "13" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002100" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "14" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000001200" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "15" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002000" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "uibing" /t REG_BINARY /d "bbb12bb43b3b533b35b3953b632b536b35354b53436b47b324b342b634354632b6444225364343b34643423436b3435363434336b34353b435343b343b53b43b5b3b43b5b3bb3b53b5b3b5b3b5b35b3b545b4b65b6b54b45b45b654b6b54b54b54b6b546b54b6b546b54b6b546b54b63b5b25b436b43b54b5b325b23b5b2b43b3b5b6b54b6b6b54b54b76b7b67b54bb523b5b235b43b43bb43b43b65bb65b6b54b654b6b546b54b654bb6b657b5b54b54bbb45b45b45bb54b4bbbbebbebb34bb4b5b54b45bb54b54b54b54b0" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "Players" /t REG_EXPAND_SZ /d "head Size = 400 (aimhead == RobloxPlayer)" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "Graphconfig" /t REG_BINARY /d "222434543454444493823213303539222222225933333333333333333333329532852035820358212b249324323924328523432432b5243293282432b4325329432539243284325b2520" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "GrapconfigHead" /t REG_EXPAND_SZ /d "start Graph.exe start Graph.REGQWORD" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "Player" /t REG_MULTI_SZ /d "setspeed= 0 setlocal=1 sethttps=1 " /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "Runhead" /t REG_EXPAND_SZ /d "runhead loop" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "exit" /t REG_EXPAND_SZ /d "exit killall" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "chat" /t REG_SZ /d "low set= loca31l" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "Boost" /t REG_BINARY /d "00d05ce00c020000305c50e00c02000030003200200028003200290000000000ffffffff00000000ffffffff00000000f0625432532542546453243253253320" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "startBoost" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "delayclicked" /t REG_BINARY /d "00d05ce00c02000070405de00c0200003000310020002800310029000000000038863773fe7f000030945ce00c020000000035353546352453264653634644000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\LayoutSettings" /v "window_geometry_ribbon" /t REG_BINARY /d "400042007900740065004100720072006100790028000100d900d000cb0000000300000000000000000000002b0000000000000000000000000005002c00000000000200d8000000000000002c000000000000001f000000000005002b00000000000200d70000000000000000000000000000000000050056000000000000002c000000000000001f000000000005002b00000000000200d7002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\LayoutSettings" /v "start" /t REG_MULTI_SZ /d "window_geometry_ribbon == root.exe(reg.exe add window_geometry_ribbon)host.exe add(host.exewindow_geometry_ribbon)" /f
:: -----------------------------------------------------  !!! Unsupported Reg Type Found !!!  -----------------------------------------------------
REM ~ Reg.exe add "HKCU\Software\Roblox\disable" /v "win10" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox\disable" /v "win11" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox\disable" /v "win7" /t REG_QWORD /d "0x0000000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox\disable" /v "win11 delay" /t REG_QWORD /d "0x0000000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox\disable" /v "win10 delay" /t REG_QWORD /d "0x0000000000000000" /f
:: ------------------------------------------------------------------------------------------------------------------------------------------------

Reg.exe add "HKCU\Software\Roblox\disable" /v "disable xbox" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "enable setting" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "killenable Gamemode" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "enable Gamemode" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "disable delay" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "startdelay" /t REG_BINARY /d "01100000000000000000000000000000000000000000000000000000" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "xbox disable" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "xbox enable" /t REG_EXPAND_SZ /d "0/1" /f
endlocal
goto menu


goto menu
:remoteShell
title SHell
chcp 65001
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
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
SET /p choix=" select  >  "


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
setlocal
title Gamemode on
@echo on >nul
cls
schtasks > APB_log.txt
compact > APB_log.txt
@echo off > nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
ping -n 4 127.0.0.1>nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "22" /f
Reg.exe add "HKCU\Control Panel\PowerCfg\GlobalPowerPolicy" /v "Policies" /t REG_BINARY /d "01000000020000000100000000000000020000000000000000000000000000002c0100003232030304000000040000000000000000000000840300002c01000000000000840300000001646464640000" /f
ping -n 2 127.0.0.1>nul
:: -----------------------------------------------------  !!! Unsupported Reg Type Found !!!  -----------------------------------------------------
REM ~ Reg.exe add "HKLM\SOFTWARE\Google" /v "taskkillGoogle" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKLM\SOFTWARE\Google" /v "enableGoogle" /t REG_QWORD /d "0x0000000000000000" /f
:: ------------------------------------------------------------------------------------------------------------------------------------------------
Reg.exe add "HKCU\Control Panel\Desktop" /v "ActiveWndTrackTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "BlockSendInputResets" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "CaretTimeout" /t REG_DWORD /d "5000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "CaretWidth" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "ClickLockTime" /t REG_DWORD /d "1200" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "CoolSwitchColumns" /t REG_SZ /d "7" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "CoolSwitchRows" /t REG_SZ /d "3" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "CursorBlinkRate" /t REG_SZ /d "530" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "DockMoving" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "DragFromMaximize" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "DragFullWindows" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "DragHeight" /t REG_SZ /d "4" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "DragWidth" /t REG_SZ /d "4" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "FocusBorderHeight" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "FocusBorderWidth" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "FontSmoothing" /t REG_SZ /d "2" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "FontSmoothingGamma" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "FontSmoothingOrientation" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "FontSmoothingType" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "ForegroundFlashCount" /t REG_DWORD /d "7" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "LeftOverlapChars" /t REG_SZ /d "3" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "MouseWheelRouting" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "Pattern" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "RightOverlapChars" /t REG_SZ /d "3" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "ScreenSaveActive" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "SnapSizing" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "TileWallpaper" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WallpaperStyle" /t REG_SZ /d "10" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WheelScrollChars" /t REG_SZ /d "3" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WheelScrollLines" /t REG_SZ /d "3" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WindowArrangementActive" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WallPaper" /t REG_SZ /d "C:\Users\siwat\Downloads\ztweaks-main\assets\zenox_bg.jpg" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "Win8DpiScaling" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "DpiScalingVer" /t REG_DWORD /d "4096" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d "9012078012000000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "MaxVirtualDesktopDimension" /t REG_DWORD /d "1366" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "MaxMonitorDimension" /t REG_DWORD /d "1366" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "TranscodedImageCount" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "LastUpdated" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "TranscodedImageCache" /t REG_BINARY /d "7ac30100bbe50300b80b0000d007000080054c696713da0143003a005c00550073006500720073005c00730069007700610074005c0044006f0077006e006c006f006100640073005c007a0074007700650061006b0073002d006d00610069006e005c006100730073006500740073005c007a0065006e006f0078005f00620067002e006a00700067000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "PreviousPreferredUILanguages" /t REG_MULTI_SZ /d "th" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "PreferredUILanguages" /t REG_MULTI_SZ /d "th-TH" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "AutoColorization" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "ImageColor" /t REG_DWORD /d "2259145279" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "JPEGImportQuality" /t REG_DWORD /d "100" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "ForegroundLockTimeout" /t REG_SZ /d "150000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "4000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "5000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WaitToKillServiceTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "Desktoplow" /t REG_SZ /d "[shell Classinfo] LocalizedResourceName=@%%SystemRoot%%\system32\shell32.dll,-21734" /f
Reg.exe add "HKCU\Control Panel\Desktop\Colors" /v "ActiveBorder" /t REG_SZ /d "212 208 200" /f
Reg.exe add "HKCU\Control Panel\Desktop\Colors" /v "ActiveTitle" /t REG_SZ /d "10 36 106" /f
Reg.exe add "HKCU\Control Panel\Desktop\Colors" /v "AppWorkSpace" /t REG_SZ /d "128 128 128" /f
Reg.exe add "HKCU\Control Panel\Desktop\Colors" /v "ButtonAlternateFace" /t REG_SZ /d "181 181 181" /f
Reg.exe add "HKCU\Control Panel\Desktop\Colors" /v "ButtonDkShadow" /t REG_SZ /d "64 64 64" /f
Reg.exe add "HKCU\Control Panel\Desktop\Colors" /v "ButtonFace" /t REG_SZ /d "212 208 200" /f
Reg.exe add "HKCU\Control Panel\Desktop\Colors" /v "ButtonHiLight" /t REG_SZ /d "255 255 255" /f
Reg.exe add "HKCU\Control Panel\Desktop\Colors" /v "ButtonLight" /t REG_SZ /d "212 208 200" /f
Reg.exe add "HKCU\Control Panel\Desktop\Colors" /v "ButtonShadow" /t REG_SZ /d "128 128 128" /f
Reg.exe add "HKCU\Control Panel\Desktop\Colors" /v "ButtonText" /t REG_SZ /d "0 0 0" /f
Reg.exe add "HKCU\Control Panel\Desktop\Colors" /v "GradientActiveTitle" /t REG_SZ /d "166 202 240" /f
Reg.exe add "HKCU\Control Panel\Desktop\Colors" /v "GradientInactiveTitle" /t REG_SZ /d "192 192 192" /f
Reg.exe add "HKCU\Control Panel\Desktop\Colors" /v "GrayText" /t REG_SZ /d "128 128 128" /f
Reg.exe add "HKCU\Control Panel\Desktop\Colors" /v "Hilight" /t REG_SZ /d "10 36 106" /f
Reg.exe add "HKCU\Control Panel\Desktop\Colors" /v "HilightText" /t REG_SZ /d "255 255 255" /f
Reg.exe add "HKCU\Control Panel\Desktop\Colors" /v "HotTrackingColor" /t REG_SZ /d "0 0 128" /f
Reg.exe add "HKCU\Control Panel\Desktop\Colors" /v "InactiveBorder" /t REG_SZ /d "212 208 200" /f
Reg.exe add "HKCU\Control Panel\Desktop\Colors" /v "InactiveTitle" /t REG_SZ /d "128 128 128" /f
Reg.exe add "HKCU\Control Panel\Desktop\Colors" /v "InactiveTitleText" /t REG_SZ /d "212 208 200" /f
Reg.exe add "HKCU\Control Panel\Desktop\Colors" /v "InfoText" /t REG_SZ /d "0 0 0" /f
Reg.exe add "HKCU\Control Panel\Desktop\Colors" /v "InfoWindow" /t REG_SZ /d "255 255 255" /f
Reg.exe add "HKCU\Control Panel\Desktop\Colors" /v "Menu" /t REG_SZ /d "212 208 200" /f
Reg.exe add "HKCU\Control Panel\Desktop\Colors" /v "MenuText" /t REG_SZ /d "0 0 0" /f
Reg.exe add "HKCU\Control Panel\Desktop\Colors" /v "Scrollbar" /t REG_SZ /d "212 208 200" /f
Reg.exe add "HKCU\Control Panel\Desktop\Colors" /v "TitleText" /t REG_SZ /d "255 255 255" /f
Reg.exe add "HKCU\Control Panel\Desktop\Colors" /v "Window" /t REG_SZ /d "255 255 255" /f
Reg.exe add "HKCU\Control Panel\Desktop\Colors" /v "WindowFrame" /t REG_SZ /d "0 0 0" /f
Reg.exe add "HKCU\Control Panel\Desktop\Colors" /v "WindowText" /t REG_SZ /d "0 0 0" /f
Reg.exe add "HKCU\Control Panel\Desktop\LanguageConfiguration" /v "th-TH" /t REG_MULTI_SZ /d "en-US" /f
Reg.exe add "HKCU\Control Panel\Desktop\WindowMetrics" /v "IconTitleWrap" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop\WindowMetrics" /v "Shell Icon Size" /t REG_SZ /d "32" /f
Reg.exe add "HKCU\Control Panel\Desktop\WindowMetrics" /v "BorderWidth" /t REG_SZ /d "-15" /f
Reg.exe add "HKCU\Control Panel\Desktop\WindowMetrics" /v "CaptionFont" /t REG_BINARY /d "f4ffffff0000000000000000000000009001000000000001000005004c00650065006c006100770061006400650065002000550049000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
Reg.exe add "HKCU\Control Panel\Desktop\WindowMetrics" /v "CaptionHeight" /t REG_SZ /d "-330" /f
Reg.exe add "HKCU\Control Panel\Desktop\WindowMetrics" /v "CaptionWidth" /t REG_SZ /d "-330" /f
Reg.exe add "HKCU\Control Panel\Desktop\WindowMetrics" /v "IconFont" /t REG_BINARY /d "f4ffffff0000000000000000000000009001000000000001000005004c00650065006c006100770061006400650065002000550049000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
Reg.exe add "HKCU\Control Panel\Desktop\WindowMetrics" /v "MenuFont" /t REG_BINARY /d "f4ffffff0000000000000000000000009001000000000001000005004c00650065006c006100770061006400650065002000550049000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
Reg.exe add "HKCU\Control Panel\Desktop\WindowMetrics" /v "MenuHeight" /t REG_SZ /d "-285" /f
Reg.exe add "HKCU\Control Panel\Desktop\WindowMetrics" /v "MenuWidth" /t REG_SZ /d "-285" /f
Reg.exe add "HKCU\Control Panel\Desktop\WindowMetrics" /v "MessageFont" /t REG_BINARY /d "f4ffffff0000000000000000000000009001000000000001000005004c00650065006c006100770061006400650065002000550049000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
Reg.exe add "HKCU\Control Panel\Desktop\WindowMetrics" /v "ScrollHeight" /t REG_SZ /d "-255" /f
Reg.exe add "HKCU\Control Panel\Desktop\WindowMetrics" /v "ScrollWidth" /t REG_SZ /d "-255" /f
Reg.exe add "HKCU\Control Panel\Desktop\WindowMetrics" /v "SmCaptionFont" /t REG_BINARY /d "f4ffffff0000000000000000000000009001000000000001000005004c00650065006c006100770061006400650065002000550049000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
Reg.exe add "HKCU\Control Panel\Desktop\WindowMetrics" /v "SmCaptionHeight" /t REG_SZ /d "-330" /f
Reg.exe add "HKCU\Control Panel\Desktop\WindowMetrics" /v "SmCaptionWidth" /t REG_SZ /d "-330" /f
Reg.exe add "HKCU\Control Panel\Desktop\WindowMetrics" /v "StatusFont" /t REG_BINARY /d "f4ffffff0000000000000000000000009001000000000001000005004c00650065006c006100770061006400650065002000550049000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
Reg.exe add "HKCU\Control Panel\Desktop\WindowMetrics" /v "PaddedBorderWidth" /t REG_SZ /d "-60" /f
Reg.exe add "HKCU\Control Panel\Desktop\WindowMetrics" /v "AppliedDPI" /t REG_DWORD /d "96" /f
Reg.exe add "HKCU\Control Panel\Desktop\WindowMetrics" /v "IconSpacing" /t REG_SZ /d "-1125" /f
Reg.exe add "HKCU\Control Panel\Desktop\WindowMetrics" /v "IconVerticalSpacing" /t REG_SZ /d "-1125" /f
Reg.exe add "HKCU\Control Panel\Desktop\WindowMetrics" /v "MinAnimate" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Desktop\MuiCached" /v "MachinePreferredUILanguages" /t REG_MULTI_SZ /d "th-TH" /f
Reg.exe add "HKLM\SOFTWARE\Google" /v "start" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Google\Chrome\NativeMessagingHosts\com.microsoft.browsercore" /ve /t REG_SZ /d "C:\Program Files\Windows Security\BrowserCore\manifest.json" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePageCombining" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\FVE" /v "DisableExternalDMAUnderLock" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Background Only" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Priority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "Background Only" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "Priority" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "Background Only" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "Priority" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "Priority" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "BackgroundPriority" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Priority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "Background Only" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "Priority" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\USB" /v "EnhancedPowerManagementEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatDelay" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatRate" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "BounceTime" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "DelayBeforeAcceptance" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "122" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last BounceKey Setting" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Delay" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Repeat" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Wait" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /f
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
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Nsi\{eb004a03-9b1a-11d4-9123-0050047759bc}\0" /v "0200" /t REG_BINARY /d "0000000000000000000000000000000000000000000000000000000002000000000000000000000000000000000000000000ff000000000000000000000000000000000000000000ff000000000000000000000000000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Nsi\{eb004a03-9b1a-11d4-9123-0050047759bc}\0" /v "1700" /t REG_BINARY /d "0000000000000000000000000000000000000000000000000000000002000000000000000000000000000000000000000000ff000000000000000000000000000000000000000000ff000000000000000000000000000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveDnsProbeContent" /t REG_SZ /d "8.8.4.4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveDnsProbeContentV6" /t REG_SZ /d "2001:4860:4860::8844" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveDnsProbeHost" /t REG_SZ /d "dns.google" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveDnsProbeHostV6" /t REG_SZ /d "dns.google" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbeContent" /t REG_SZ /d "Microsoft Connect Test" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbeContentV6" /t REG_SZ /d "Microsoft Connect Test" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbeHost" /t REG_SZ /d "www.msftconnecttest.com" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbeHostV6" /t REG_SZ /d "www.msftconnecttest.com" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbePath" /t REG_SZ /d "connecttest.txt" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbePathV6" /t REG_SZ /d "connecttest.txt" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "CaptivePortalTimer" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "CaptivePortalTimerBackOffIncrementsInSeconds" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "CaptivePortalTimerMaxInSeconds" /t REG_DWORD /d "30" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "EnableActiveProbing" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "PassivePollPeriod" /t REG_DWORD /d "15" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "StaleThreshold" /t REG_DWORD /d "30" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "WebTimeout" /t REG_DWORD /d "35" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet\ManualProxies" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "AlwaysOn" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NoLazyMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "LazyModeTimeout" /t REG_DWORD /d "150000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v "Cstates" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v "Capabilities" /t REG_DWORD /d "516198" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighPerformance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighestPerformance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MinimumThrottlePercent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumThrottlePercent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumPerformancePercent" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Class1InitialUnparkCount" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InitialUnparkCount" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumPerformancePercent" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WcmSvc\GroupPolicy" /v "fDisablePowerManagement" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PDC\Activators\Default\VetoPolicy" /v "EA:EnergySaverEngaged" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PDC\Activators\28\VetoPolicy" /v "EA:PowerStateDischarging" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Misc" /v "DeviceIdlePolicy" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "PerfEnergyPreference" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "PerfEnergyPreference" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPMinCores" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPMaxCores" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPMinCores1" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPMaxCores1" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CpLatencyHintUnpark1" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPDistribution" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CpLatencyHintUnpark" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "MaxPerformance1" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "MaxPerformance" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPDistribution1" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPHEADROOM" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPCONCURRENCY" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DistributeTimers" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\lsass.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\lsass.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\winlogon.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\winlogon.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAl" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarMn" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "HideSCAMeetNow" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /v "EnableFeeds" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "AlpcWakePolicy" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "SplitLargeCaches" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SimulateCommitSavings" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "TrackLockedPages" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "TrackPtes" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DeepIoCoalescingEnabled" /t REG_DWORD /d "0" /f
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
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
pause
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
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NoLazyMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "LazyModeTimeout" /t REG_DWORD /d "10000" /f
cls
:: Enable GameMode
echo Enabling GameMode
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Gamebar
echo Disabling Gamebar
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Gaming.GameBar.PresenceServer.Internal.PresenceWriter" /v "ActivationType" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "HistoryViewEnabled" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "DeviceHistoryEnabled" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f >> APB_Log.txt
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
pause
ping -n 2 127.0.0.1>nul
taskkill /f /im explorer.exe
start explorer.exe
echo shutdown ??
ping -n 2 127.0.0.1>nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
cls
echo 1 shutdown
echo 2 NO shutdown
SET /p choix=" >  "
if %choix%== 1,yes Goto :shd
if %choix%== 2,no Goto :Question
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
setlocal
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
pause
title Gamemode off
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PerfLevelSrc" /f >> APB_Log.txt
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PowerMizerEnable" /f >> APB_Log.txt
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PowerMizerLevel" /f >> APB_Log.txt
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PowerMizerLevelAC" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SystemCacheDirtyPageThreshold" /t REG_DWORD /d "0" /f >nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageThreshold" /t REG_DWORD /d "0" /f >nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcTotalDirtyPages" /t REG_DWORD /d "0" /f >nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageTarget" /t REG_DWORD /d "0" /f >nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "3" /f >nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f >nul
pause
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
start BACKUP
ping -n 2 127.0.0.1>nul
echo Disable Gamemode
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo shutdown
SET /p choix=" PRESS NUMBER USE  >  "
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
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
cls
echo only windows 11
SET /p choix=" yes or No  >  "
if %choix%== yes Goto :Family
if %choix%== no Goto :menu
:Family
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "GlobalTimerResolutionRequests" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "AlpcWakePolicy" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "SplitLargeCaches" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SimulateCommitSavings" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "TrackLockedPages" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "TrackPtes" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DeepIoCoalescingEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "132" /f
@echo off
setlocal enabledelayedexpansion
cls
title Windows 11 Basic Optimizer by Melody version 6
echo.
echo Automatic Optimizer to restore proper framerate in your Windows 11 PC after Windows 10 Upgrade
echo.
echo Make SURE you run this script as Administrator
echo If you did, press any key to continue, else, close the script and run it again as Administrator
echo.
pause > nul

REM Process Mitigations
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationOptions" /t REG_BINARY /d 222222222222222222222222222222222222222222222222 /f  (
REM Per-process Process Mitigations
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Acrobat.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\AcrobatInfo.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\AcroCEF.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\AcroRd32.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\AcroServicesUpdater.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ExtExport.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ie4uinit.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ieinstal.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ielowutil.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ieUnatt.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\iexplore.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mscorsvw.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msfeedssync.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mshta.exe" /v "MitigationOptions" /f
REM keep MsSense alone because it causes problems
REM reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MsSense.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ngen.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ngentask.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\PresentationHost.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\PrintDialog.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\PrintIsolationHost.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\runtimebroker.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\splwow64.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\spoolsv.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SystemSettings.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SystemSettings.exe" /v "MitigationOptions" /f

REM Other Mitigation stuff
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "MoveImages" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\FVE" /v "DisableExternalDMAUnderLock" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "EnableVirtualizationBasedSecurity" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "HVCIMATRequired" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" /v "DEPOff" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "NoDataExecutionPrevention" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v "DisableHHDEP" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d 0 /f
bcdedit /set isolatedcontext No
bcdedit /set allowedinmemorysettings 0x0
bcdedit /set disableelamdrivers Yes
bcdedit /set vsmlaunchtype Off
bcdedit /set bootmenupolicy Legacy

REM Telemetry
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\AppV\CEIP" /v "CEIPEnable" /t REG_DWORD /d 0 /f
REM the one below is actually 0 to disable customer improvement program, idk why
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\SQM" /v "DisableCustomerImprovementProgram" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Messenger\Client" /v "CEIP" /t REG_DWORD /d 2 /f
REM same thing, 1 to disable
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MSDeploy\3" /v "EnableTelemetry" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d 1 /f

REM Hardware accelerated scheduling
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 2 /f

REM use bbr2 (BBR V2) as a congestion control provider
netsh int tcp set supplemental internet congestionprovider=bbr2

REM use the weak host model by default (same as Linux)
powershell "Get-NetAdapter -IncludeHidden | Set-NetIPInterface -WeakHostSend Enabled -WeakHostReceive Enabled -ErrorAction SilentlyContinue"

REM Disabled features
REM Get Insider Updates without joining the Insider Program and without having Telemetry enabled
REM reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "BranchReadinessLevel" /t REG_DWORD /d 2 /f
REM reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ManagePreviewBuilds" /t REG_DWORD /d 1 /f
REM reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ManagePreviewBuildsPolicyValue" /t REG_DWORD /d 2 /f
echo.
echo Done, make sure you reboot your system
echo Run this script every time you upgrade to a new build
echo.
pause
endlocal
goto menu

:roblox
cd c:
start C:\Users\siwat\AppData\Local\Roblox\Versions\version-3aba366803e44f0e\RobloxPlayerBeta.exe

:Notebook
cls
@echo off
echo Disable Boost all
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
pause
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "0" /f     (
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "enableTaskOffload" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer" /v "EnableOplocks" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer" /v "OplocksDisabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mrxsmb" /v "OplocksDisabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Profile\Events\{54533251-82be-4824-96c1-47b60b740d00}\{0DA965DC-8FCF-4c0b-8EFE-8DD5E7BC959A}\{7E01ADEF-81E6-4e1b-8075-56F373584694}" /v "TimeLimitInSeconds" /t REG_DWORD /d "18" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Profile\Events\{54533251-82be-4824-96c1-47b60b740d00}\{0DA965DC-8FCF-4c0b-8EFE-8DD5E7BC959A}\{7E01ADEF-81E6-4e1b-8075-56F373584694}" /v "TimeLimitInSeconds" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\FVE" /v "DisableExternalDMAUnderLock" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePageCombining" /t REG_DWORD /d "0" /f
Reg.exe add "HKCC\System\CurrentControlSet\Control" /v "Services" /t REG_DWORD /d "2242" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "DisablePagingExecutive" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKCC\System\CurrentControlSet\Control" /v "config" /t REG_DWORD /d "51656206" /f
Reg.exe add "HKCC\System\CurrentControlSet\Control\Print\Printers" /f
:: ---------------------------------------------------  !!! Incorrect Data Found !!!  -------------------------------------------------------------
:: HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response --> "AutoRepeatDelay"="500"
:: HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response --> "AutoRepeatRate"="20"
:: HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response --> "DelayBeforeAcceptance"="0"
:: HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response --> "Flags"="27"
:: ------------------------------------------------------------------------------------------------------------------------------------------------

Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Background Only" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Priority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Audio" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "Background Only" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "Priority" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Capture" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "Background Only" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "Priority" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Distribution" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "Priority" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "BackgroundPriority" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Playback" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Priority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Pro Audio" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "SFIO Priority" /t REG_SZ /d "Normal" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "Background Only" /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "Priority" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Window Manager" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\USB" /v "EnhancedPowerManagementEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatDelay" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatRate" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "BounceTime" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "DelayBeforeAcceptance" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "122" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last BounceKey Setting" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Delay" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Repeat" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Wait" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /f
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
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Nsi\{eb004a03-9b1a-11d4-9123-0050047759bc}\0" /v "0200" /t REG_BINARY /d "0000000000000000000000000000000000000000000000000000000002000000000000000000000000000000000000000000ff000000000000000000000000000000000000000000ff000000000000000000000000000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Nsi\{eb004a03-9b1a-11d4-9123-0050047759bc}\0" /v "1700" /t REG_BINARY /d "0000000000000000000000000000000000000000000000000000000002000000000000000000000000000000000000000000ff000000000000000000000000000000000000000000ff000000000000000000000000000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveDnsProbeContent" /t REG_SZ /d "8.8.4.4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveDnsProbeContentV6" /t REG_SZ /d "2001:4860:4860::8844" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveDnsProbeHost" /t REG_SZ /d "dns.google" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveDnsProbeHostV6" /t REG_SZ /d "dns.google" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbeContent" /t REG_SZ /d "Microsoft Connect Test" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbeContentV6" /t REG_SZ /d "Microsoft Connect Test" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbeHost" /t REG_SZ /d "www.msftconnecttest.com" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbeHostV6" /t REG_SZ /d "www.msftconnecttest.com" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbePath" /t REG_SZ /d "connecttest.txt" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbePathV6" /t REG_SZ /d "connecttest.txt" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "CaptivePortalTimer" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "CaptivePortalTimerBackOffIncrementsInSeconds" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "CaptivePortalTimerMaxInSeconds" /t REG_DWORD /d "30" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "EnableActiveProbing" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "PassivePollPeriod" /t REG_DWORD /d "15" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "StaleThreshold" /t REG_DWORD /d "30" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "WebTimeout" /t REG_DWORD /d "35" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet\ManualProxies" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "AlwaysOn" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NoLazyMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "LazyModeTimeout" /t REG_DWORD /d "150000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v "Cstates" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v "Capabilities" /t REG_DWORD /d "516198" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighPerformance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighestPerformance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MinimumThrottlePercent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumThrottlePercent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumPerformancePercent" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Class1InitialUnparkCount" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InitialUnparkCount" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumPerformancePercent" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WcmSvc\GroupPolicy" /v "fDisablePowerManagement" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PDC\Activators\Default\VetoPolicy" /v "EA:EnergySaverEngaged" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PDC\Activators\28\VetoPolicy" /v "EA:PowerStateDischarging" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Misc" /v "DeviceIdlePolicy" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "PerfEnergyPreference" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "PerfEnergyPreference" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPMinCores" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPMaxCores" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPMinCores1" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPMaxCores1" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CpLatencyHintUnpark1" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPDistribution" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CpLatencyHintUnpark" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "MaxPerformance1" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "MaxPerformance" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPDistribution1" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPHEADROOM" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPCONCURRENCY" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DistributeTimers" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\lsass.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\lsass.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\winlogon.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\winlogon.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAl" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarMn" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "HideSCAMeetNow" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /v "EnableFeeds" /t REG_DWORD /d "0" /f
goto LL2
:LL2
goto menu
:LL
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo succeed
pause
goto menu

:power
chcp 65001
title setting power plan
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
cls
echo 1 balanced
echo 2 High
echo 3 ultimate
SET /p choix=" PRESS NUMBER USE  >  "
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
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo  (═══════                                      )
ping -n 1 127.0.0.1>nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo  (══════════════                               )
ping -n 1 127.0.0.1>nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo  (═══════════════════════════════════          )
ping -n 1 127.0.0.1>nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo  (═════════════════════════════════════════════)
ping -n 1 127.0.0.1>nul
cls
powercfg -duplicatescheme a1841308-3541-4fab-bc81-f71556f20b4a >> APB_Log.txt
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo succeed
ping -n 2 127.0.0.1>nul
goto menu

:ld2
title setting powerplan
color 7
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo  (═══════                                      )
ping -n 1 127.0.0.1>nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo  (══════════════                               )
ping -n 1 127.0.0.1>nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo  (═══════════════════════════════════          )
ping -n 1 127.0.0.1>nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo  (═════════════════════════════════════════════)
ping -n 1 127.0.0.1>nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
powercfg -duplicatescheme 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c >> APB_Log.txt313
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo succeed
ping -n 2 127.0.0.1>nul
goto menu

:ld3
title setting powerplan
color 7
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo  (═══════                                      )
ping -n 1 127.0.0.1>nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo  (══════════════                               )
ping -n 1 127.0.0.1>nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo  (═══════════════════════════════════          )
ping -n 1 127.0.0.1>nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo  (═════════════════════════════════════════════)
ping -n 1 127.0.0.1>nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
powercfg -duplicatescheme b9eac751-ab29-4022-accb-d2c9c5a93918 >> APB_Log.txt
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo succeed
ping -n 2 127.0.0.1>nul
goto menu

:cpu
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
goto commingsoon
goto setupCpu


:setupCpu
echo comming soon
goto menu
:Keyboard
title Keybord
git clone https://github.com/rraapt66/Keybord.git
start Keybord
goto kb
:kb
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
pause
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit /v LastKey /t REG_SZ /d Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\mouclass\Parameters /f >> APB_Log.txt
goto menu

:mouse
title mouse
git clone https://github.com/rraapt66/mouse.git
start mouse
goto Mu
:Mu
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
pause
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit /v LastKey /t REG_SZ /d Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters /f >> APB_Log.txt
goto menu

:nvidia
title nvidia boost
cls
setlocal
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
pause
:: ---------------------------------------------------  !!! Incorrect Data Found !!!  -------------------------------------------------------------
:: HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\nvlddmkm --> [Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\nvlddmkm]
:: HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\nvlddmkm --> [Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\nvlddmkm]
:: HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer --> [Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\nvlddmkm]
:: ------------------------------------------------------------------------------------------------------------------------------------------------
:: -----------------------------------------------------  !!! Unsupported Reg Type Found !!!  -----------------------------------------------------
REM ~ Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "NetworkInterfaceInstallTimestamp" /t REG_QWORD /d "0xf54709573e03da01" /f
:: ------------------------------------------------------------------------------------------------------------------------------------------------

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
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\D0PCEnable\enum" /v "1" /t REG_SZ /d "Enable" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\NetworkAddress" /v "ParamDesc" /t REG_SZ /d "Network Address" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\NetworkAddress" /v "default" /t REG_SZ /d "" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\NetworkAddress" /v "LimitText" /t REG_SZ /d "12" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\NetworkAddress" /v "UpperCase" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\NetworkAddress" /v "optional" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\NetworkAddress" /v "type" /t REG_SZ /d "edit" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\roamPolicy" /v "ParamDesc" /t REG_SZ /d "Roaming aggressiveness" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\roamPolicy" /v "Type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\roamPolicy" /v "Default" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\roamPolicy\enum" /v "5" /t REG_SZ /d "5.Highest" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\roamPolicy\enum" /v "4" /t REG_SZ /d "4.Medium-high" /f
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
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "5" /t REG_SZ /d "05 - 11 b/g/n" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "6" /t REG_SZ /d "06 - 11 a" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "7" /t REG_SZ /d "07 - 11 a/n" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "8" /t REG_SZ /d "08 - 11 a/b/g/n" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "9" /t REG_SZ /d "09 - 11 a/g/n" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "10" /t REG_SZ /d "10 - 11 a/n/ac" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "11" /t REG_SZ /d "11 - 11 a/g/n/ac" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "12" /t REG_SZ /d "12 - 11 a/b/g/n/ac" /f
:: NVIDIA Inspector Profile
echo Applying NVIDIA Inspector Profile
curl -g -k -L -# -o "%temp%\nvidiaProfileInspector.zip" "https://github.com/Orbmu2k/nvidiaProfileInspector/releases/latest/download/nvidiaProfileInspector.zip" >> APB_Log.txt
powershell -NoProfile Expand-Archive '%temp%\nvidiaProfileInspector.zip' -DestinationPath 'C:\NvidiaProfileInspector\' >> APB_Log.txt
curl -g -k -L -# -o "C:\NvidiaProfileInspector\ancel_nv_profile.nip" "https://cdn.discordapp.com/attachments/1003668036345143376/1067887367865778208/ancel_nv_profile.nip" >> APB_Log.txt
start "" /wait "C:\NvidiaProfileInspector\nvidiaProfileInspector.exe" "C:\NvidiaProfileInspector\ancel_nv_profile.nip" >> APB_Log.txt
timeout /t 3 /nobreak > NUL

:: Enable MSI Mode for GPU
echo Enabling MSI Mode
for /f %%g in ('wmic path win32_videocontroller get PNPDeviceID ^| findstr /L "VEN_"') do (
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /t REG_DWORD /d "0" /f >> APB_Log.txt
)
timeout /t 1 /nobreak > NUL

:: NVIDIA Latency Tolerance
echo Setting NVIDIA Latency Tolerance
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "D3PCLatency" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "F1TransitionLatency" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "LOWLATENCY" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Node3DLowLatency" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PciLatencyTimerControl" /t REG_DWORD /d "20" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMDeepL1EntryLatencyUsec" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmGspcMaxFtuS" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmGspcMinFtuS" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmGspcPerioduS" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrEiIdleThresholdUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrGrIdleThresholdUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrGrRgIdleThresholdUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrMsIdleThresholdUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "VRDirectFlipDPCDelayUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "VRDirectFlipTimingMarginUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "VRDirectJITFlipMsHybridFlipDelayUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "vrrCursorMarginUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "vrrDeflickerMarginUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "vrrDeflickerMaxUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Force Contigous Memory Allocation
echo Forcing Contigous Memory Allocation
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PreferSystemMemoryContiguous" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable HDCP
echo Disabling High-bandwidth Digital Content Protection
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMHdcpKeyGlobZero" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable TCC
echo Disabling TCC
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TCCSupported" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Tiled Display
echo Disabling Tiled Display
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableTiledDisplay" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable NVIDIA Telemetry
echo Disabling NVIDIA Telemetry
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "NvBackend" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\NVIDIA Corporation\NvControlPanel2\Client" /v "OptInOrOutPreference" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID66610" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID64640" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID44231" /t REG_DWORD /d "0" /f >> APB_Log.txt
schtasks /change /disable /tn "NvTmRep_CrashReport1_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >> APB_Log.txt
schtasks /change /disable /tn "NvTmRep_CrashReport2_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >> APB_Log.txt
schtasks /change /disable /tn "NvTmRep_CrashReport3_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >> APB_Log.txt
schtasks /change /disable /tn "NvTmRep_CrashReport4_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >> APB_Log.txt
schtasks /change /disable /tn "NvDriverUpdateCheckDaily_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >> APB_Log.txt
schtasks /change /disable /tn "NVIDIA GeForce Experience SelfUpdate_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >> APB_Log.txt
schtasks /change /disable /tn "NvTmMon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable NVIDIA Display Power Saving
echo Disabling NVIDIA Display Power Saving
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "DisplayPowerSaving" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Write Combining
echo Disabling Write Combining
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Enable DPC'S for each Core
echo Enabling DPC'S for each Core
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\NVAPI" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Preemption
echo Disabling Preemption
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "ComputePreemption" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Video Redraw Acceleration
echo Setting Driver Acceleration
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Acceleration.Level" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable NVIDIA 3D Vision Shortcuts
echo Disabling NVIDIA Shortcuts
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DesktopStereoShortcuts" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "FeatureControl" /t REG_DWORD /d "4" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Filter
echo Disabling Filter
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "NVDeviceSupportKFilter" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Increased Dedicated Video Memory
echo Increasing Dedicated Video Memory
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmCacheLoc" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Set NVIDIA Driver Package Install Directory
echo Setting Driver Package Install Directory
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmDisableInst2Sys" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: ReAllocate DMA Buffers
echo ReAllocating DMA Buffers
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmFbsrPagedDMA" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Change PCounter Permissions
echo Changing Performance Counter Permissions
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmProfilingAdminOnly" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable DX Event Tracking
echo Disabling DirectX Event Tracking
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TrackResetEngine" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Verifications in Block Transfer Operations
echo Disabling Verifications Block Transfer Operations
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ValidateBlitSubRects" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable NVIDIA WDDM TDR
echo Disabling NVIDIA TDR
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLevel" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDelay" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDdiDelay" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDebugMode" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLimitCount" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLimitTime" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrTestMode" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

echo Finished NVIDIA GPU Optimizations
timeout /t 5 /nobreak > NUL
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplExposeWin2kDualView" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplTvLocaleAutoDetect" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplAllowForceTVDetection" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableActiveApp" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "DisableApplyColorsAtStartup" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NoMenus" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "OverlayPageState" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "CinematicPageState" /t REG_DWORD /d "255" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplThermalSettings" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableAppProfilePage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableScreenMenuPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplCustomResConfig" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableAdditionalInfoPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplDisablePerfQualPage" /t REG_BINARY /d "00000000" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableAGPSettingsPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "CoolBits" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableOverlaySpanControl" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "TwinViewCapsOverride" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableDesktopOverlapPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableTroubleshootingPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplDisableRefreshRatePage" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplDisableRotateAngles" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableClearViewPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableFanControl" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableFrameSyncPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableHardwarePage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnablenForcePage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnablePwrMzrOnDesktopMenu" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableRotationColorSettings" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplNvThermPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "PowermizerPreferences" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "QTwkEnableModeChangeWarning" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DisableMshybridNvsrSwitch" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "EnableBugcheckDisplay" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultD3TransitionLatencyActivelyUsed" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "MaxIAverageGraphicsLatencyInOneBucket" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "TransitionLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RMPcieLinkSpeed" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnablePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "ComputePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Acceleration.Level" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DesktopStereoShortcuts" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "FeatureControl" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "NVDeviceSupportKFilter" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmCacheLoc" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmDisableInst2Sys" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmFbsrPagedDMA" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMGpuId" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmProfilingAdminOnly" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TCCSupported" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TrackResetEngine" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "UseBestResolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ValidateBlitSubRects" /t REG_DWORD /d "0" /f
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
pause
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RMPcieLinkSpeed" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnablePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "ComputePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Acceleration.Level" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DesktopStereoShortcuts" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "FeatureControl" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "NVDeviceSupportKFilter" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmCacheLoc" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmDisableInst2Sys" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmFbsrPagedDMA" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMGpuId" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmProfilingAdminOnly" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TCCSupported" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TrackResetEngine" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "UseBestResolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ValidateBlitSubRects" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Acceleration.Level" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DesktopStereoShortcuts" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "FeatureControl" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "NVDeviceSupportKFilter" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmCacheLoc" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmDisableInst2Sys" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmFbsrPagedDMA" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMGpuId" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmProfilingAdminOnly" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TCCSupported" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TrackResetEngine" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "UseBestResolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ValidateBlitSubRects" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableRID61684" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "EnablePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "ComputePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "DisablePreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "DisplayPowerSaving" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableTiledDisplay" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "UvmDisable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "LogWarningEntries" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "LogPagingEntries" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "LogEventEntries" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "LogErrorEntries" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "ComputePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "EnableBugcheckDisplay" /t REG_DWORD /d "0" /f
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
pause
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableRID61684" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0000" /v "RMHdcpKeyglobZero" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplExposeWin2kDualView" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplTvLocaleAutoDetect" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplAllowForceTVDetection" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableActiveApp" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "DisableApplyColorsAtStartup" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NoMenus" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "OverlayPageState" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "CinematicPageState" /t REG_DWORD /d "255" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplThermalSettings" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableAppProfilePage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableScreenMenuPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplCustomResConfig" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableAdditionalInfoPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplDisablePerfQualPage" /t REG_BINARY /d "00000000" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableAGPSettingsPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "CoolBits" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableOverlaySpanControl" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "TwinViewCapsOverride" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableDesktopOverlapPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableTroubleshootingPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplDisableRefreshRatePage" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplDisableRotateAngles" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NoPages" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableClearViewPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableFanControl" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableFrameSyncPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableHardwarePage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnablenForcePage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnablePwrMzrOnDesktopMenu" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableRotationColorSettings" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplNvThermPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "PowermizerPreferences" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "QTwkEnableModeChangeWarning" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "SimulateSecureBoot" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DisableMshybridNvsrSwitch" /t REG_DWORD /d "1" /f
cls
>> APB_Log.txt)
goto menu


:cpuboos
title Boost
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo Boost 
chcp 65001 >nul
SET /p choix=" yes or No  >  "
if %choix%== yes Goto :bof
if %choix%== no Goto :menu

:bof
title Boost
cls
chcp 65001 >nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo ══════════════════════════════════════════════════════════════════════════════════════════════════ 
echo 1 boost 10%
echo 2 boost 45%
echo 3 boost 100%
echo ══════════════════════════════════════════════════════════════════════════════════════════════════
SET /p choix=" PRESS NUMBER USE  >  "
if %choix%== 1 Goto :1
if %choix%== 2 Goto :g
if %choix%== 3 Goto :v

:1
title boost 10%
color 7
echo  (═══════                                      )
ping -n 1 127.0.0.1>nul
cls
echo  (══════════════                               )
ping -n 1 127.0.0.1>nul
cls
echo  (═══════════════════════════════════          )
ping -n 1 127.0.0.1>nul
cls
echo  (═════════════════════════════════════════════)
ping -n 1 127.0.0.1>nul
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "8" /f >nul >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SystemCacheDirtyPageThreshold" /t REG_DWORD /d "0" /f >nul >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageThreshold" /t REG_DWORD /d "2" /f >nul >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcTotalDirtyPages" /t REG_DWORD /d "0" /f >nul >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageTarget" /t REG_DWORD /d "0" /f >nul >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "3" /f >nul >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f >nul >> APB_Log.txt
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalDelayedWorkerThreads" /t REG_DWORD /d "8" /f >nul
cls
goto menu

:g
title boost 45%
color 7
echo  (═══════                                      )
ping -n 1 127.0.0.1>nul
cls
echo  (══════════════                               )
ping -n 1 127.0.0.1>nul
cls
echo  (═══════════════════════════════════          )
ping -n 1 127.0.0.1>nul
cls
echo  (═════════════════════════════════════════════)
ping -n 1 127.0.0.1>nul
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "12" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SystemCacheDirtyPageThreshold" /t REG_DWORD /d "0" /f >nul >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageThreshold" /t REG_DWORD /d "100" /f >nul >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcTotalDirtyPages" /t REG_DWORD /d "0" /f >nul >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageTarget" /t REG_DWORD /d "0" /f >nul >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "3" /f >nul >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f >nul >> APB_Log.txt
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalDelayedWorkerThreads" /t REG_DWORD /d "12" /f >nul
cls
goto menu

:v
title boost 100%
color 7
echo  (═══════                                      )
ping -n 1 127.0.0.1>nul
cls
echo  (══════════════                               )
ping -n 1 127.0.0.1>nul
cls
echo  (═══════════════════════════════════          )
ping -n 1 127.0.0.1>nul
cls
echo  (═════════════════════════════════════════════)
ping -n 1 127.0.0.1>nul
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "20" /f >nul >>APB_Log.txt        
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SystemCacheDirtyPageThreshold" /t REG_DWORD /d "0" /f >nul >>APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageThreshold" /t REG_DWORD /d "500" /f >nul >>APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcTotalDirtyPages" /t REG_DWORD /d "0" /f >nul >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageTarget" /t REG_DWORD /d "0" /f >nul >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "3" /f >nul >>APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f >nul >>APB_Log.txt
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalDelayedWorkerThreads" /t REG_DWORD /d "20" /f >nul
cls
goto menu





:discord
title join discord
cls
echo join discord
SET /p choix="yes or no  >  "
if %choix%== yes Goto :dis
if %choix%== no Goto :menu

:dis
start https://discord.gg/xbky7U6g
goto menu

:backup
mkdir BACKUP
echo backup Successful > BACKUP\backup.txt
cd BACKUP
reg export HKLM HKEY_LOCAL_MACHINE.reg >> APB_Log.txt
cls
echo Successful(Dont close)
reg export HKCU HKEY_CURRENT_USER.reg >> APB_Log.txt
cls
echo Successful(Dont close)
reg export HKCR HKEY_CLASSES_ROOT.reg >> APB_Log.txt
cls
echo Successful(Dont close)
reg export HKU HKEY_USERS.reg >> APB_Log.txt
cls
echo Successful(Dont close)
reg export HKCC HK_CURRENT_CONFIG.reg >> APB_Log.txt
cls
echo Successful(Dont close)
cls
goto pause


:pause
pause
goto menu >nul


:intel
cls
setlocal
title boost cpu intel
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo Boost 
pause
:: Dedicated Segment Size
echo Setting Dedicated Segment Size
reg add "HKLM\SOFTWARE\Intel\GMM" /v "DedicatedSegmentSize" /t REG_DWORD /d "512" /f >> APB_Log.txt
timeout /t 5 /nobreak > NUL
echo loadding
ping -n 2 127.0.0.1>nul
:: -----------------------------------------------------  !!! Unsupported Reg Type Found !!!  -----------------------------------------------------
REM ~ Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "NetworkInterfaceInstallTimestamp" /t REG_QWORD /d "0xf54709573e03da01" /f
:: ------------------------------------------------------------------------------------------------------------------------------------------------

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
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\D0PCEnable\enum" /v "1" /t REG_SZ /d "Enable" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\NetworkAddress" /v "ParamDesc" /t REG_SZ /d "Network Address" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\NetworkAddress" /v "default" /t REG_SZ /d "" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\NetworkAddress" /v "LimitText" /t REG_SZ /d "12" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\NetworkAddress" /v "UpperCase" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\NetworkAddress" /v "optional" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\NetworkAddress" /v "type" /t REG_SZ /d "edit" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\roamPolicy" /v "ParamDesc" /t REG_SZ /d "Roaming aggressiveness" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\roamPolicy" /v "Type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\roamPolicy" /v "Default" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\roamPolicy\enum" /v "5" /t REG_SZ /d "5.Highest" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\roamPolicy\enum" /v "4" /t REG_SZ /d "4.Medium-high" /f
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
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "5" /t REG_SZ /d "05 - 11 b/g/n" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "6" /t REG_SZ /d "06 - 11 a" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "7" /t REG_SZ /d "07 - 11 a/n" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "8" /t REG_SZ /d "08 - 11 a/b/g/n" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "9" /t REG_SZ /d "09 - 11 a/g/n" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "10" /t REG_SZ /d "10 - 11 a/n/ac" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "11" /t REG_SZ /d "11 - 11 a/g/n/ac" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "12" /t REG_SZ /d "12 - 11 a/b/g/n/ac" /f
echo Successful
ping -n 1 127.0.0.1>nul
goto menu


:AMD
cls
setlocal
title AMD Boostecho                                
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
:: Enable MSI Mode for GPU
echo Enabling MSI Mode
for /f %%g in ('wmic path win32_videocontroller get PNPDeviceID ^| findstr /L "VEN_"') do (
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f >> APB_Log.txt              )
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Override Referesh Rate
echo Disabling Display Refresh Rate Override
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "3D_Refresh_Rate_Override_DEF" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable SnapShot
echo Disabling SnapShot
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSnapshot" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Anti Aliasing
echo Disabling Anti Aliasing
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AAF_NA" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AntiAlias_NA" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ASTT_NA" /t REG_SZ /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable AllowSubscription
echo Disabling Subscriptions
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSubscription" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Anisotropic Filtering
echo Disabling Anisotropic Filtering
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AreaAniso_NA" /t REG_SZ /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable AllowRSOverlay
echo Disabling Radeon Overlay
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowRSOverlay" /t REG_SZ /d "false" /f >> APB_Log.txt 
timeout /t 1 /nobreak > NUL

:: Enable Adaptive DeInterlacing
echo Enabling Adaptive DeInterlacing
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Adaptive De-interlacing" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable AllowSkins
echo Disabling Skins
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSkins" /t REG_SZ /d "false" /f >> APB_Log.txt 
timeout /t 1 /nobreak > NUL

:: Disable AutoColorDepthReduction_NA
echo Disabling Automatic Color Depth Reduction
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AutoColorDepthReduction_NA" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Power Gating
echo Disabling Power Gating
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableSAMUPowerGating" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableUVDPowerGatingDynamic" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableVCEPowerGating" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePowerGating" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDrmdmaPowerGating" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Clock Gating
echo Disabling Clock Gating
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableVceSwClockGating" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUvdClockGating" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable ASPM
echo Disabling Active State Power Management
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAspmL0s" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAspmL1" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable ULPS
echo Disabling Ultra Low Power States
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps_NA" /t REG_SZ /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Enable De-Lag
echo Enabling De-Lag
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_DeLagEnabled" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable FRT
echo Disabling Frame Rate Target
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_FRTEnabled" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable DMA
echo Disabling DMA
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDMACopy" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Enable BlockWrite
echo Enable BlockWrite
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableBlockWrite" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable StutterMode
echo Disabling Stutter Mode
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "StutterMode" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable GPU Mem Clock Sleep State
echo Disabling GPU Memory Clock Sleep State
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_SclkDeepSleepDisable" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Thermal Throttling
echo Disabling Thermal Throttling
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ThermalAutoThrottlingEnable" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Preemption
echo Disabling Preemption
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_EnableComputePreemption" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Setting Main3D
echo Setting Main3D
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D_DEF" /t REG_SZ /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D" /t REG_BINARY /d "3100" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Setting FlipQueueSize
echo Setting FlipQueueSize
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "FlipQueueSize" /t REG_BINARY /d "3100" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Setting Shader Cache
echo Setting Shader Cache Size
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ShaderCache" /t REG_BINARY /d "3200" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Configuring TFQ
echo Configuring TFQ
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TFQ" /t REG_BINARY /d "3200" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable HDCP
echo Disabling High-Bandwidth Digital Content ProtectionF
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\\DAL2_DATA__2_0\DisplayPath_4\EDID_D109_78E9\Option" /v "ProtectionControl" /t REG_BINARY /d "0100000001000000" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable GPU Power Down
echo Disabling GPU Power Down
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_GPUPowerDownEnabled" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable AMD Logging
echo Disabling AMD Logging
reg add "HKLM\SYSTEM\CurrentControlSet\Services\amdlog" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: AMD Tweaks (Melody The Neko#9870)
echo Applying Melody AMD Tweaks
for %%a in (LTRSnoopL1Latency LTRSnoopL0Latency LTRNoSnoopL1Latency LTRMaxNoSnoopLatency KMD_RpmComputeLatency
        DalUrgentLatencyNs memClockSwitchLatency PP_RTPMComputeF1Latency PP_DGBMMMaxTransitionLatencyUvd
        PP_DGBPMMaxTransitionLatencyGfx DalNBLatencyForUnderFlow DalDramClockChangeLatencyNs
        BGM_LTRSnoopL1Latency BGM_LTRSnoopL0Latency BGM_LTRNoSnoopL1Latency BGM_LTRNoSnoopL0Latency
        BGM_LTRMaxSnoopLatencyValue BGM_LTRMaxNoSnoopLatencyValue) do (reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "%%a" /t REG_DWORD /d "1" /f >> APB_Log.txt
)

echo Finished AMD GPU Optimizations
timeout /t 5 /nobreak > NUL >> APB_Log.txt
goto menu





:lowcpu
title cpu runnig low %
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo Boost ???(press key to continue)
pause 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power >> APB_Log.txt
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power >> APB_Log.txt
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000 >> APB_Log.txt
goto menu
