<?php
include('conexion.php'); // Asegúrate de tener la conexión a la base de datos

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nombre_apellido = $_POST['nombre_apellido'];
    $cuil = $_POST['cuil'];
    $fecha_nacimiento = $_POST['fecha_nacimiento'];
    $domicilio = $_POST['domicilio'];
    // Agrega campos para idgenero e idtipo_persona y obtén sus valores

    // Actualiza la persona en la base de datos
    $query = "UPDATE personas SET nombre_apellido='$nombre_apellido', cuil='$cuil', fecha_nacimiento='$fecha_nacimiento', domicilio='$domicilio' WHERE Cuil=$cuil";
    $result = pg_query($conexion, $query);

    if ($result) {
        echo "Los datos de la persona se han actualizado correctamente.";
    } else {
        echo "Error al actualizar los datos: " . pg_last_error();
    }
}

header('location:ABMPacientes.html');
?>
