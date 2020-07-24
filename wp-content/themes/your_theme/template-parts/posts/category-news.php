<?php

/**
 * Шаблон рубрики новостей (category-news.php)
 * @package WordPress
 * @subpackage your-clean-template-3
 */
?>
<?php get_header(); ?>

<section class="news">
	<div class="container">
		<h1 class="title">Наши новости</h1>
		<div class="row">
			<?php
			$pc = new WP_Query(array(

					'category_name' => 'news',
					'posts_per_page' => 3,

			)); ?>
			
			<?php while ($pc->have_posts()) : $pc->the_post(); ?>
			<div class="col-md-4">
				<div class="card-news">
					<div class="news-image" style="background: url(<?php echo the_post_thumbnail_url('full'); ?>) center no-repeat; background-size: cover;"></div>
					<p class="news-title"><?php the_title(); ?></p>
					
					<p class="news-content"><?php echo get_the_content('Читать далее');?></p>
				</div>
			</div>
			<?php endwhile; ?>
		</div>
		<div class="row">
			<?php
			$pc = new WP_Query(array(

				'category_name' => 'news',
				'posts_per_page' => 3,
				'offset' => 3,

			)); ?>
			<?php while ($pc->have_posts()) : $pc->the_post(); ?>
			<div class="col-md-4">
				<div class="card-news">
					<div class="news-image" style="background: url(<?php echo the_post_thumbnail_url('full'); ?>) center no-repeat; background-size: cover;"></div>
					<p class="news-title"><?php the_title(); ?></p>
					<p class="news-content"><?php echo get_the_content('Читать далее');?></p>
				</div>
			</div>
			<?php endwhile; ?>
		</div>
	</div>
</section>

<?php get_footer(); ?>