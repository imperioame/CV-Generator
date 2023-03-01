<?php require_once 'configs/conection.php' ?>

<article id="softwares">

    <div class="container_de_titular_con_circulos flex_al_centro primer_container_titular">
        <div class="circulito"></div>
        <h3><?= $content_sections[$current_language_short_name]['software']; ?></h3>
        <div class="circulito"></div>
    </div>

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