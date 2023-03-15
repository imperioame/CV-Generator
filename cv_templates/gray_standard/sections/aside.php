<section id="aside">
    <?php 
    // Double check of what to include in this template.
    $template_data_configuration['detalles_personales'] ? include 'cv_templates/gray_standard/data_blocks/details.php' : ''; 
    $template_data_configuration['educacion'] ? include 'cv_templates/gray_standard/data_blocks/education.php' : ''; 
    $template_data_configuration['cursos'] ? include 'cv_templates/gray_standard/data_blocks/courses.php' : ''; 
    $template_data_configuration['grafico_competencias'] ? include 'cv_templates/gray_standard/data_blocks/skills.php' : ''; 
    $template_data_configuration['softwares'] ? include 'cv_templates/gray_standard/data_blocks/softwares.php' : ''; 
    $template_data_configuration['lenguajes'] ? include 'cv_templates/gray_standard/data_blocks/languages.php' : ''; 
    $template_data_configuration['redes_sociales'] ? include 'cv_templates/gray_standard/data_blocks/social.php' : '';
    ?>
</section>