<section id="gbr" class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-12 d-flex flex-wrap justify-content-center justify-content-lg-between align-items-center">
                <div class="col-12 col-lg-6">
                    <h2 class=" my-5"><?php echo nl2br(strip_tags(get_field('titulo_conheca_gbr', get_the_ID()), '<b><strong><em>')); ?></h2>
                    <p class=" my-5"><?php echo nl2br(strip_tags(get_field('texto_conheca_gbr', get_the_ID()), '<b><strong><em>')); ?></p>
                    <a href="https://api.whatsapp.com/send?phone=5531995100776" target="_blank" rel="noopener noreferrer" class="btn btn-warning btn-laranja d-block mx-auto my-5 px-3 py-3 inc-track" data-category="conversao" data-action="Nos chame no Whatsapp" data-label="Nos chame no Whatsapp"> Nos chame no Whatsapp</a>
                </div>
                <div class="col-12 col-lg-6">
                    <img src="<?php echo get_field('imagem_conheca_gbr') ?>">
                </div>
            </div>
        </div>
    </div>
</section>