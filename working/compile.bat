@echo off

cd\
cd C:\QuakeDev\working


echo Copying Files...
copy C:\QuakeDev\working\terrain.map C:\QuakeDev\working


echo Converting map...


echo --------------QBSP--------------
C:\QuakeDev\tools\ericw-tools-v0.18.1-32-g6660c5f-win32\bin\qbsp.exe terrain

echo --------------VIS---------------
C:\QuakeDev\tools\ericw-tools-v0.18.1-32-g6660c5f-win32\bin\vis.exe terrain

echo -------------LIGHT--------------
C:\QuakeDev\tools\ericw-tools-v0.18.1-32-g6660c5f-win32\bin\light.exe -soft -extra4 terrain

copy terrain.bsp C:\QuakeDev\id1\maps
copy terrain.pts C:\QuakeDev\id1\maps
copy terrain.lit C:\QuakeDev\id1\maps
pause
cd\
cd C:\QuakeDev
quakespasm  +map terrain
