<?php require_once 'configs/conection.php' ?>

<article id="rrss">
    <div class="container_de_titular_con_circulos flex_al_centro primer_container_titular">
        <div class="circulito"></div>
        <h3><?= $content_sections[$current_language_short_name]['social']; ?></h3>
        <div class="circulito"></div>
    </div>

    <div class="container_rrss container_columnas">
        <?php
        foreach($social_links as $link){
            ?>
        <a href="https://<?= $link['url_base'] . $link['usuario'] ?>" target="_blank" class="container_filas_desktop">
            <img src="./img/logos_rrss/<?= $link['icono'] ?>" alt="<?= $link['nombre'] ?>"
                title="<?= $link['nombre'] ?>">
            <p>
                <strong><?= $link['url_base']?></strong><?= $link['usuario'] ?>
            </p>
        </a>
        <?php
        }
    ?>
    </div>
</article>