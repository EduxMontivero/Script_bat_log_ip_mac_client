@echo off
:loop
::falta que grabe la mac
for /f "tokens=2 delims=:" %%f in ('ipconfig /all ^| findstr /c:"Direcc"') do set IP=%%f
set direccion=http://prestadoresosunlar.unlar.edu.ar:88/log_compus/index.php?info=%IP%
set cadena_sin_espacios=%direccion: =%
curl %cadena_sin_espacios%
echo %cadena_sin_espacios%
ping -n 60 127.0.0.1 > nul
goto loop