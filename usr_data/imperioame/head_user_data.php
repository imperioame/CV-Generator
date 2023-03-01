<?php require_once './configs/user.php';
?>

<meta name=description
    content="Curriculum Vitae de <?= $user_data['nombres'] . ' ' . $user_data['apellidos'] ?>, <?= $user_data['titulo_destacado'] ?>, especializado gestión de proyectos digitales y audiovisuales, realización audiovisual y desarrollo web.">
<meta name=Keywords
    content="<?= $user_data['nombres'] . ' ' . $user_data['apellidos'] ?>, Curriculum Vitae, desarrollo web, diseño, multimedia, diseño multimedial, Desarrollador Web, diseñador, páginas web, crear páginas web, hacer video, realización audiovisual, digital, proyecto digital, lider técnico, web development, web developer, design, multimedia design, designer, web page, create a web page, webpage, create a webpage, website, web site, video realization, video, audiovisual realization, digital project, project manager, technical lead">

<meta name="author" content="<?= $user_data['nombres'] . ' ' . $user_data['apellidos'] ?> | <?= $user_data['web_personal']?>">
<meta name="copyright" content="<?= $user_data['nombres'] . ' ' . $user_data['apellidos'] ?> | <?= $user_data['web_personal']?>">

<title><?= $user_data['nombres'] . ' ' . $user_data['apellidos'] ?> | Curriculum Vitae</title>