<?php  ?>

<div id="contenedor_perfil_ampliado">
    <div id="img_perfil_ampliada">
        <img src="<?=$relative_path_to_root . 'usr_data/' . $user_information['usuario'] . '/img/' . $user_information['foto_perfil'] ?>"
            alt="Foto perfil de <?= $user_information['nombres'] . ' ' . $user_information['apellidos'] ?>">
        <div id="boton_cerrar"><a><img src="img/icos/cerrar.svg" alt="Cerrar" title="Cerrar"></a>
        </div>
    </div>
</div>