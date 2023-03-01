<?php require_once 'configs/conection.php' ?>


<article id="competencias">
    <div class="container_de_titular_con_circulos flex_al_centro primer_container_titular">
        <div class="circulito"></div>
        <h3><?= $content_sections[$current_language_short_name]['skills']; ?></h3>
        <div class="circulito"></div>
    </div>


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