<?php require_once 'conection.php';
require_once 'user.php';
require_once 'functions.php';

//this file defines a default language
$current_language_id;
$current_language_short_name;

if(isset($_GET['lang'])){
    //It is possible that the GET parameter has a language defined. If so, then it defines it's id.
    $query = "SELECT * FROM `lenguajes_del_cv` WHERE lenguaje_recortado = '$_GET[lang]'";
    $result = mysqli_query($conection, $query);
    $row = mysqli_fetch_assoc($result);

    $current_language_id = $row['idlenguajes_del_cv'];
    $current_language_short_name = $row['lenguaje_recortado'];
}else{
    //If there's no pre-defined language, then it checks what's the user's first language.
    $query = "SELECT * FROM `usuarios_has_lenguajes_del_cv`
    INNER JOIN lenguajes_del_cv ON lenguajes_del_cv.idlenguajes_del_cv = usuarios_has_lenguajes_del_cv.lenguajes_del_cv_idlenguajes_del_cv
    WHERE usuarios_idusuarios = $user_data[idusuarios]";
    $result = mysqli_query($conection, $query);
    $row = mysqli_fetch_assoc($result);

    $current_language_id = $row['lenguajes_del_cv_idlenguajes_del_cv'];
    $current_language_short_name = $row['lenguaje_recortado'];
}