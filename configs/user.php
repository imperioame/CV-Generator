<?php require_once 'conection.php';

$query = "SELECT * FROM usuarios
INNER JOIN datos_personales ON datos_personales.usuarios_idusuarios = usuarios.idusuarios
WHERE idusuarios = 1
";


$result = mysqli_query($conection, $query);
$user_data = mysqli_fetch_assoc($result);