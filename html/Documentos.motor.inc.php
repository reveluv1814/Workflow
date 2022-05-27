<?php
session_start();
$cnacimiento=$_GET["cnacimiento"];
$cidentidad=$_GET["cidentidad"];

$sql="update alumno set ";
$sql.="cnacimiento='$cnacimiento', cidentidad='$cidentidad' ";
$sql.=" where id=".$_SESSION["id"];
$resultado=pg_query($con,$sql);
?>