<?php require_once 'configs/conection.php'; ?>

<div id="perfil">
    <div class="titular_separador_main">
        <img src="./img/icos/icons_Perfil.svg" alt="<?= $content_sections[$current_language_short_name]['profile']; ?>">
        <h3 class="main_color"><?= $content_sections[$current_language_short_name]['profile']; ?></h3>
    </div>
    <p class="border_left border_complementary_color">
    <?= $user_information['perfil_extracto'] ?>
    </p>
</div>