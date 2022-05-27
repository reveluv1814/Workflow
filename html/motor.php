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

if(isset($_GET["Anterior"]))
{ 
    $sql="select * from flujoproceso ";
    $sql.="where Flujo='$flujo' and procesosiguiente='$proceso'";
    $resultado1=pg_query($con, $sql);
    $fila1=pg_fetch_array($resultado1);
    $procesosiguiente=$fila1["proceso"];
}
header("Location: principal.php?flujo=$flujo&proceso=$procesosiguiente");
?>