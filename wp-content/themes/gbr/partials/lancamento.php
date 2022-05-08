<section id="lancamento">
    <div class="container">
        <div class="row">
            <h2 class="text-center my-5"><?php echo nl2br(strip_tags(get_field('titulo_lancamento', get_the_ID()), '<b><strong><em>')); ?></h2>
            <div class="col-12 d-flex flex-wrap justify-content-center">
                <div class="col-12 col-lg-6">
                    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner mr-lg-3 ">

                            <?php
                            if (have_rows('galeria_lancamento')) :
                                $x = 0;
                                while (have_rows('galeria_lancamento')) : the_row();
                            ?>

                                    <div class="carousel-item  <?php if ($x == 0) {
                                                                    echo 'active';
                                                                } ?> ">
                                        <a data-fancybox href="<?php echo the_sub_field('imagem'); ?>">
                                            <img class="d-block w-100" src="<?php echo the_sub_field('imagem'); ?>">
                                        </a>

                                    </div>
                            <?php
                                    $x++;
                                endwhile;
                            endif;
                            ?>

                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Anterior</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Próximo</span>
                        </a>
                    </div>
                </div>
                <div class="col-12 col-lg-6 cont-esqu">
                    <h3 class="mb-5"><?php echo nl2br(strip_tags(get_field('subtitulo_lancamento', get_the_ID()), '<b><strong><em>')); ?></h3>
                    <p><?php echo nl2br(strip_tags(get_field('texto_lancamento', get_the_ID()), '<b><strong><em>')); ?></p>
                    <div class="d-flex justify-content-between lancamento_container">
                        <?php
                        if (have_rows('icones_lancamento')) :
                            while (have_rows('icones_lancamento')) : the_row();

                        ?>
                                <div class="container_icon_lancamento">
                                    <p>
                                        <img src=" <?php the_sub_field('icone'); ?>"> <?php the_sub_field('texto'); ?>
                                    </p>
                                </div>


                        <?php
                            endwhile;
                        endif;

                        ?>
                    </div>
                </div>
            </div>
            <a class="btn btn-warning btn-laranja d-block mx-auto my-5 px-3 py-3 inc-track" data-category="conversão" data-action="Download planta" data-label="Download planta" href="<?php echo get_field('link_planta'); ?>" target="_blank" rel="noopener noreferrer" role="button">Faça download da planta</a>
        </div>
    </div>
</section>