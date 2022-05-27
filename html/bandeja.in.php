<?php
include "conexion.inc.php";
session_start();
$_SESSION["ID_usuario"]=21;
$_SESSION["cod_usuario"]="msilva";

$sql="select * from flujoprocesoseguimiento ";
$sql.="where Usuario='".$_SESSION["cod_usuario"]."' ";
$sql.="and HoraFin is null ";
$resultado=pg_query($con, $sql);
?>
<table>
    <tr>
        <td>Nro Tramite</td>
        <td>Flujo</td>    
        <td>Proceso</td>
        <td>Operacion</td>
    </tr>

<?php 
while ($fila=pg_fetch_array($resultado))
{
    
    echo "<tr>";
    echo "    <td>".$fila["numerotramite"]."</td>";
    echo "    <td>".$fila["flujo"]."</td>";    
    echo "    <td>".$fila["proceso"]."</td>";
    echo "    <td><a href='principal.php?flujo=".$fila["flujo"]."&proceso=".$fila["proceso"]."'>Editar</a></td>";
    echo "</tr>";
}
?>
</table>