<?php require_once 'configs/conection.php'; ?>

<div id="actividades">
    <div class="titular_separador_main">
        <img src="img/icos/icons_Otras_actividades.svg" alt="<?= $content_sections[$current_language_short_name]['other_activities']; ?>">
        <h3 class="main_color"><?= $content_sections[$current_language_short_name]['other_activities']; ?></h3>
    </div>
    <div class="border_left border_complementary_color">
    <?php 
        foreach($other_activities as $activity){
        ?>
        <div>
            <div class="bullet"><div class="circulito border_complementary_color"></div></div>
            <h4><strong><?= $activity['titulo_puesto']?></strong>
                <?php
                if(not_empty($activity['empresa_organizacion'])){
                    echo $activity['empresa_organizacion'];
                }
                 ?>
            </h4>
            <?php
            if (not_empty($activity['area_subarea'])){
                ?>
            <small><?= $activity['area_subarea']?></small>
            <br>
            <?php
            }

            if(not_empty($activity['fecha_desde']) || not_empty($activity['fecha_hasta'])){
             ?>
            <small>
                <?php 
            if (not_empty($activity['fecha_desde'])){
                echo convert_datetime_to_M_Y($activity['fecha_desde']);
                echo ' - ';
            }else{
                echo $content_general[$current_language_short_name]['ended_in'] . " ";
            }
            if(not_empty($activity['fecha_hasta'])){
                echo convert_datetime_to_M_Y($activity['fecha_hasta']);
            }else{
                echo $content_general[$current_language_short_name]['present'] . " ";
            }
            ?>
            </small>
            <?php
            }
            ?>
            <p class="links">
                <?= $activity['descripcion'] ?>
            </p>
        </div>
        <?php
        }
        ?>
    </div>
</div>