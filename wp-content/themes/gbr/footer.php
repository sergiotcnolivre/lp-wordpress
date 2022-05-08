        <?php get_template_part('partials/footer'); ?>
        <?php wp_footer(); ?>
        <input type="hidden" id="baseurl" value="<?php echo home_url(); ?>" />
        <input type="hidden" id="utm_source" value="<?php echo $_SESSION['utm_source']; ?>">
        <input type="hidden" id="utm_medium" value="<?php echo $_SESSION['utm_medium']; ?>">
        <input type="hidden" id="utm_campaign" value="<?php echo $_SESSION['utm_campaign']; ?>">
        <script src="<?php echo get_template_directory_uri(); ?>/assets/js/slick.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script src="<?php echo get_template_directory_uri(); ?>/assets/js/script.js"></script>
        <script defer async src="https://contatos.incdigital.com.br/api/api_incmails.js"></script>
        </body>



        </html>