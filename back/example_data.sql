
-- -----------------------------------------------------
-- Data for table `cvs`.`usuarios`
-- -----------------------------------------------------
START TRANSACTION;
USE `cvs`;
INSERT INTO `cvs`.`usuarios` (`usuario`, `contrasena`, `correo`, `nombres`, `apellidos`) VALUES ('imperioame', DEFAULT, 'hola@julianmmame.com.ar', 'Julián Mario Martín', 'Amé');

COMMIT;


-- -----------------------------------------------------
-- Data for table `cvs`.`lenguajes_del_cv`
-- -----------------------------------------------------
START TRANSACTION;
USE `cvs`;
INSERT INTO `cvs`.`lenguajes_del_cv` (`lenguaje_completo`, `lenguaje_recortado`, `icono`) VALUES ('Español', 'es', 'ico-espanol.png');
INSERT INTO `cvs`.`lenguajes_del_cv` (`lenguaje_completo`, `lenguaje_recortado`, `icono`) VALUES ('English', 'en', 'ico-ingles.png');

COMMIT;


-- -----------------------------------------------------
-- Data for table `cvs`.`datos_personales`
-- -----------------------------------------------------
START TRANSACTION;
USE `cvs`;
INSERT INTO `cvs`.`datos_personales` (`telefono`, `domicilio`, `pais`, `provincia_estado`, `barrio`, `codigo_postal`, `fecha_nacimiento`, `foto_perfil`, `titulo_destacado`, `profesion_destacada`, `perfil_extracto`, `web_personal`, `lenguajes_del_cv_idlenguajes_del_cv`, `usuarios_idusuarios`) VALUES (NULL, 'Siempreviva 123', 'Argentina', 'CABA', 'Palermo', '1425', '1810-05-05', 'perfil_julian.jpg', 'Lic. Comunicación Digital <br> Diseñador Multimedial', 'QA Lead', 'Lorem ipsum', 'julianmmame.com.ar', 1, 1);
INSERT INTO `cvs`.`datos_personales` (`telefono`, `domicilio`, `pais`, `provincia_estado`, `barrio`, `codigo_postal`, `fecha_nacimiento`, `foto_perfil`, `titulo_destacado`, `profesion_destacada`, `perfil_extracto`, `web_personal`, `lenguajes_del_cv_idlenguajes_del_cv`, `usuarios_idusuarios`) VALUES (NULL, 'Siempreviva 123', 'Argentina', 'CABA', 'Palermo', '1425', '1810-05-05', 'perfil_julian.jpg', 'Degree in Digital Communication<br>Multimedia Designer', 'QA Lead', 'Lorem ipsum', 'julianmmame.com.ar', 2, 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `cvs`.`campos_cvs`
-- -----------------------------------------------------
START TRANSACTION;
USE `cvs`;
INSERT INTO `cvs`.`campos_cvs` (`perfil`, `experiencia_laboral`, `otras_actividades`, `detalles_personales`, `educacion`, `cursos`, `grafico_competencias`, `softwares`, `redes_sociales`, `lenguajes`) VALUES (1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `cvs`.`diseno_cvs`
-- -----------------------------------------------------
START TRANSACTION;
USE `cvs`;
INSERT INTO `cvs`.`diseno_cvs` (`usuarios_idusuarios`, `campos_cvs_idcampos_cvs`, `nombre_diseno`) VALUES (1, 1, 'gray_standard');

COMMIT;


-- -----------------------------------------------------
-- Data for table `cvs`.`trabajos`
-- -----------------------------------------------------
START TRANSACTION;
USE `cvs`;
INSERT INTO `cvs`.`trabajos` (`usuarios_idusuarios`, `titulo_puesto`, `empresa_organizacion`, `area_subarea`, `fecha_desde`, `fecha_hasta`, `descripcion`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES (1, 'QA Lead', 'Ministerio de Economía de la Nación', 'Dirección General de Tecnologías de la Información y las Comunicaciones', '2020-06-01', NULL, 'lorem ipsum', 1);
INSERT INTO `cvs`.`trabajos` (`usuarios_idusuarios`, `titulo_puesto`, `empresa_organizacion`, `area_subarea`, `fecha_desde`, `fecha_hasta`, `descripcion`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES (1, 'Asesor en Comunicaciones digitales e Informática ', 'Antrieb Sudamericana S.A', NULL, '2020-02-01', NULL, 'lorem ipsum', 1);
INSERT INTO `cvs`.`trabajos` (`usuarios_idusuarios`, `titulo_puesto`, `empresa_organizacion`, `area_subarea`, `fecha_desde`, `fecha_hasta`, `descripcion`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES (1, 'QA Lead', 'Ministry of Economy of the Nation (Arg)', 'General Directorate of Information and Communication Technologies', '2020-06-01', NULL, 'lorem ipsum', 2);
INSERT INTO `cvs`.`trabajos` (`usuarios_idusuarios`, `titulo_puesto`, `empresa_organizacion`, `area_subarea`, `fecha_desde`, `fecha_hasta`, `descripcion`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES (1, 'Digital Communications and IT Consultant', 'Antrieb Sudamericana S.A', NULL, '2020-02-01', NULL, 'lorem ipsum', 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `cvs`.`otras_actividades`
-- -----------------------------------------------------
START TRANSACTION;
USE `cvs`;
INSERT INTO `cvs`.`otras_actividades` (`usuarios_idusuarios`, `titulo_puesto`, `empresa_organizacion`, `area_subarea`, `fecha_desde`, `fecha_hasta`, `descripcion`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES (1, 'Fotógrafo', 'hobbista', '', NULL, NULL, 'Lorem ipsum', 1);
INSERT INTO `cvs`.`otras_actividades` (`usuarios_idusuarios`, `titulo_puesto`, `empresa_organizacion`, `area_subarea`, `fecha_desde`, `fecha_hasta`, `descripcion`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES (1, 'Colaborador tecnológico', 'en Otto Krause International Foundation', NULL, '2022-05-01', NULL, 'Lorem ipsum', 1);
INSERT INTO `cvs`.`otras_actividades` (`usuarios_idusuarios`, `titulo_puesto`, `empresa_organizacion`, `area_subarea`, `fecha_desde`, `fecha_hasta`, `descripcion`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES (1, 'Hobbyist Photographer', '', NULL, NULL, NULL, 'Lorem ipsum', 2);
INSERT INTO `cvs`.`otras_actividades` (`usuarios_idusuarios`, `titulo_puesto`, `empresa_organizacion`, `area_subarea`, `fecha_desde`, `fecha_hasta`, `descripcion`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES (1, 'IT collaborator', ' in Otto Krause International Foundation', NULL, '2022-05-01', NULL, 'Lorem ipsum', 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `cvs`.`detalles_usuario_en_Cv`
-- -----------------------------------------------------
START TRANSACTION;
USE `cvs`;
INSERT INTO `cvs`.`detalles_usuario_en_Cv` (`usuarios_idusuarios`, `mostrar_telefono`, `mostrar_correo`, `mostrar_domicilio`, `mostrar_pais`, `mostrar_provincia_estado`, `mostrar_barrio`, `mostrar_codigo_postal`, `mostrar_fecha_nacimiento`, `mostrar_titulo_destacado`, `mostrar_profesion_destacada`, `mostrar_perfil_extracto`) VALUES (1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `cvs`.`educacion`
-- -----------------------------------------------------
START TRANSACTION;
USE `cvs`;
INSERT INTO `cvs`.`educacion` (`usuarios_idusuarios`, `titulo`, `institucion`, `fecha_inicio`, `fecha_egreso`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES (1, 'Lic. Comunicación Digital e Interactiva', 'Universidad Católica Argentina', NULL, '2021-12-01', 1);
INSERT INTO `cvs`.`educacion` (`usuarios_idusuarios`, `titulo`, `institucion`, `fecha_inicio`, `fecha_egreso`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES (1, 'Técnico Superior en Diseño Multimedial', 'Escuela Da Vinci', NULL, '2020-12-01', 1);
INSERT INTO `cvs`.`educacion` (`usuarios_idusuarios`, `titulo`, `institucion`, `fecha_inicio`, `fecha_egreso`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES (1, 'Digital and Interactive Communication', 'Universidad Católica Argentina', NULL, '2021-12-01', 2);
INSERT INTO `cvs`.`educacion` (`usuarios_idusuarios`, `titulo`, `institucion`, `fecha_inicio`, `fecha_egreso`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES (1, 'Multimedia Design', 'Escuela Da Vinci', NULL, '2020-12-01', 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `cvs`.`cursos`
-- -----------------------------------------------------
START TRANSACTION;
USE `cvs`;
INSERT INTO `cvs`.`cursos` (`titulo`, `institucion`, `fecha_completitud`, `usuarios_idusuarios`, `lenguajes_del_cv_idlenguajes_del_cv`, `prioridad`) VALUES ('Professional Testing Master', 'UTN FRBA', '2022-09-01', 1, 1, 1);
INSERT INTO `cvs`.`cursos` (`titulo`, `institucion`, `fecha_completitud`, `usuarios_idusuarios`, `lenguajes_del_cv_idlenguajes_del_cv`, `prioridad`) VALUES ('Diseño UX/UI', 'Coderhouse', '2020-11-01', 1, 1, 1);
INSERT INTO `cvs`.`cursos` (`titulo`, `institucion`, `fecha_completitud`, `usuarios_idusuarios`, `lenguajes_del_cv_idlenguajes_del_cv`, `prioridad`) VALUES ('Gestión de Proyectos con metodologías ágiles', 'Fundación Telefónica', '2021-03-01', 1, 1, 2);
INSERT INTO `cvs`.`cursos` (`titulo`, `institucion`, `fecha_completitud`, `usuarios_idusuarios`, `lenguajes_del_cv_idlenguajes_del_cv`, `prioridad`) VALUES ('Professional Testing Master', 'UTN FRBA', '2022-09-01', 1, 2, 1);
INSERT INTO `cvs`.`cursos` (`titulo`, `institucion`, `fecha_completitud`, `usuarios_idusuarios`, `lenguajes_del_cv_idlenguajes_del_cv`, `prioridad`) VALUES ('UX/UI Design', 'Coderhouse', '2020-11-01', 1, 2, 1);
INSERT INTO `cvs`.`cursos` (`titulo`, `institucion`, `fecha_completitud`, `usuarios_idusuarios`, `lenguajes_del_cv_idlenguajes_del_cv`, `prioridad`) VALUES ('Project management with agile methodologies', 'Fundación Telefónica', '2021-03-01', 1, 2, 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `cvs`.`competencias`
-- -----------------------------------------------------
START TRANSACTION;
USE `cvs`;
INSERT INTO `cvs`.`competencias` (`titulo`, `porcentaje`, `usuarios_idusuarios`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES ('Gestión de proyectos', 90, 1, 1);
INSERT INTO `cvs`.`competencias` (`titulo`, `porcentaje`, `usuarios_idusuarios`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES ('Quality Assurance', 90, 1, 1);
INSERT INTO `cvs`.`competencias` (`titulo`, `porcentaje`, `usuarios_idusuarios`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES ('Modelado y animación 3D', 90, 1, 1);
INSERT INTO `cvs`.`competencias` (`titulo`, `porcentaje`, `usuarios_idusuarios`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES ('Desarrollo web', 80, 1, 1);
INSERT INTO `cvs`.`competencias` (`titulo`, `porcentaje`, `usuarios_idusuarios`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES ('Motion graphics', 70, 1, 1);
INSERT INTO `cvs`.`competencias` (`titulo`, `porcentaje`, `usuarios_idusuarios`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES ('Diseño gráfico', 70, 1, 1);
INSERT INTO `cvs`.`competencias` (`titulo`, `porcentaje`, `usuarios_idusuarios`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES ('Project Management', 90, 1, 2);
INSERT INTO `cvs`.`competencias` (`titulo`, `porcentaje`, `usuarios_idusuarios`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES ('Quality Assurance', 90, 1, 2);
INSERT INTO `cvs`.`competencias` (`titulo`, `porcentaje`, `usuarios_idusuarios`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES ('3D Modeling and Animation', 90, 1, 2);
INSERT INTO `cvs`.`competencias` (`titulo`, `porcentaje`, `usuarios_idusuarios`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES ('Web Development', 80, 1, 2);
INSERT INTO `cvs`.`competencias` (`titulo`, `porcentaje`, `usuarios_idusuarios`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES ('Motion Graphics', 70, 1, 2);
INSERT INTO `cvs`.`competencias` (`titulo`, `porcentaje`, `usuarios_idusuarios`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES ('Graphic Design', 70, 1, 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `cvs`.`softwares_sistema`
-- -----------------------------------------------------
START TRANSACTION;
USE `cvs`;
INSERT INTO `cvs`.`softwares_sistema` (`nombre`, `imagen`) VALUES ('Photoshop', 'logos_Photoshop.png');
INSERT INTO `cvs`.`softwares_sistema` (`nombre`, `imagen`) VALUES ('Illustrator', 'logos_Illustrator.png');
INSERT INTO `cvs`.`softwares_sistema` (`nombre`, `imagen`) VALUES ('After Effects', 'logos_After_Effects.png');
INSERT INTO `cvs`.`softwares_sistema` (`nombre`, `imagen`) VALUES ('Premiere Pro', 'logos_Premiere_Pro.png');
INSERT INTO `cvs`.`softwares_sistema` (`nombre`, `imagen`) VALUES ('Audition', 'logos_Audition.png');
INSERT INTO `cvs`.`softwares_sistema` (`nombre`, `imagen`) VALUES ('Unreal Engine', 'logos_Unreal_Engine.png');
INSERT INTO `cvs`.`softwares_sistema` (`nombre`, `imagen`) VALUES ('Blender', 'logos_Blender.png');
INSERT INTO `cvs`.`softwares_sistema` (`nombre`, `imagen`) VALUES ('Unity', 'logos_Unity.png');
INSERT INTO `cvs`.`softwares_sistema` (`nombre`, `imagen`) VALUES ('Davinci Resolve', 'logos_Davinci_resolve.png');
INSERT INTO `cvs`.`softwares_sistema` (`nombre`, `imagen`) VALUES ('Substance Painter', 'logos_Substance_Painter.png');
INSERT INTO `cvs`.`softwares_sistema` (`nombre`, `imagen`) VALUES ('Cinema 4D', 'logos_Cinema_4d.png');
INSERT INTO `cvs`.`softwares_sistema` (`nombre`, `imagen`) VALUES ('3DS Max', 'logos_3ds_max.png');
INSERT INTO `cvs`.`softwares_sistema` (`nombre`, `imagen`) VALUES ('Real Flow', 'logos_Real_Flow.png');

COMMIT;


-- -----------------------------------------------------
-- Data for table `cvs`.`softwares_usuario`
-- -----------------------------------------------------
START TRANSACTION;
USE `cvs`;
INSERT INTO `cvs`.`softwares_usuario` (`usuarios_idusuarios`, `posicion`, `softwares_sistema_idsoftwares_sistema`) VALUES (1, 1, 1);
INSERT INTO `cvs`.`softwares_usuario` (`usuarios_idusuarios`, `posicion`, `softwares_sistema_idsoftwares_sistema`) VALUES (1, 2, 2);
INSERT INTO `cvs`.`softwares_usuario` (`usuarios_idusuarios`, `posicion`, `softwares_sistema_idsoftwares_sistema`) VALUES (1, 3, 3);
INSERT INTO `cvs`.`softwares_usuario` (`usuarios_idusuarios`, `posicion`, `softwares_sistema_idsoftwares_sistema`) VALUES (1, 4, 4);
INSERT INTO `cvs`.`softwares_usuario` (`usuarios_idusuarios`, `posicion`, `softwares_sistema_idsoftwares_sistema`) VALUES (1, 5, 5);
INSERT INTO `cvs`.`softwares_usuario` (`usuarios_idusuarios`, `posicion`, `softwares_sistema_idsoftwares_sistema`) VALUES (1, 6, 6);
INSERT INTO `cvs`.`softwares_usuario` (`usuarios_idusuarios`, `posicion`, `softwares_sistema_idsoftwares_sistema`) VALUES (1, 7, 7);
INSERT INTO `cvs`.`softwares_usuario` (`usuarios_idusuarios`, `posicion`, `softwares_sistema_idsoftwares_sistema`) VALUES (1, 8, 8);
INSERT INTO `cvs`.`softwares_usuario` (`usuarios_idusuarios`, `posicion`, `softwares_sistema_idsoftwares_sistema`) VALUES (1, 9, 9);
INSERT INTO `cvs`.`softwares_usuario` (`usuarios_idusuarios`, `posicion`, `softwares_sistema_idsoftwares_sistema`) VALUES (1, 10, 10);
INSERT INTO `cvs`.`softwares_usuario` (`usuarios_idusuarios`, `posicion`, `softwares_sistema_idsoftwares_sistema`) VALUES (1, 11, 11);

COMMIT;


-- -----------------------------------------------------
-- Data for table `cvs`.`idiomas_usuario`
-- -----------------------------------------------------
START TRANSACTION;
USE `cvs`;
INSERT INTO `cvs`.`idiomas_usuario` (`idioma`, `porcentaje`, `usuarios_idusuarios`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES ('Inglés', 90, 1, 1);
INSERT INTO `cvs`.`idiomas_usuario` (`idioma`, `porcentaje`, `usuarios_idusuarios`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES ('Portugués', 25, 1, 1);
INSERT INTO `cvs`.`idiomas_usuario` (`idioma`, `porcentaje`, `usuarios_idusuarios`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES ('Spanish', 100, 1, 2);
INSERT INTO `cvs`.`idiomas_usuario` (`idioma`, `porcentaje`, `usuarios_idusuarios`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES ('Portuguese', 25, 1, 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `cvs`.`redes_sociales_sistema`
-- -----------------------------------------------------
START TRANSACTION;
USE `cvs`;
INSERT INTO `cvs`.`redes_sociales_sistema` (`nombre`, `url_base`, `icono`) VALUES ('Instagram', 'instagram.com/', 'logos_Instagram.png');
INSERT INTO `cvs`.`redes_sociales_sistema` (`nombre`, `url_base`, `icono`) VALUES ('Flickr', 'flickr.com/photos/', 'logos_Flickr.png');
INSERT INTO `cvs`.`redes_sociales_sistema` (`nombre`, `url_base`, `icono`) VALUES ('Behance', 'behance.net/', 'logos_Behance.png');
INSERT INTO `cvs`.`redes_sociales_sistema` (`nombre`, `url_base`, `icono`) VALUES ('LinkedIn', 'linkedin.com/in/', 'logos_Linkedin.png');
INSERT INTO `cvs`.`redes_sociales_sistema` (`nombre`, `url_base`, `icono`) VALUES ('GitHub', 'github.com/', 'logos_Github.png');

COMMIT;


-- -----------------------------------------------------
-- Data for table `cvs`.`redes_sociales_usuario`
-- -----------------------------------------------------
START TRANSACTION;
USE `cvs`;
INSERT INTO `cvs`.`redes_sociales_usuario` (`usuario`, `usuarios_idusuarios`, `redes_sociales_sistema_idredes_sociales_sistema`, `prioridad`) VALUES ('imperioame', 1, 1, 3);
INSERT INTO `cvs`.`redes_sociales_usuario` (`usuario`, `usuarios_idusuarios`, `redes_sociales_sistema_idredes_sociales_sistema`, `prioridad`) VALUES ('imperioame', 1, 2, 5);
INSERT INTO `cvs`.`redes_sociales_usuario` (`usuario`, `usuarios_idusuarios`, `redes_sociales_sistema_idredes_sociales_sistema`, `prioridad`) VALUES ('imperioame', 1, 3, 1);
INSERT INTO `cvs`.`redes_sociales_usuario` (`usuario`, `usuarios_idusuarios`, `redes_sociales_sistema_idredes_sociales_sistema`, `prioridad`) VALUES ('julian-ame', 1, 4, 2);
INSERT INTO `cvs`.`redes_sociales_usuario` (`usuario`, `usuarios_idusuarios`, `redes_sociales_sistema_idredes_sociales_sistema`, `prioridad`) VALUES ('imperioame', 1, 5, 4);

COMMIT;


-- -----------------------------------------------------
-- Data for table `cvs`.`cv_descargable`
-- -----------------------------------------------------
START TRANSACTION;
USE `cvs`;
INSERT INTO `cvs`.`cv_descargable` (`ruta`, `diseno_cvs_iddisenocv`, `usuarios_idusuarios`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES ('CV_Ame-2023_02-ESP.pdf', 1, 1, 1);
INSERT INTO `cvs`.`cv_descargable` (`ruta`, `diseno_cvs_iddisenocv`, `usuarios_idusuarios`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES ('CV_Ame-2023_02-ING.pdf', 1, 1, 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `cvs`.`usuarios_has_lenguajes_del_cv`
-- -----------------------------------------------------
START TRANSACTION;
USE `cvs`;
INSERT INTO `cvs`.`usuarios_has_lenguajes_del_cv` (`usuarios_idusuarios`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES (1, 1);
INSERT INTO `cvs`.`usuarios_has_lenguajes_del_cv` (`usuarios_idusuarios`, `lenguajes_del_cv_idlenguajes_del_cv`) VALUES (1, 2);

COMMIT;

