<?php require_once 'configs/conection.php'; ?>


<article id="competencias">
    <?php require_once './cv_templates/gray_standard/data_blocks/create_title_with_circles.php';
        create_title_with_circles($content_sections[$current_language_short_name]['skills']);
    ?>



    <?php 
    foreach($skills as $skill){
        ?>
    <div>
        <p>
        <?= $skill['titulo'] ?>
        </p>
        <progress class="progress_bar" max="100" value="<?= $skill['porcentaje'] ?>"><?= $skill['porcentaje'] ?>%</progress>
    </div>
    <?php
    }
    ?>


</article>