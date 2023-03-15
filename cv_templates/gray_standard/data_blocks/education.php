<?php require_once 'configs/conection.php'; ?>

<article id="educacion">
    <?php require_once './cv_templates/gray_standard/data_blocks/create_title_with_circles.php';
    create_title_with_circles($content_sections[$current_language_short_name]['education']);
    ?>


    <?php 
    foreach($education as $degree){
    ?>
    <p>
        <strong>
            <?php echo $degree['titulo']; ?>
        </strong>
        <br>
        <?php echo $degree['institucion']; ?>
        <br>
        <?php if(not_empty($degree['fecha_inicio']) || not_empty($degree['fecha_egreso'])){
             ?>
        <small>
            <?php 
            if (not_empty($degree['fecha_inicio'])){
                echo convert_datetime_to_M_Y($degree['fecha_inicio']);
                if (not_empty($degree['fecha_egreso'])){
                    echo ' - ';
                }
            }else{
                echo $content_general[$current_language_short_name]['graduated'] . ' ';
            }
            if(not_empty($degree['fecha_egreso'])){
                echo convert_datetime_to_M_Y($degree['fecha_egreso']);
            }
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