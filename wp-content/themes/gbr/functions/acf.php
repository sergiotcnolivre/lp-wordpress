<?php

// ----------- 
// ACF local JSON
// -----------
add_filter('acf/settings/load_json', 'my_acf_json_load_point');
function my_acf_json_load_point($paths)
{
    unset($paths[0]);
    $paths[] = get_stylesheet_directory() . '/acf-json';
    return $paths;
}

// ----------- 
// OPTIONS PAGE
// -----------

if (function_exists('acf_add_options_page')) {

    acf_add_options_page(array(
        'page_title'    => 'Ajustes do Tema',
        'menu_title'    => 'Ajustes do Tema',
        'menu_slug'     => 'about',
        'capability'    => 'edit_posts',
        'redirect'      => false,
        'icon_url'      => 'dashicons-admin-site',
        'position'      => 2
    ));
}