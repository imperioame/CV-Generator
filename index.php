<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="robots" content="index, follow" />


    <link rel="shortcut icon" href="img/icos/favicon.png" type="image/x-icon">

    <?php include_once './usr_data/imperioame/head_user_data.php' ?>

    <link rel="stylesheet" href="./css/general_styles.css">
    <?php
    // Here we have to include the css file corresponding to the template shown.
    // I'll hardcode the gray_standard
    ?>
    <link rel="stylesheet" href="./cv_templates/gray_standard/css/gray_standard_styles.css">
    <link rel="stylesheet" href="./cv_templates/gray_standard/css/gray_standard_mobile_styles.css">

    <!-- Íconografía de FLATICON
    
        Iconos diseñados por <a href="https://www.flaticon.es/autores/roundicons" title="Roundicons">Roundicons</a> from <a href="https://www.flaticon.es/" title="Flaticon"> www.flaticon.es</a>
        Icons made by <a href="https://www.flaticon.com/authors/roundicons" title="Roundicons">Roundicons</a> from <a href="https://www.flaticon.com/" title="Flaticon"> www.flaticon.com</a>
    -->
</head>

<body class="container_columnas">

    <?php
    // What template is included here depends on some parameter. This architecture is not yet defined
    include_once './cv_templates/gray_standard/template_gray_standard.php'
    ?>

    <script>
        <?php require_once './configs/language_selection.php' ?>
        document.documentElement.setAttribute("lang", '<?= $current_language_short_name ?>');
    </script>
    <script src="js/modal.js"></script>
</body>

</html>