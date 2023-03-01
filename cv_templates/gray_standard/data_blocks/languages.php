<?php require_once 'configs/conection.php' ?>

<article id="idioma_usuario">
    <div class="container_de_titular_con_circulos flex_al_centro primer_container_titular">
        <div class="circulito"></div>
        <h3><?= $content_sections[$current_language_short_name]['languages']; ?></h3>
        <div class="circulito"></div>
    </div>


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