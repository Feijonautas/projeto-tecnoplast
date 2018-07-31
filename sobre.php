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
        <link rel="stylesheet" href="assets/css/timeline.css">
    </head>
    <body>
        <?php
        include "includes/header.php";
        include "includes/box-breadcrumb-quemsomos.php";
        ?>
        <div id="about-section" class="padding pt-xs-60">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="heading-box pb-30">
                            <h2><span></span> Persianas e Cortinas </h2>
                            <span class="b-line l-left"></span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 col-lg-6 pb-xs-30">
                        <div class="text-content">
                            <p><strong>Potencializando a felicidade nos ambientes que fazemos e que estamos inseridos.</strong></p>
                            <p>Somos uma consultoria especializada em soluções para controle térmico e de luminosidade em ambientes residenciais e corporativos.</p>
                            <p>Para uma entrega de altíssima qualidade, selecionamos os melhores fabricantes do Brasil e um vasto book de produtos, texturas e tonalidades.</p>
                            <p>Acreditamos que ambientes espontâneos, acolhedores e harmônicos influenciam diretamente na felicidade das pessoas que neles vivem.</p>
                            <p>Por isso, nossas persianas e cortinas são cuidadosamente produzidas com componentes inovadores, sofisticados, avançados tecnologicamente e que seguem padrões internacionais de qualidade. </p>
                        </div>
                        <h4>Valores</h4>
                        <ul class="list">
                            <li>
                                <i class="ion-android-done-all text-color"> </i> Alegria nos projetos
                            </li>
                            <li>
                                <i class="ion-android-done-all text-color"> </i> Paixão pelas pessoas
                            </li>
                            <li>
                                <i class="ion-android-done-all text-color"> </i> Excelência na entrega
                            </li>
                            <li>
                                <i class="ion-android-done-all text-color"> </i> Integridade nas relações
                            </li>
                            <li>
                                <i class="ion-android-done-all text-color"> </i> Sustentabilidade no negócio
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-12 col-lg-6">
                        <img class="img-responsive" src="assets/images/images.jpg" alt="Photo">
                    </div>
                </div>
            </div>
        </div>
        <!-- About Section End-->
        
        <section class="timeline">
            <div class="container">
                <div class="timeline-item">
                    <div class="timeline-img"></div>
                    <div class="timeline-content timeline-card js--fadeInRight">
                        <div class="timeline-img-header">
                            <img src="imagens/timeline/tecnoplast-1-1968.png" alt="">    
                            <h2>Card Title</h2>
                        </div>
                        <div class="date">30 JULY 2016</div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maxime ipsa ratione omnis alias cupiditate saepe atque totam aperiam sed nulla voluptatem recusandae dolor, nostrum excepturi amet in dolores. Alias, ullam.</p>
                        <a class="bnt-more" href="javascript:void(0)">More</a>
                    </div>
                </div>  
            </div>
        </section>
        <?php
        include "includes/footer.php";
        ?>
    </body>
    <?php require_once "@link-standard-js.php" ?>
</html>
