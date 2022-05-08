<section id="parceiro" class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-12 d-flex flex-wrap justify-content-between">
                <div class="col-12 col-lg-6">
                    <img class="img-fluid float-right mr-3" src="<?php echo get_field('imagem_parceiro') ?>">
                </div>
                <div class="col-12 col-lg-6">
                    <h2 class="mt-5"><?php echo nl2br(strip_tags(get_field('titulo_parceiro', get_the_ID()), '<b><strong><em>')); ?></h2>
                    <h3><?php echo nl2br(strip_tags(get_field('subtitulo_parceiro', get_the_ID()), '<b><strong><em>')); ?></h3>
                    <a href="https://api.whatsapp.com/send?phone=5531998822828" target="_blank" rel="noopener noreferrer" class="btn btn-warning btn-laranja d-block  my-5 px-3 py-3 text-uppercase inc-track" data-category="conversão" data-action="Chame no Whatsapp" data-label="Chame no Whatsapp">Chame no Whatsapp</a>
                </div>
            </div>
        </div>
    </div>
</section>