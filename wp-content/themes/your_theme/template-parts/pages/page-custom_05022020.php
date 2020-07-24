<?php

/**
 * Шаблон обычной страницы (page.php)
 * @package WordPress
 * @subpackage your-clean-template-3
 */
?>
<!-- HEADER -->
<?php get_header(); ?>

<div class="container">
	<div class="row">
		<div class="content page__content">
			<?php if (have_posts()) while (have_posts()) : the_post(); ?>
				<article id="post-<?php the_ID(); ?>" class="article page__article">
					
					<div class="content__header">
						<h1 class="title page-title"><?php the_title(); ?></h1>
					</div>

					<div class="content__body">
						<?php the_content(); ?>
					</div>

				</article>
			<?php endwhile; ?>
		</div>
	</div>
</div>

<!-- FOOTER -->
<?php get_footer(); ?>