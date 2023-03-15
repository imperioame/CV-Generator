<?php require_once 'configs/conection.php' ?>

<div id="experiencia_laboral">
    <div class="titular_separador_main">
        <img src="./img/icos/icons_Experiencia_laboral.svg" alt="<?= $content_sections[$current_language_short_name]['work_experience']; ?>">
        <h3 class="main_color"><?= $content_sections[$current_language_short_name]['work_experience']; ?></h3>
    </div>
    <div class="border_left border_complementary_color">
        <?php 
        foreach($work_experience as $job){
        ?>
        <div>
            <div class="bullet"><div class="circulito border_complementary_color"></div></div>
            <h4><strong><?= $job['titulo_puesto']?></strong>
                - <?= $job['empresa_organizacion']?>
            </h4>
            <?php
            if (not_empty($job['area_subarea'])){
                ?>
            <small><?= $job['area_subarea']?></small>
            <br>
            <?php
            }

            if(not_empty($job['fecha_desde']) || not_empty($job['fecha_hasta'])){
             ?>
            <small>
                <?php 
            if (not_empty($job['fecha_desde'])){
                echo convert_datetime_to_M_Y($job['fecha_desde']);
                echo ' - ';
            }else{
                echo $content_general[$current_language_short_name]['ended_in'] . ' ';
            }
            if(not_empty($job['fecha_hasta'])){
                echo convert_datetime_to_M_Y($job['fecha_hasta']);
            }else{
                echo $content_general[$current_language_short_name]['present'];
            }
            ?>
            </small>
            <?php
            }
            ?>
            <p class="links">
                <?= $job['descripcion'] ?>
            </p>
        </div>
        <?php
        }
        ?>

    </div>
</div>