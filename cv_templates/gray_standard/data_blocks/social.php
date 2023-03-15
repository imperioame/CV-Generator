<?php require_once 'configs/conection.php'; ?>

<article id="rrss">
    <?php require_once './cv_templates/gray_standard/data_blocks/create_title_with_circles.php';
            create_title_with_circles($content_sections[$current_language_short_name]['social']);
        ?>


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