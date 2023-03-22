@echo off
:loop
start notepad.exe
echo  ........................................................................................................
ipconfig /all | findstr Direcc
echo    DateTime. . . . . . . . . . . . . . . . . : %date% - %time%
:: aca hacer ping y mandar por get datos a server
ping -n 10 127.0.0.1 > nul
taskkill /f /im notepad.exe > nul
goto loop

::ipconfig | findstr IPv4
::ipconfig | findstr "Nombre de host"

::echo Extrayendo IP y MAC
::ipconfig