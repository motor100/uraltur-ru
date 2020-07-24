<section id="main" class="main">
      <?php
      $query = new WP_Query(array(

          'category_name' => 'slider',
          'posts_per_page' => -1,

      )); ?>

      <?php if ($query->have_posts()) : ?>

          <div id="slides">
            <?php $i = 0; ?>
            <?php while ($query->have_posts()) : $query->the_post(); ?>
              <div class="slide <?php if ($i == 0) {echo('showing');} ?>" style="background: url(<?php echo the_post_thumbnail_url('full'); ?>) center no-repeat; background-size: cover;">
                <a class="slider-title" href="<?php the_permalink() ?>"><?php the_title(); ?></a>
              </div>
              <?php $i++; ?>
            <?php endwhile; ?>
          </div>
          <?php wp_reset_postdata(); ?>

      <?php else : ?>
          <p><?php esc_html_e('Нет постов по вашим критериям.'); ?></p>
      <?php endif; ?>
  
  <div class="headline">
    <div class="main-logo hidden-mobile"><img src="<?php echo get_template_directory_uri()?>/img/logo.png" alt="logo"></div>
    <h1 class="main-title">Турагентство</h1>
    <h2 class="subtitle">&laquo;Уральский экспресс&raquo;</h2>
    <p class="slogan">С вами с 2001 года</p>
    <div class="orange-button"><a class="btn" href="<?php echo esc_url(home_url('/find-tour')); ?>">Найти тур</a></div>
  </div>
    
</section>