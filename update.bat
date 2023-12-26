@echo off
del use.txt> nul
del Thanks-for-Dowload.txt > nul
del readme.txt > nul
del setup.bat > nul
del Apill-fuse.bat >nul
del Delete.bat > nul
echo x=msgbox("update Successful" ,0, "max") >>update.vbs
start update.vbs 
git clone https://github.com/rraapt66/Apill-fuse.git
cd Apill-fuse
start Apill-fuse.abt
del update.vbs
attrib +h update.bat
exit
