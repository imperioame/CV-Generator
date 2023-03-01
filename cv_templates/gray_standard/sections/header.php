<?php require_once './cv_templates/gray_standard/data_queries.php';
?>

<header class="container_filas_desktop mb-2">
    <div id="foto_perfil">
        <img src="<?=$relative_path_to_root . 'usr_data/' . $user_information['usuario'] . '/img/' . $user_information['foto_perfil'] ?>"
            alt="<?= $content_general[$current_language_short_name]['profile_picture'] . " " . $user_information['nombres'] . ' ' . $user_information['apellidos']?>"
            title="<?=  $content_general[$current_language_short_name]['profile_picture'] . " " . $user_information['nombres'] . ' ' . $user_information['apellidos']?>">
        <br>
    </div>
    <div id="info_principal_header">
        <h1><?=$user_information['nombres'] . ' ' . $user_information['apellidos']?></h1>
        <h2><?=$user_information['titulo_destacado']?>
            <br>
            <?=$user_information['profesion_destacada']?>
        </h2>
        <?php
            if($user_information['mostrar_correo'] || $user_information['mostrar_telefono']){
                echo '<ul>';
                if($user_information['mostrar_correo']){
                    echo '<li><a href="mailto:' . $user_information['correo'] . '">' . $user_information['correo'] . '</a></li>';
                }
                if($user_information['mostrar_telefono']){
                    echo '<li><a href="tel:' . $user_information['telefono'] . '">' . $user_information['telefono'] . '</a></li>';
                }
                echo '</ul>';
            }?>
        </ul>
    </div>
    <div id="idioma_cv" class="container_filas_desktop text-center">
        <?php
            foreach($languages as $language){
                $button = '<a';
                if($language['idlenguajes_del_cv'] == $current_language_id){
                    $button .= ">";
                }else{
                    $button .= " href=?lang=" . $language['lenguaje_recortado'] . ">";
                }
                $button .= "<img src='". $relative_path_to_root . "img/icos/languages/" . $language['icono'] ."' alt='" . $content_general[$current_language_short_name]['language'] . " " . $language['lenguaje_completo'] . "' title='" . $content_general[$current_language_short_name]['language'] . " " . $language['lenguaje_completo'] . "'></img>";
                $button .= '<br>';
                $button .= $language['lenguaje_completo'];
                $button .= '</a>';
                
                echo $button;
            }
    ?>
    </div>
</header>