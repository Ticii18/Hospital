<?php
session_start();
include('conexion.php');

if(isset($_POST['username']) && isset($_POST['password'])){
    $username = $_POST['username'];
    $password = $_POST['password'];
    
    $query = "SELECT * FROM usuarios WHERE usuario='$username' AND contraseña='$password'";
    $result = pg_query($conexion, $query);
    
    if($row = pg_fetch_assoc($result)){
        $_SESSION['idusuario'] = $row['idusuario'];
        $_SESSION['usuario'] = $username;
        $_SESSION['idcargo'] = $row['idcargo'];
        
        $idcargo = $row['idcargo'];
        switch ($idcargo) {
            case 1:
                header('Location: PantallaAdmin.html'); // Redirigir al administrador
                break;
            case 2:
                header('Location: PantallaEmpleados.html'); // Redirigir al usuario
                break;
            default:
                echo "Cargo no reconocido";
                break;
        }
    } else {
        echo "Credenciales incorrectas. Intenta de nuevo.";
    }
} else {
    echo "Por favor, proporciona un nombre de usuario y contraseña.";
}

pg_close($conn);
?>
