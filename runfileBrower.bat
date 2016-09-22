

cd /d %~dp0

:loop
title fileBrower %date% %time%
cls
node index.js
rem pause
goto :loop

