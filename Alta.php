<?php
require('conexion.php');;
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="Alta.css">
  <title>Formulario Registro</title>
</head>
<body>
  <section class="form-register">

    <h4>Agregar Pacientes</h4>
    <form action="AltaPaciente.php" method="post">
    <input class="controls" type="text" name="nombres" id="nombres" placeholder="Ingrese su Nombre">
    <input class="controls" type="text" name="apellidos" id="apellidos" placeholder="Ingrese su Apellido">
    <input class="controls" type="number" name="Cuil" id="Cuil" placeholder="Ingrese su cuil">
    <h5 >Ingrese su fecha de nacimiento</h5>
    <input class="controls" type="date" name="fecha_nac" id="fecha_nac" placeholder="Ingrese su fecha de nacimiento">
    
    <input class="controls" type="text" name="Domicilio" id="Domicilio" placeholder="Ingrese su Domicilio">
    <select class="controls" name="Genero" required>
      <option value="" disabled selected>Seleccione Su Genero</option>
      <?php
      // imprimo en una lista los clientes
      $genero = "SELECT * FROM genero";
      $resultado2 = pg_query($conexion, $genero);
      while ($row2 = pg_fetch_assoc($resultado2)) { ?>
        <option value="<?php echo $row2['idgenero']; ?>">
          <?php echo $row2['descripcion']; ?>
        </option>
      <?php } ?>
    </select>
    <select class="controls" name="Tipo_Per" required>
      <option value="" disabled selected>Seleccione El tipo de persona que es</option>
      <?php
      // imprimo en una lista los clientes
      $tipo_persona = "SELECT * FROM tipo_persona";
      $resultado3 = pg_query($conexion, $tipo_persona);
      while ($row2 = pg_fetch_assoc($resultado3)) { ?>
        <option value="<?php echo $row2['idtipo_persona']; ?>">
          <?php echo $row2['descripcion']; ?>
        </option>
      <?php } ?>
    </select>
    <input class="botons" type="submit" value="Registrar">
  </section>
  </form>
</body>
</html>
