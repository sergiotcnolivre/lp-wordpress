<div id="stickyMenuTop" style="height: 1px;"></div>
<header class="headerMenu shadow" id="headerBar">
    <div class="container contact">
        <div class="row justify-content-center ">
            <div class="contact-top d-flex justify-content-between align-items-center">
                <p class="cordis">Cordisburgo/MG</p>
                <p>
                    <a href=" https://api.whatsapp.com/send?phone=55<?php echo preg_replace('/\D/', '', get_field('whatsapp', 'option')); ?>" target=" _blank" rel="noopener noreferrer">
                        <a href="tel:+<?php echo preg_replace('/\D/', '', get_field('whatsapp', 'option')); ?>"><img src="http://fazendinhamaquine.com.br/wp-content/uploads/2022/05/phone.png" alt=""></a><img src="<?php echo get_template_directory_uri(); ?>/assets/img/whatsapp-branco.png">
                    </a>
                    <a href="https://www.instagram.com/<?php echo get_field('instagram', 'option') ?>" target="_blank" rel="noopener noreferrer">
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/img/instagram-branco.png">
                    </a>

                </p>
            </div>
        </div>
    </div>
    <nav class="navbar navbar-expand-lg navbar-light bg-light p-0">
        <div class="container">
            <a class="navbar-brand" href="<?php echo site_url(); ?>">
                <img src="<?php echo get_template_directory_uri(); ?>/assets/img/logo-topo.png" alt="<?php echo get_bloginfo('name'); ?>">
            </a>
            <a class="navbar-brand" href="<?php echo site_url(); ?>">
                <img class="img-topo-2" src="<?php echo get_template_directory_uri(); ?>/assets/img/logo-topo-2.png" alt="<?php echo get_bloginfo('name'); ?>">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarHeader">
                <?php
                wp_nav_menu(array(
                    'theme_location'        => 'header-nav',
                    'container'             => 'nav',
                    'container_class'       => 'ms-auto',
                    'menu_class'            => 'navbar-nav',
                    'list_item_class'       => 'nav-item',
                    'link_class'            => 'nav-link'
                ));
                ?>
            </div>
        </div>
    </nav>
</header>