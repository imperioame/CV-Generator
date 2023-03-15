<?php require_once 'configs/conection.php'
?>

<article id="detalles">
    <div class="container_de_titular_con_circulos flex_al_centro primer_container_titular">
        <div class="circulito"></div>
        <h3><?= $content_sections[$current_language_short_name]['details']; ?></h3>
        <div class="circulito"></div>
    </div>

    <?php
    if ($user_information['mostrar_domicilio'] == 1){
        ?>
        <p><?= $content_general[$current_language_short_name]['adress'] . ' ' . $user_information['domicilio']?></p>
        <?php   
    }
    if ($user_information['mostrar_barrio'] == 1 || $user_information['mostrar_provincia_estado'] == 1 || $user_information['mostrar_pais'] == 1){
        ?>
        <p>
            <?php
            if ($user_information['mostrar_barrio'] == 1){
                ?>
                <?= $user_information['barrio']?>, 
                <?php
            }
            if ($user_information['mostrar_provincia_estado'] == 1){
                ?>
                <?= $user_information['provincia_estado']?>, 
                <?php
            }
            if ($user_information['mostrar_pais'] == 1){
                ?>
                <?= $user_information['pais']?>
                <?php
            }
            ?>
         </p>
        <?php
    }
    if ($user_information['mostrar_codigo_postal'] == 1){
        ?>
        <p>CP: <?= $user_information['codigo_postal']?></p>
        <?php   
    }
    if ($user_information['mostrar_fecha_nacimiento'] == 1){
        $birth_date = convert_datetime_to_M_Y($user_information['fecha_nacimiento']);
        ?>
        <p><?= $content_general[$current_language_short_name]['birth'] . ' ' . $birth_date ?></p>
        <?php   
    }
    ?>
</article>