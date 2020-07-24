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
					<!-- <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>> <?php ?> -->
						<div class="card-post">
							<h1 class="title"><?php the_title(); ?></h1>
							<div class="post-image"><?php the_post_thumbnail('full'); ?></div>
							
							<div class="post-content"><?php the_content(); ?></div>
							<?php if( in_category('offer') ):; ?>
								<div class="post-price">от&nbsp;<?php echo (get_post_meta( $post->ID, 'price' , true )); ?>р.</div>
							<?php endif; ?>
							<!-- <div class="post-price">от&nbsp;<?php echo (get_post_meta( $post->ID, 'price' , true )); ?>р.</div> -->
						</div>
					</article>
				<?php endwhile; ?>
				
			</div>
			<div class="col-md-1"></div>
			
		</div>
	</div>
</section>
<?php get_footer(); ?>
