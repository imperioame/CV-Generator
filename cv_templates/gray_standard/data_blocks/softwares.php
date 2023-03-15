<?php require_once 'configs/conection.php'; ?>

<article id="softwares">
    <?php require_once './cv_templates/gray_standard/data_blocks/create_title_with_circles.php';
                create_title_with_circles($content_sections[$current_language_short_name]['software']);
            ?>


    <div id="container_software" class="container_columnas text-center">
        <?php
    $count = 0; 
    foreach($softwares as $software){
        if($count == 0){
            ?>
        <ul class="fila">
            <?php
        }        
        ?>
            <li>
                <img src="./img/logos_software/<?= $software['imagen'] ?>" alt="<?= $software['nombre'] ?>"
                    title="<?= $software['nombre'] ?>">
            </li>

            <?php
        if($count >= 3){
            $count = 0;
        }else{
            $count++;
        }

        if($count == 0){
            ?>
        </ul>
        <?php
        }
    }
    ?>
    </ul>
</article>