<?php include_once 'template_configs.php';
require_once 'content_translations.php';
?>

<div id="background">
</div>

<div id="main_container">
    <!-- HEADER y Extracto personal -->
    <?php include 'sections/header.php'; ?>
    <div id="main_data" class="container_filas_desktop">
        <!-- SIDE CON INFO -->
        <?php include 'sections/aside.php'; ?>
        <!-- MAIN: INFO PRINCIPAL -->
        <?php include 'sections/main.php'; ?>
    </div>

    <?php include 'sections/downloadable_pdf.php'; ?>

</div>

<footer id="ultima_actualizacion" class="container_columnas text-center">
    <small><?= $content_general[$current_language_short_name]['last_update'] ?>: <strong>Mar. 2023</strong></small>
</footer>
