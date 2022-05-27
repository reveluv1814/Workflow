<?php
session_start();
echo "Hola: ".$_SESSION["id"];
echo "<br>";

$sql="select * from alumno where id=".$_SESSION["id"];
$resultado=pg_query($con,$sql);
$fila=pg_fetch_array($resultado);
$nombrecompleto=$fila["nombrecompleto"]
?>