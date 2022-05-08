<?php
$video = get_field('link_do_video');
$link_video = explode("?v=", $video);
?>
<section id="conheca">
    <div class="container">
        <div class="row">
            <div class="col-12 d-flex flex-column justify-content-center alig-items-center">
                <h2 class="text-center my-5"><?php echo nl2br(strip_tags(get_field('titulo_conheca', get_the_ID()), '<b><strong><em>')); ?></h2>
                <iframe style="margin: 0 auto; margin-bottom:2rem;"  id="player" frameborder="0" allowfullscreen="1" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" title="YouTube video player" width="70%" height="422px" src="https://www.youtube.com/embed/<?php echo $link_video[1] ?>"></iframe>
            </div>
        </div>
    </div>
</section>