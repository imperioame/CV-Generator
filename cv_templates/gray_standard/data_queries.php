<?php require_once 'configs/conection.php';
require_once 'configs/user.php';
require_once 'template_configs.php';


//User information
$query = "SELECT * FROM usuarios
INNER JOIN datos_personales ON datos_personales.usuarios_idusuarios = '$user_data[idusuarios]'
INNER JOIN detalles_usuario_en_Cv ON detalles_usuario_en_Cv.usuarios_idusuarios = '$user_data[idusuarios]'
WHERE idusuarios = '$user_data[idusuarios]'
AND datos_personales.lenguajes_del_cv_idlenguajes_del_cv = '$current_language_id'
";
$result = mysqli_query($conection, $query);
$user_information = mysqli_fetch_assoc($result);

//Languages available for this CV
$query = "SELECT * FROM usuarios_has_lenguajes_del_cv
INNER JOIN lenguajes_del_cv ON lenguajes_del_cv.idlenguajes_del_cv = usuarios_has_lenguajes_del_cv.lenguajes_del_cv_idlenguajes_del_cv
WHERE usuarios_has_lenguajes_del_cv.usuarios_idusuarios = '$user_data[idusuarios]'
";
$result = mysqli_query($conection, $query);
$languages = save_query_to_array($result);


if ($template_data_configuration['educacion']){
//Education information for the user
$query = "SELECT * FROM educacion
WHERE usuarios_idusuarios = '$user_data[idusuarios]'
AND lenguajes_del_cv_idlenguajes_del_cv = '$current_language_id'
";
$result = mysqli_query($conection, $query);
$education = save_query_to_array($result);
}

if ($template_data_configuration['cursos']){
//Courses information for the user
$query = "SELECT * FROM cursos
WHERE usuarios_idusuarios = '$user_data[idusuarios]'
AND lenguajes_del_cv_idlenguajes_del_cv = '$current_language_id'
";
$result = mysqli_query($conection, $query);
$courses = save_query_to_array($result);
$courses = sort_results_by_key($courses, 'prioridad', SORT_ASC);
}

if ($template_data_configuration['grafico_competencias']){
//Skill information for the user
$query = "SELECT * FROM competencias
WHERE usuarios_idusuarios = '$user_data[idusuarios]'
AND lenguajes_del_cv_idlenguajes_del_cv = '$current_language_id'
";
$result = mysqli_query($conection, $query);
$skills = save_query_to_array($result);
$skills = sort_results_by_key($skills, 'porcentaje', SORT_DESC);
}

if ($template_data_configuration['softwares']){
//Software information for the user
$query = "SELECT * FROM softwares_usuario
INNER JOIN softwares_sistema ON softwares_usuario.softwares_sistema_idsoftwares_sistema = softwares_sistema.idsoftwares_sistema
WHERE usuarios_idusuarios = '$user_data[idusuarios]'
";
$result = mysqli_query($conection, $query);
$softwares = save_query_to_array($result);
$softwares = sort_results_by_key($softwares, 'posicion', SORT_ASC);
}

if ($template_data_configuration['lenguajes']){
//Language information for the user
$query = "SELECT * FROM idiomas_usuario
WHERE usuarios_idusuarios = '$user_data[idusuarios]'
AND lenguajes_del_cv_idlenguajes_del_cv = '$current_language_id'
";
$result = mysqli_query($conection, $query);
$user_languages = save_query_to_array($result);
$user_languages = sort_results_by_key($user_languages, 'porcentaje', SORT_DESC);
}

if ($template_data_configuration['redes_sociales']){
//Social links information for the user
$query = "SELECT * FROM redes_sociales_usuario
INNER JOIN redes_sociales_sistema ON redes_sociales_usuario.redes_sociales_sistema_idredes_sociales_sistema = redes_sociales_sistema.idredes_sociales_sistema
WHERE usuarios_idusuarios = '$user_data[idusuarios]'
";
$result = mysqli_query($conection, $query);
$social_links = save_query_to_array($result);
$social_links = sort_results_by_key($social_links, 'prioridad', SORT_ASC);
}


if ($template_data_configuration['experiencia_laboral']){
    //Work experience information for the user
    $query = "SELECT * FROM trabajos
    WHERE usuarios_idusuarios = '$user_data[idusuarios]'
    AND lenguajes_del_cv_idlenguajes_del_cv = '$current_language_id'
    ";
    $result = mysqli_query($conection, $query);
    $work_experience = save_query_to_array($result);
}

if ($template_data_configuration['otras_actividades']){
    //Other activities information for the user
    $query = "SELECT * FROM otras_actividades
    WHERE usuarios_idusuarios = '$user_data[idusuarios]'
    AND lenguajes_del_cv_idlenguajes_del_cv = '$current_language_id'
    ";
    $result = mysqli_query($conection, $query);
    $other_activities = save_query_to_array($result);
}


//Downloadeable PDF information for the user
$query = "SELECT * FROM cv_descargable
WHERE usuarios_idusuarios = '$user_data[idusuarios]'
AND lenguajes_del_cv_idlenguajes_del_cv = '$current_language_id'
AND diseno_cvs_iddisenocv = '$template_data_configuration[iddisenocv]'
";
$result = mysqli_query($conection, $query);
$PDF = mysqli_fetch_assoc($result);
