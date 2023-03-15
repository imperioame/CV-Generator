<?php require_once './configs/user.php';
?>

<meta name=description
    content="Curriculum Vitae de <?= $user_data['nombres'] . ' ' . $user_data['apellidos'] ?>, <?= $user_data['titulo_destacado'] ?>, especializado gestión de proyectos digitales y audiovisuales, realización audiovisual y desarrollo web.">
<meta name=Keywords
    content="<?= $user_data['nombres'] . ' ' . $user_data['apellidos'] ?>, Curriculum Vitae, desarrollo web, diseño, multimedia, diseño multimedial, Desarrollador Web, diseñador, páginas web, crear páginas web, hacer video, realización audiovisual, digital, proyecto digital, lider técnico, web development, web developer, design, multimedia design, designer, web page, create a web page, webpage, create a webpage, website, web site, video realization, video, audiovisual realization, digital project, project manager, technical lead">

<meta name="author"
    content="<?= $user_data['nombres'] . ' ' . $user_data['apellidos'] ?> | <?= $user_data['web_personal']?>">
<meta name="copyright"
    content="<?= $user_data['nombres'] . ' ' . $user_data['apellidos'] ?> | <?= $user_data['web_personal']?>">

<title><?= $user_data['nombres'] . ' ' . $user_data['apellidos'] ?> | Curriculum Vitae</title>


<meta property="og:title" content="<?= $user_data['nombres'] . ' ' . $user_data['apellidos'] ?> | Curriculum Vitae">
<meta property=og:type content="website">
<!-- <meta property="og:url" content="https://julianmmame.com.ar/"> -->
<meta property="og:url" content="https://cv.julianmmame.com.ar/">
<meta property="og:description"
    content="Curriculum Vitae de <?= $user_data['nombres'] . ' ' . $user_data['apellidos'] ?>, <?= $user_data['titulo_destacado'] ?>, especializado gestión de proyectos digitales y audiovisuales, realización audiovisual y desarrollo web.">
<meta property="og:image" itemprop="image" content="./usr_data/<?= $user_data['usuario'] ?>/img/ogimage.PNG">

<meta name="twitter:card" content="./usr_data/<?= $user_data['usuario'] ?>/img/ogimage.PNG">
<meta name="twitter:image" content="./usr_data/<?= $user_data['usuario'] ?>/img/ogimage.PNG">
<!-- <meta name="twitter:site" content="https://julianmmame.com.ar/"> -->
<meta name="twitter:site" content="https://cv.julianmmame.com.ar/">
<meta name="twitter:title" content="<?= $user_data['nombres'] . ' ' . $user_data['apellidos'] ?> | Curriculum Vitae">
<meta name="twitter:description"
    content="Curriculum Vitae de <?= $user_data['nombres'] . ' ' . $user_data['apellidos'] ?>, <?= $user_data['titulo_destacado'] ?>, especializado gestión de proyectos digitales y audiovisuales, realización audiovisual y desarrollo web.">