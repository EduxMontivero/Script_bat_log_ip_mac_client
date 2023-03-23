<?php

$info="";
if(isset($_GET['info'])){
  $info=$_GET['info'];
}

$archivo = 'log.txt';
$fecha_actual = date('Y-m-d H:i:s');

if (!file_exists($archivo)) {
    // Si el archivo no existe, se crea con el modo "w"
    $archivo_handle = fopen($archivo, 'w');
    fwrite($archivo_handle, "Archivo creado ".$fecha_actual." ".$info."\n");
    fclose($archivo_handle);
} else {
    // Si el archivo ya existe, se abre en modo "a" y se agrega la línea "hola"
    $archivo_handle = fopen($archivo, 'a');
    fwrite($archivo_handle, "tag: registro de cpu ".$fecha_actual." ".$info."\n");
    fclose($archivo_handle);
}


?>