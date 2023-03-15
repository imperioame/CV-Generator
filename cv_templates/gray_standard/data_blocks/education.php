<?php require_once 'configs/conection.php' ?>

<article id="educacion">
    <div class="container_de_titular_con_circulos flex_al_centro primer_container_titular">
        <div class="circulito"></div>
        <h3><?= $content_sections[$current_language_short_name]['education']; ?></h3>
        <div class="circulito"></div>
    </div>

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