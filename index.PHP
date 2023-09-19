<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
    <style>
        input[type=submit] {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
    </style>
</head>
<body>
    <div class="formulario">
        <h1>Inicio de Sesion</h1>
        <form action="iniciosesion.php" method="post">
            <div class="username">
                <input type="text" name="username" required>
                <label>Nombre de Usuario</label>
            </div>
            <div class="username">
                <input type="password" name="password" required>
                <label>Contraseña</label>
            </div>
            <input type="submit" name="enviar_login" value="Iniciar">
        </form>
    </div>
</body>
</html>