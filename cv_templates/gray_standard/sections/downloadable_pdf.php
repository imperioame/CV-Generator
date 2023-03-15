<?php require_once './cv_templates/gray_standard/data_queries.php';
?>


<section id="pdf" class="container_columnas flex_al_centro">
    <a href="./usr_data/<?= $user_information['usuario'] ?>/pdf/<?= $PDF['ruta'] ?>" target="_blank"
        title="<?= $content_general[$current_language_short_name]['download'] ?> PDF" id="download_pdf">
        <img src="./img/icos/pdf.svg" alt="<?= $content_general[$current_language_short_name]['download'] ?> PDF" title="<?= $content_general[$current_language_short_name]['download'] ?> PDF">
        <p>
        <?= $content_general[$current_language_short_name]['download'] ?> <br> PDF
        </p>
    </a>


</section>