<?php 
function create_title_with_circles($title){
    echo '<div class="container_de_titular_con_circulos flex_al_centro primer_container_titular">';
    echo '<div class="circulito border_complementary_color"></div>';
    echo '<h3 class="main_darker_color">' . $title . '</h3>';
    echo '<div class="circulito border_complementary_color"></div>';
    echo '</div>';
}