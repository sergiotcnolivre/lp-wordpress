<?php

// ----------- 
// REMOVE STRING WHITESPACE
// -----------
function clean($string)
{
    $string = str_replace(' ', '-', $string); // Replaces all spaces with hyphens.

    return preg_replace('/[^a-zA-Z0-9]+/', '', $string); // Removes special chars.
}

// ----------- 
// ADD EXCERPT TO PAGES
// -----------
function add_excerpt_to_pages()
{
    add_post_type_support('page', 'excerpt');
}
add_action('init', 'add_excerpt_to_pages');

// ----------- 
// MODIFY EXCERPT LENGTH
// -----------
function custom_excerpt_length($length)
{
    return 25;
}
add_filter('excerpt_length', 'custom_excerpt_length', 999);

// ----------- 
// CHANGE MORE EXCERPT
// -----------
function custom_more_excerpt($more)
{
    return '...';
}
add_filter('excerpt_more', 'custom_more_excerpt');

// ----------- 
// PAGINATION
// -----------

function numeric_posts_nav()
{

    if (is_singular())
    return;

    global $wp_query;

    /** Stop execution if there's only 1 page */
    if ($wp_query->max_num_pages <= 1)
    return;

    $paged = get_query_var('paged') ? absint(get_query_var('paged')) : 1;
    $max   = intval($wp_query->max_num_pages);

    /**	Add current page to the array */
    if ($paged >= 1)
    $links[] = $paged;

    /**	Add the pages around the current page to the array */
    if ($paged >= 3) {
        $links[] = $paged - 1;
        $links[] = $paged - 2;
    }

    if (($paged + 2) <= $max) {
        $links[] = $paged + 2;
        $links[] = $paged + 1;
    }

    echo '<div class="pagination"><ul class="d-flex list-unstyled mx-auto">' . "\n";

    /**	Previous Post Link */
    if (get_previous_posts_link())
    printf('<li class="arrow">%s</li>' . "\n", get_previous_posts_link('<i class="icon-seta_anterior"></i>'));

    /**	Link to first page, plus ellipses if necessary */
    if (!in_array(1, $links)) {
        $class = 1 == $paged ? ' class="active"' : '';

        printf('<li%s><a href="%s">%s</a></li>' . "\n", $class, esc_url(get_pagenum_link(1)), '1');

        if (!in_array(2, $links))
        echo '<li class="points">…</li>';
    }

    /**	Link to current page, plus 2 pages in either direction if necessary */
    sort($links);
    foreach ((array) $links as $link) {
        $class = $paged == $link ? ' class="active"' : '';
        printf('<li%s><a href="%s">%s</a></li>' . "\n", $class, esc_url(get_pagenum_link($link)), $link);
    }

    /**	Link to last page, plus ellipses if necessary */
    if (!in_array($max, $links)) {
        if (!in_array($max - 1, $links))
        echo '<li class="points">…</li>' . "\n";

        $class = $paged == $max ? ' class="active"' : '';
        printf('<li%s><a href="%s">%s</a></li>' . "\n", $class, esc_url(get_pagenum_link($max)), $max);
    }

    /**	Next Post Link */
    if (get_next_posts_link())
    printf('<li class="arrow"/>%s</li>' . "\n", get_next_posts_link('<i class="icon-seta_proximo"></i>'));

    echo '</ul></div>' . "\n";
}

function tagfix_add_custom_types($query)
{
    if (is_tag() && $query->is_main_query()) {
        $post_types = get_post_types();
        $query->set('post_type', $post_types);
    }
}
add_filter('pre_get_posts', 'tagfix_add_custom_types');