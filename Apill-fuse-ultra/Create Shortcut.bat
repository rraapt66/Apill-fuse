@echo off
rd /s /q Apill-fuse-ultra
cd C:\Users\%username%
git clone https://github.com/rraapt66/Apill-fuse.git
echo Creating Shortcut...
set shortcutPath="C:\Users\SIWATeng\Desktop\Apill-fuse.lnk"
set targetPath="C:\Users\%username%\Apill-fuse-ultra\Apill-fuse.bat"
echo Set WshShell = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo Set shortcut = WshShell.CreateShortcut(%shortcutPath%) >> CreateShortcut.vbs
echo shortcut.TargetPath = %targetPath% >> CreateShortcut.vbs
echo shortcut.Save >> CreateShortcut.vbs

cscript CreateShortcut.vbs
del CreateShortcut.vbs

echo Shortcut created successfully.
