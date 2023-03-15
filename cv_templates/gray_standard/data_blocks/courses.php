<?php require_once 'configs/conection.php'; ?>

<article id="idioma_usuario">
    <?php require_once './cv_templates/gray_standard/data_blocks/create_title_with_circles.php';
    create_title_with_circles($content_sections[$current_language_short_name]['courses']);
    ?>


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