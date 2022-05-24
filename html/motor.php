<?php
include "conexion.inc.php";
$flujo=$_GET["flujo"];
$proceso=$_GET["procesoanterior"];
$procesosiguiente=$_GET["proceso"];
$sql="select * from flujoproceso ";
$sql.="where Flujo='$flujo' and Proceso='$proceso'";
$resultado=pg_query($con, $sql);
$fila=pg_fetch_array($resultado);
$pantalla=$fila['pantalla'];
$pantalla.=".motor.inc.php";
include $pantalla;
header("Location: principal.php?flujo=$flujo&proceso=$procesosiguiente");
?>