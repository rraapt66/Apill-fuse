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
(color c
rem ส่วนที่จะทำงานเมื่อไม่มี C:\Program Files\Git
echo Starting setup from alternative location...
rem สร้างเงื่อนไขเพิ่มเติมตามที่คุณต้องการ
start C:\Users\%username%\Apill-fuse\Apill-fuse-ultra\Apill-fuse\setup.bat exit
cls)
