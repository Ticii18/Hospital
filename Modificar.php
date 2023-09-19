<?php
include('conexion.php'); // Asegúrate de tener la conexión a la base de datos

if(isset($_POST['cuil'])) {
    $id = $_POST['cuil'];

    // Consulta para obtener los datos de la persona a modificar
    $query = "SELECT * FROM personas WHERE cuil = $id";
    $result = pg_query($conexion, $query);

    if (!$result) {
        die("Error en la consulta: " . pg_last_error());
    }

    $row = pg_fetch_assoc($result);
} else {
    echo "ID de persona no especificado.";
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Editar Persona</title>
    <link rel="stylesheet" href="alta.css">
</head>
<body>
    <section class="form-register">
    <h2>Editar Persona</h2>
    <form action="ModificarPaciente.php" method="post">
        <input class="controls" type="hidden" name="id" value="<?php echo $row['idpersona']; ?>">
        Nombre y Apellido: <input class="controls" type="text" name="nombre_apellido" value="<?php echo $row['nombre_apellido']; ?>"><br>
        CUIL: <input class="controls" type="text" name="cuil" value="<?php echo $row['cuil']; ?>"><br>
        Fecha de Nacimiento: <input class="controls" type="date" name="fecha_nacimiento" value="<?php echo $row['fecha_nacimiento']; ?>"><br>
        Domicilio: <input class="controls" type="text" name="domicilio" value="<?php echo $row['domicilio']; ?>"><br>
        <!-- Agregar campos para idgenero e idtipo_persona -->
        <input class="botons" type="submit" value="Guardar Cambios">
    </form>
    </section>
</body>
</html>
