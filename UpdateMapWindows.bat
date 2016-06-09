@echo off

echo. -------------------------------------------------
echo This is a script that zips the Community Map files using 7-Zip (http://www.7-zip.org/download.html) and moves it to the 
echo Documents/Rigs of Rods 0.4/packs folder.
echo Made by Michael10055.
echo You need 7-zip installed in the default directory to use this script.
echo. -------------------------------------------------
pause
echo Checking if 32Bit 7-Zip or 64Bit 7-Zip exists....
GOTO :Check7z

:Check7z
IF EXIST "C:\Program Files (x86)\7-Zip\" (GOTO 7z32BIT) ELSE (GOTO 7z64BIT)

:7z32BIT
set PATH=%PATH%;C:\Program Files (x86)\7-Zip\
echo 32-Bit 7-Zip found...
GOTO ZipFiles

:7z64BIT
set PATH=%PATH%;C:\Program Files\7-Zip\
echo 64-Bit 7-Zip found...
GOTO ZipFiles

:ZipFiles
echo Zipping Community Map files...
7z.exe a -tzip Community-Map-git.zip *.* -mx3 -xr!?git\* -x!*.bat -x!*.gitignore -x!*.zip
echo Done. Moving to Rigs of Rods 0.4\packs folder...
pause
GOTO MoveZip

:MoveZip
move "Community-Map-git.zip" "C:\Users\%USERNAME%\Documents\Rigs of Rods 0.4\packs"
echo Done. Exiting...
pause
EXIT