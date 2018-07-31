<?php
require_once "@classe-paginas.php";
$cls_paginas->set_titulo('Clientes');
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
        ?>
        <div class="page-header parallax" style="background-image: url(assets/images/banner/banner-quemsomos.png)">
            <div class="container">
                <br style="clear: both;">
                <h1 class="title">Clientes</h1> 
            </div>
            <div class="breadcrumb-box">
                <div class="container">
                    <nav aria-label="breadcrumb" role="navigation">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Página Inicial</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Clientes</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>

        <div id="services-section" class="services-section padding pt-xs-60">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-7">
                        <div class="text-box mt-40">
                            <div class="box-title mb-20">
                                <h2></h2>
                            </div>
                            <div class="text-content">
                                <p></p>
                            </div>
                        </div>
                        <div class="row mt-45 clearfix">
                            <div class="col-md-12 mb-30 col-lg-4">
                                <h4 class="right-txt">China in Box</h4>
                                <img class="img-responsive" src="imagens/clientes/china-in-box.png">
                            </div>
                            <div class="col-md-12 mb-30 col-lg-4">
                                <h4 class="right-txt">Pizza Hut</h4>
                                <img class="img-responsive" src="imagens/clientes/pizza-hut.png">
                            </div>
                            <div class="col-md-12 mb-30 col-lg-4">
                                <h4 class="right-txt">Subway</h4>
                                <img class="img-responsive" src="imagens/clientes/subway.png">
                            </div>
                            <div class="col-md-12 mb-30 col-lg-4">
                                <h4 class="right-txt">Domino's</h4>
                                <img class="img-responsive" src="imagens/clientes/Dominospizzalogo.png">
                            </div>
                            <div class="col-md-12 mb-30 col-lg-4">
                                <h4 class="right-txt">Spoleto</h4>
                                <img class="img-responsive" src="imagens/clientes/spoleto-novo.png">
                            </div>
                            <div class="col-md-12 mb-30 col-lg-4">
                                <h4 class="right-txt">Casa do Yakisoba</h4>
                                <img class="img-responsive" src="imagens/clientes/casa-do-yakisoba.png">
                            </div>
                            <div class="col-md-12 mb-30 col-lg-4">
                                <h4 class="right-txt">Griletto</h4>
                                <img class="img-responsive" src="imagens/clientes/griletto.png">
                            </div>
                            <div class="col-md-12 mb-30 col-lg-4">
                                <h4 class="right-txt">Sbarro</h4>
                                <img class="img-responsive" src="imagens/clientes/sbarro.png">
                            </div>
                            <div class="col-md-12 mb-30 col-lg-4">
                                <h4 class="right-txt">Mimma's</h4>
                                <img class="img-responsive" src="imagens/clientes/mimmas.png">
                            </div>
                            <div class="col-md-12 mb-30 col-lg-4">
                                <h4 class="right-txt">American Hot Chicken</h4>
                                <img class="img-responsive" src="imagens/clientes/hot-chicken.png">
                            </div>
                            <div class="col-md-12 mb-30 col-lg-4">
                                <h4 class="right-txt">MS Blindados</h4>
                                <img class="img-responsive" src="imagens/clientes/msblin.png">
                            </div>
                            <div class="col-md-12 mb-30 col-lg-4">
                                <h4 class="right-txt">Phil Youngs</h4>
                                <img class="img-responsive" src="imagens/clientes/phil-youngs.png">
                            </div>
                            <div class="col-md-12 mb-30 col-lg-4">
                                <h4 class="right-txt">Gold Stone</h4>
                                <img class="img-responsive" src="imagens/clientes/gold-stone.png">
                            </div>
                            <div class="col-md-12 mb-30 col-lg-4">
                                <h4 class="right-txt">Club 1903 Motocycles</h4>
                                <img class="img-responsive" src="imagens/clientes/club-1903.png">
                            </div>
                            <div class="col-md-12 mb-30 col-lg-4">
                                <h4 class="right-txt">Montana Express</h4>
                                <img class="img-responsive" src="imagens/clientes/montana-grill.png">
                            </div>
                            <div class="col-md-12 mb-30 col-lg-4">
                                <h4 class="right-txt">Panelinhas do Brasil</h4>
                                <img class="img-responsive" src="imagens/clientes/panelinha-do-brasil-min.png">
                            </div>
                            <div class="col-md-12 mb-30 col-lg-4">
                                <h4 class="right-txt">Tutto Moto</h4>
                                <img class="img-responsive" src="imagens/clientes/tutto-moto.png">
                            </div>
                            <div class="col-md-12 mb-30 col-lg-4">
                                <h4 class="right-txt">Estapar</h4>
                                <img class="img-responsive" src="imagens/clientes/estapar.png">
                            </div>
                            <div class="col-md-12 mb-30 col-lg-4">
                                <h4 class="right-txt">ICAB Chocolates</h4>
                                <img class="img-responsive" src="imagens/clientes/icab-chocolates.png">
                            </div>
                            <div class="col-md-12 mb-30 col-lg-4">
                                <h4 class="right-txt">Beleza Natural</h4>
                                <img class="img-responsive" src="imagens/clientes/BELEZA-NATURAL.png">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php
        include "includes/footer.php";
        ?>
    </body>
    <?php require_once "@link-standard-js.php" ?>
</html>
