<?php

// -----------
// DISABLE BLOCK LIBRARY
// -----------
function wpassist_remove_block_library_css()
{
    wp_dequeue_style('wp-block-library');
}
add_action('wp_enqueue_scripts', 'wpassist_remove_block_library_css');

// -----------
// LOAD DASHICONS
// -----------
// function ww_load_dashicons()
// {
//     wp_enqueue_style('dashicons');
// }
// add_action('wp_enqueue_scripts', 'ww_load_dashicons');

// -----------
// REMOVE DASHICONS
// -----------
function wpdocs_dequeue_dashicon()
{
    if (current_user_can('update_core')) {
        return;
    }
    wp_deregister_style('dashicons');
}
add_action('wp_enqueue_scripts', 'wpdocs_dequeue_dashicon');

// -----------
// REMOVE JQUERY MIGRATE
// -----------
function remove_jquery_migrate($scripts)
{
    if (!is_admin() && isset($scripts->registered['jquery'])) {
        $script = $scripts->registered['jquery'];

        if ($script->deps) { // Check whether the script has any dependencies
            $script->deps = array_diff($script->deps, array(
                'jquery-migrate'
            ));
        }
    }
}

add_action('wp_default_scripts', 'remove_jquery_migrate');

// -----------
// REPLACE/REMOVE JQUERY VERSION
// -----------
function replace_core_jquery_version()
{
    wp_deregister_script('jquery');
    // Change the URL if you want to load a local copy of jQuery from your own server.
    // wp_register_script('jquery', "https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js", array(), '3.6.0');
}
add_action('wp_enqueue_scripts', 'replace_core_jquery_version');

// -----------
// REMOVE WP EMOJI
// -----------
function disable_wp_emojicons()
{
    remove_action('admin_print_styles', 'print_emoji_styles');
    remove_action('wp_head', 'print_emoji_detection_script', 7);
    remove_action('admin_print_scripts', 'print_emoji_detection_script');
    remove_action('wp_print_styles', 'print_emoji_styles');
    remove_filter('wp_mail', 'wp_staticize_emoji_for_email');
    remove_filter('the_content_feed', 'wp_staticize_emoji');
    remove_filter('comment_text_rss', 'wp_staticize_emoji');
    add_filter('tiny_mce_plugins', 'disable_emojicons_tinymce');
    add_filter('emoji_svg_url', '__return_false');
}
add_action('init', 'disable_wp_emojicons');

function disable_emojicons_tinymce($plugins)
{
    return is_array($plugins) ? array_diff($plugins, array('wpemoji')) : array();
}

// -----------
// ENQUEUE SCRIPTS
// -----------
function inc_scripts()
{
    wp_enqueue_script('jquery', "https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js", array(), '3.6.0');
    wp_enqueue_script('bootstrap', 'https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js', array(), '5.1.3', false);
    wp_enqueue_script('jQueryMask', 'https://cdn.jsdelivr.net/npm/jquery-mask-plugin@1.14.16/dist/jquery.mask.min.js', array(), '1.14.16', false);
    wp_enqueue_script('fancybox', 'https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.js', array(), '3.5.7', false);
    wp_enqueue_script('swiper', 'https://cdn.jsdelivr.net/npm/swiper@8.0.5/swiper-bundle.min.js', array(), '8.0.5', false);
    //wp_enqueue_script('output', get_template_directory_uri() . '/assets/js/plugins/output.min.js', array(), get_template_directory() . '/assets/js/plugins/output.min.js', false);
    wp_enqueue_script('custom', get_template_directory_uri() . '/assets/js/custom.js');
}
add_action('wp_enqueue_scripts', 'inc_scripts');
