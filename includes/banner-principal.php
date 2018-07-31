<div class="main-banner banner_up">
    <div id="rev_slider_34_1_wrapper" class="rev_slider_wrapper" data-alias="news-gallery34">
        <div id="rev_slider_34_1" class="rev_slider" data-version="5.0.7">
            <ul>
                <?php
                require_once "../@pew/pew-system-config.php";
                $tabela_banners = $pew_db->tabela_banners;
                $contarBanners = mysqli_query($conexao, "select count(id) as total_banners from $tabela_banners where status = 1");
                $contagemBanners = mysqli_fetch_assoc($contarBanners);
                $quantidadeBanners = $contagemBanners["total_banners"];
                if($quantidadeBanners > 0){
                    $queryBanners = mysqli_query($conexao, "select * from $tabela_banners where status = 1 order by posicao asc");
                    $ctrlQtdBanners = 0;
                    while($banner = mysqli_fetch_array($queryBanners)){
                        $id = $banner["id"];
                        $titulo = $banner["titulo"];
                        $descricao = $banner["descricao"];
                        $imagem = $banner["imagem"];
                        $dirImg = "imagens/banners/$imagem";
                        $url = $banner["link"];
                        $ctrlQtdBanners++;
                        $posicao = $ctrlQtdBanners;
                        $idBanner = "banner_home_principal_$posicao";
                        $class = $posicao == 1 ? "box-banner-ativo": "box-banner-esquerda";
                        echo "<li data-index='rs-$id'>";
                            echo "<img src='$dirImg' alt='' class='rev-slidebg'>";
                            echo "<div class='tp-caption Newspaper-Title tp-resizeme'";
                                echo "id='slide-129-layer-1'";
                                echo "data-x='[center,center,center,center]' data-hoffset='[0,0,0,0]'";
                                echo "data-y='[center,center,center,center]' data-voffset='[0,0,0,0]'";
                                echo "data-fontsize='[50,50,50,30]'";
                                echo "data-lineheight='[55,55,55,35]'";
                                echo "data-width='[600,600,600,420]'";
                                echo "data-height='none'";
                                echo "data-whitespace='normal'";
                                echo "data-transform_idle='o:1;'";
                                echo "data-transform_in='y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;'";
                                echo "data-transform_out='auto:auto;s:1000;e:Power3.easeInOut;'";
                                echo "data-mask_in='x:0px;y:0px;s:inherit;e:inherit;'";
                                echo "data-mask_out='x:0;y:0;s:inherit;e:inherit;'";
                                echo "data-start='1000'";
                                echo "data-splitin='none'";
                                echo "data-splitout='none'";
                                echo "data-responsive_offset='on'>";
                                echo "<div class='banner-text text-center'>";
                                    echo "<h2>$titulo</h2>";
                                    echo "<p>$descricao</p>";
                                    echo "<a class='btn-text green-bg' href='produtos.php?departamento=persianas'> Saiba Mais</a>";
                                echo "</div>";
                            echo "</div>";
                        echo "</li>";
                    }
                }
                ?>
            </ul>
            <div class="tp-bannertimer tp-bottom"></div>
        </div>
    </div>

</div>
