<?php
require('conexion.php');

$nombre=$_POST["nombres"];
$apellidos=$_POST["apellidos"];
$Cuil=$_POST["Cuil"];
$fecha_nac=$_POST["fecha_nac"];
$Domicilio=$_POST["Domicilio"];
$Genero=$_POST["Genero"];
$Tipo_Per=$_POST["Tipo_Per"];

$nombre_apellido= $nombre. ' ' . $apellidos;

$alta="INSERT INTO Personas (Nombre_apellido,cuil,fecha_nacimiento,domicilio,idgenero,idtipo_persona) VALUES ('$nombre_apellido','$Cuil','$fecha_nac','$Domicilio','$Genero','$Tipo_Per')";
$query=pg_query($conexion,$alta);

header('location:ABMPacientes.html');
?>