<?php
include "conexion.inc.php";
$flujo=$_GET["flujo"];
$proceso=$_GET["proceso"];
$sql="select * from flujoproceso ";
$sql.="where Flujo='$flujo' and proceso='$proceso'";
$resultado=pg_query($con, $sql);
$fila=pg_fetch_array($resultado);
$pantalla=$fila['pantalla'];
$pantalla.=".inc.php";
$proceso=$fila['procesosiguiente'];
?>
<html>
<body>
	Contenido<br>
	<form action="" method="GET">
		<!--iframe src="pantalla.php"></iframe-->
		<input type="hidden" name="flujo" value="<?php echo $flujo;?>"/>
		<input type="hidden" name="proceso" value="<?php echo $proceso;?>"/>
		<?php
		//var_dump($fila);
		include $pantalla;
		?>
		<input type="submit" name="Anterior" value="Anterior"/>
		<input type="submit" name="Siguiente" value="Siguiente"/>
	</form>
</body>
</html>