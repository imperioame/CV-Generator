<main class="container_columnas">
    <?php
    $template_data_configuration['perfil'] && $user_information['mostrar_perfil_extracto'] ? include 'cv_templates/gray_standard/data_blocks/profile.php' : '';
    $template_data_configuration['experiencia_laboral'] ? include 'cv_templates/gray_standard/data_blocks/work_experience.php' : '';
    $template_data_configuration['otras_actividades'] ? include 'cv_templates/gray_standard/data_blocks/other_activities.php' : '';
    ?>
</main>