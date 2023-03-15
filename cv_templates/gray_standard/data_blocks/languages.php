<?php require_once 'configs/conection.php'; ?>

<article id="idioma_usuario">
    <?php require_once './cv_templates/gray_standard/data_blocks/create_title_with_circles.php';
        create_title_with_circles($content_sections[$current_language_short_name]['languages']);
    ?>


    <?php 
    foreach($user_languages as $language){
        ?>
    <div>
        <p>
            <?= $language['idioma'] ?>
        </p>
        <progress class="progress_bar" max="100"
            value="<?= $language['porcentaje'] ?>"><?= $language['porcentaje'] ?>%</progress>
    </div>
    <?php
    }
    ?>
</article>