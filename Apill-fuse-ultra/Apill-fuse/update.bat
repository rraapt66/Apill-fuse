@echo off
del use.txt> nul
del Thanks-for-Dowload.txt > nul
del readme.txt > nul
del setup.bat > nul
del Apill-fuse.bat >nul
del Delete.bat > nul
attrib +h update.bat
git clone https://github.com/rraapt66/Apill-fuse.git
cd Apill-fuse
echo x=msgbox("update Successful" ,0, "max") >>update.vbs
start update.vbs 
start Apill-fuse.bat
cls
echo enter to exit
pause
del update.vbs
exit
