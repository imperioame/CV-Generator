<?php
require_once './configs/functions.php';
require_once './configs/language_selection.php';

$relative_path_to_root = './';

require_once $relative_path_to_root . 'configs/conection.php';
require_once $relative_path_to_root . 'configs/user.php';

// This gets the data configuration of the template

$query = "SELECT * FROM diseno_cvs
INNER JOIN campos_cvs ON campos_cvs.idcampos_cvs = diseno_cvs.campos_cvs_idcampos_cvs
WHERE usuarios_idusuarios = $user_data[idusuarios]
AND nombre_diseno = 'gray_standard'
";

$result = mysqli_query($conection, $query);
$template_data_configuration = mysqli_fetch_assoc($result);