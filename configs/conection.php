<?php
    require_once('env.php');
    $conection = mysqli_connect($_ENV['DB_HOST'], $_ENV['DB_USR'], $_ENV['DB_PASS'], $_ENV['DB_NAME']);

