<section id="offer" class="offer">
    
  <div class="container">
    <!-- <div class="white-wrapper wrapper"> -->
        <h2 class="title">Предложение дня</h2>

        <div class="row">
            <!-- <div class="posts-container"> -->
                <?php
                $query = new WP_Query(array(

                    'category_name' => 'offer',
                    'posts_per_page' => 4,

                )); ?>

                <?php if ($query->have_posts()) : ?>

                    <!-- цикл -->
                    <?php while ($query->have_posts()) : $query->the_post(); ?>

                        <!-- item -->
                        <div class="col-md-3">
                            <div class="card-offer">
                                <div class="offer-image">
                                   	<div class="img" style="background: url(<?php echo the_post_thumbnail_url('full'); ?>) center no-repeat; background-size: cover;">
                                        <a href="<?php the_permalink() ?>"></a>
                                    </div>
                                </div>
                                <div class="offer-footer">
                                    <div class="offer-title"><?php the_title() ?></div>
                                    <div class="offer-price">от&nbsp;<?php echo (get_post_meta( $post->ID, 'price' , true )); ?>р.</div>
                                    <a href="<?php the_permalink() ?>"></a>
                                </div>
                            </div>
                        </div>

                    <?php endwhile; ?>
                    <!-- конец цикла -->

                    <?php wp_reset_postdata(); ?>

                <?php else : ?>
                    <p><?php esc_html_e('Нет постов по вашим критериям.'); ?></p>
                <?php endif; ?>
            <!-- </div> -->
        </div>

        <div class="hidden-mobile">
            <div class="row">
                <?php
                $query = new WP_Query(array(

                    'category_name' => 'offer',
                    'posts_per_page' => 4,
                    'offset' => 4,

                )); ?>

                <?php if ($query->have_posts()) : ?>

                    <!-- цикл -->
                    <?php while ($query->have_posts()) : $query->the_post(); ?>

                        <!-- item -->
                        <div class="col-md-3">
                            <div class="card-offer">
                                <div class="offer-image">
                                    <div class="img" style="background: url(<?php echo the_post_thumbnail_url('full'); ?>) center no-repeat; background-size: cover;">
                                        <a href="<?php the_permalink() ?>"></a>
                                    </div>
                                </div>
                                <div class="offer-footer">
                                    <div class="offer-title"><?php the_title() ?></div>
                                    <div class="offer-price">от&nbsp;<?php echo (get_post_meta( $post->ID, 'price' , true )); ?>р.</div>
                                    <a href="<?php the_permalink() ?>"></a>
                                </div>
                            </div>
                        </div>

                    <?php endwhile; ?>
                    <!-- конец цикла -->

                    <?php wp_reset_postdata(); ?>
       
                <?php else : ?>
                    <p><?php esc_html_e('Нет постов по вашим критериям.'); ?></p>
                <?php endif; ?>
            </div>
        </div>

       <!--  <div class="test-image">
            <div class="item"><img src="<?php echo get_template_directory_uri()?>/img/5e445533.jpg"></div>
            <div class="item"><img src="<?php echo get_template_directory_uri()?>/img/5e445533.jpg"></div>
            <div class="item"><img src="<?php echo get_template_directory_uri()?>/img/5e445533.jpg"></div>
            <div class="item"><img src="<?php echo get_template_directory_uri()?>/img/5e445533.jpg"></div>
        </div> -->




    <!-- </div> -->
  </div>
</section>