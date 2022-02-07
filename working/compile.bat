@echo off

cd\
cd C:\quakedev\working


echo Copying Files...
copy C:\QuakeDev\shamjam\maps\shamjam.map C:\quakedev\working


echo Converting map...


echo --------------QBSP--------------
C:\QuakeDev\tools\ericw-tools-v0.18.1-32-g6660c5f-win32\bin\qbsp.exe shamjam

echo --------------VIS---------------
C:\QuakeDev\tools\ericw-tools-v0.18.1-32-g6660c5f-win32\bin\vis.exe shamjam

echo -------------LIGHT--------------
C:\QuakeDev\tools\ericw-tools-v0.18.1-32-g6660c5f-win32\bin\light.exe -soft -extra4 shamjam

copy shamjam.bsp C:\quakedev\shamjam\maps
copy shamjam.pts C:\quakedev\shamjam\maps
copy shamjam.lit C:\quakedev\shamjam\maps
pause
cd\
cd C:\QuakeDev
quakespasm +game shamjam +map shamjam
