<?php

/**
 * Шаблон рубрики (category.php)
 * @package WordPress
 * @subpackage your-clean-template-3
 */
?>
<?php get_header(); ?>

<!-- POSTS -->
<div class="container">
	<div class="page posts-page">
		<div class="breadcrumbs">
			<?php echo kama_breadcrumbs(); ?>
		</div>

		<div class="tm-main">
			<!-- title -->
			<h1 class="title"><?php single_cat_title(); ?></h1>
			<div class="decription-top"></div>

			<div class="posts">
				<div class="row">
					
					<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

							<div id="post-<?php the_ID(); ?>" class="col-sm-6 col-md-4 posts__item">
								<div class="card card--posts">
									<!-- header -->
									<div class="posts__header">

										<!-- Title -->
										<h2 class="posts__title">
<!-- 											<a href="<?php the_permalink(); ?>"><?php the_title(); ?></a> -->
											<?php the_title(); ?>
										</h2>
<!-- Thmb -->
									<div style="background-image:url(<?php echo the_post_thumbnail_url('full') ?>)" class="posts__tmb">
<!-- 										<a href="<?php the_permalink(); ?>"> -->
											<!-- <?php the_post_thumbnail(); ?> -->
<!-- 										</a> -->
<!-- 										<a href="<?php the_permalink(); ?>"></a> -->
									</div>
										<a href="<?php the_permalink(); ?>"></a>
									</div>

									<!-- Content -->
									<div class="posts__body">

										<?php if (is_category()) {
													the_excerpt();
												} else {
													the_content();
												} ?>


									</div>
									<!-- FOOTER -->
									<div class="posts__footer">
										
										<a class="btn btn--empty" href="<?php the_permalink($post); ?>">Подробнее</a>
										<?php   
										if(!in_category('using')){?>
											<span class="btn btn--secondary modal-open" data="#modal-1">Заказать</span>
										<?php }
										?>
										
									</div>
								</div>

							</div>

					<?php endwhile;

					else : echo '<p>Нет записей.</p>';
					endif; ?>
					
				</div>


			</div>
			<div class="decription-bottom"></div>
		</div>

		<?php pagination(); ?>
	</div>
</div>

<?php get_footer(); ?>