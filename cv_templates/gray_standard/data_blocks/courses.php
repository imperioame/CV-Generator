<?php require_once 'configs/conection.php' ?>

<article id="idioma_usuario">
    <div class="container_de_titular_con_circulos flex_al_centro primer_container_titular">
        <div class="circulito"></div>
        <h3><?= $content_sections[$current_language_short_name]['courses']; ?></h3>
        <div class="circulito"></div>
    </div>

    <?php 
    foreach($courses as $course){
    ?>
    <p>
        <strong>
            <?= $course['titulo']; ?>
        </strong>
        <br>
        <?= $course['institucion']; ?>
        <br>
            <?php 
            if(not_empty($course['fecha_completitud'])){
                ?>
            <small>
            <?php 
                echo convert_datetime_to_M_Y($course['fecha_completitud']);
            ?>
            </small>
                <?php        
            }
        ?>
    </p>
    <?php   
    }
    ?>

</article>