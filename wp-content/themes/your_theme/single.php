<?php
/**
 * Шаблон отдельной записи (single.php)
 * @package WordPress
 * @subpackage your-clean-template-3
 */
get_header(); ?>
<section class="single-page gradient">
	<div class="container">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10">
				<?php if ( have_posts() ) while ( have_posts() ) : the_post(); ?>
					<h1 class="title"><?php the_title(); ?></h1>
					<div class="card-post">
						<div class="post-image" style="background: url(<?php echo the_post_thumbnail_url('full'); ?>) center no-repeat; background-size: cover;"></div>
						<div class="post-content"><?php echo get_the_content(); ?></div>
						<?php if( in_category('offer') ):; ?>
							<div class="post-price">от&nbsp;<?php echo (get_post_meta( $post->ID, 'price' , true )); ?>р.</div>
						<?php endif; ?>
					</div>
				<?php endwhile; ?>
			</div>
			<div class="col-md-1"></div>
			
		</div>
	</div>
</section>
<?php get_footer(); ?>
