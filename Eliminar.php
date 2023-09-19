<?php
require('conexion.php');
$cuil=$_POST["cuil"];
$eliminar="DELETE FROM Personas Where Cuil=$cuil";
$result=pg_query($conexion,$eliminar);
if ($result) {
    echo "Los datos de la persona se han actualizado correctamente.";
} else {
    echo "Error al actualizar los datos: " . pg_last_error();
}
header('location:ABMPacientes.html');
?>