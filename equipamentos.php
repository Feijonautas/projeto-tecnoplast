<?php
    require_once "@classe-paginas.php";
    $cls_paginas->set_titulo('Sobre');
    $cls_paginas->set_descricao('Descrição exemplar!');
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title><?php echo $cls_paginas->titulo; ?></title>
        <meta name="description" content="<?php echo $cls_paginas->descricao; ?>">
        <?php require_once "@link-standard-styles.php"; ?>
        <?php require_once "@link-important-functions.php"; ?>
	</head>
    <body>
        <?php
            include "includes/header.php";
            include "includes/box-breadcrumb-quemsomos.php";
        ?>
        <?php
			include "includes/box-servicos3.php";
            include "includes/footer.php";
        ?>
    </body>
    <?php require_once "@link-standard-js.php" ?>
</html>
