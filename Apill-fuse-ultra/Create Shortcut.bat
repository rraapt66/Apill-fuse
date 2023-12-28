:setupss
@echo off
rd /s /q Apill-fuse
)
rem ตรวจสอบว่ามีโฟลเดอร์ C:\Program Files\Git หรือไม่
if exist "C:\Program Files\Git" (
    echo Folder C:\Program Files\Git found.
    goto menu
) else (
    echo Folder C:\Program Files\Git not found.
    call :startsetup
)
:menu
cd C:\Users\%username%
git clone https://github.com/rraapt66/Apill-fuse.git
echo Creating Shortcut...
set shortcutPath="C:\Users\SIWATeng\Desktop\Apill-fuse.lnk"
set targetPath="C:\Users\SIWATeng\Apill-fuse\Apill-fuse-ultra\Apill-fuse\Apill-fuse.bat"
echo Set WshShell = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo Set shortcut = WshShell.CreateShortcut(%shortcutPath%) >> CreateShortcut.vbs
echo shortcut.TargetPath = %targetPath% >> CreateShortcut.vbs
echo shortcut.Save >> CreateShortcut.vbs

cscript CreateShortcut.vbs
del CreateShortcut.vbs
start C:\Users\%username%\Apill-fuse-ultra\Apill-fuse-ultra\Apill-fuse-ultra\Apill-fuse\setup.bat
exit
:startSetup
@echo off
echo %username%
cls
start https://github.com/git-for-windows/git/releases/download/v2.43.0.windows.1/Git-2.43.0-64-bit.exe > nul 
echo setup......
:check
set programPath=C:\Users\%username%\Downloads\Git-2.43.0-64-bit.exe
REM ตรวจสอบว่าโปรแกรมมีอยู่หรือไม่
IF EXIST "%programPath%" (
    REM เปิดโปรแกร
    START "" "%programPath%"
	taskkill /F /IM chrome.exe > nul
) ELSE (
    REM ถ้าไม่พบโปรแกรม
goto check
)
@echo off
:checkRunning
@echo off
tasklist | find /i "Git-2.43.0-64-bit.exe" > nul
if %errorlevel% neq 0 goto start
goto checkRunning

:start
goto setupss
