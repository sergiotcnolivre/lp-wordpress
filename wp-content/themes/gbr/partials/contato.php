<section id="contato">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2 class="text-center my-5"><?php echo nl2br(strip_tags(get_field('titulo_contato', get_the_ID()), '<b><strong><em>')); ?></h2>
                <p class="text-center my-5"><?php echo nl2br(strip_tags(get_field('subtitulo_contato', get_the_ID()), '<b><strong><em>')); ?></p>
                <?php echo do_shortcode('[contact-form-7 id="58" title="Contato"]' ); ?>
            </div>
        </div>
    </div>
</section>