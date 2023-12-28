@echo off
	taskkill /F /IM cmd.exe > nul
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
goto start
goto checkRunning
:start 
start Apill-fuse.bat
exit
