@echo off

cd\
cd C:\quakedev\working


echo Copying Files...
copy C:\QuakeDev\soj\maps\soj.map C:\quakedev\working


echo Converting map...


echo --------------QBSP--------------
C:\QuakeDev\tools\ericw-tools-v0.18.1-32-g6660c5f-win32\bin\qbsp.exe soj
pause

echo --------------VIS---------------
C:\QuakeDev\tools\ericw-tools-v0.18.1-32-g6660c5f-win32\bin\vis.exe -fast soj

echo -------------LIGHT--------------
C:\QuakeDev\tools\ericw-tools-v0.18.1-32-g6660c5f-win32\bin\light.exe -soft -extra4 soj

copy soj.bsp C:\quakedev\soj\maps
copy soj.pts C:\quakedev\soj\maps
copy soj.lit C:\quakedev\soj\maps
pause
cd\
cd C:\QuakeDev
quakespasm +game soj +map soj
