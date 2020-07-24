<?php
/**
 * Страница О компании (page-about.php)
 * @package WordPress
 * @subpackage your-clean-template-3
 * Template Name: О компании
 */
?>

<?php get_header(); ?>

<div class="about gradient">
	<div class="container">
		<h2 class="title"><?php the_title(); ?></h2>
		<p class="about-text">Туристическое агентство «Уральский Экспресс» - одно из первых агентств в г.  Миассе. Наша компания была создана в 2001 году , и уже более 18 лет мы помогаем нашим клиентам организовать отдых и деловые поездки  по России, ближнему и дальнему зарубежью. Все наши менеджеры обладают высокой квалификацией и большим опытом работы.</p>
		<p class="about-text">Основные направления деятельности компании: выездной и местный туризм, продажа авиа и железнодорожных билетов, оформление виз,  медстраховок, бронирование гостиниц по всему миру, организация деловых поездок.</p>
		<p class="about-text">Компания "Уральский Экспресс"  работает с крупными, проверенными  туроператорами России и награждена благодарностью от них за многолетнее активное и плодотворное сотрудничество.  Наше правило - только прямой договор с Туроператорами, без посредников, что делает нашу работу более оперативной и надежной.</p>
		<p class="about-text">Мы не просто осуществляем поиск лучших туров, мы хотим поделиться с вами опытом, поэтому всегда расскажем о своих впечатлениях, дадим дельный совет и рекомендации, чтобы отдых стал незабываемым.</p>
		<div class="about-wrapper">
			<div class="info">
				<div class="info-item">
					<p class="info-number">19</p>
					<p class="info-title">лет работы</p>
				</div>
				<div class="info-item">
					<p class="info-number">2</p>
					<p class="info-title">филиала</p>
				</div>
			</div>
			<div class="info">
				<div class="info-item">
					<p class="info-number">>10000</p>
					<p class="info-title">счастливых туристов</p>
				</div>
				<div class="info-item">
					<p class="info-number">&#8734;</p>
					<p class="info-title">слов благодарности</p>
				</div>
			</div>
		</div>

		</div>
		<h2 class="title">Наша команда</h2>
		<div class="our-team">
			<div class="team-item">
				<img src="<?php echo get_template_directory_uri()?>/img/svetlana.png" alt="">
				<p>Светлана Дюпина</p>
				<p><a href="mailto:avia@uraltur.ru">avia@uraltur.ru</a></p>
				<p><a href="tel:+73513548311">+7 (3513) 54‒83‒11</a></p>
			</div>
			<div class="team-item">
				<img src="<?php echo get_template_directory_uri()?>/img/elvira.png" alt="">
				<p>Эльвира Кадирова</p>
				<p><a href="mailto:rus@uraltur.ru">rus@uraltur.ru</a></p>
				<p><a href="tel:+73513548311">+7 (3513) 54‒83‒11</a></p>
			</div>
			<div class="team-item">
				<img src="<?php echo get_template_directory_uri()?>/img/olga.png" alt="">
				<p>Ольга Голдина</p>
				<p><a href="mailto:miassuralexpress@mail.ru">miassuralexpress@mail.ru</a></p>
				<p><a href="tel:+73513591519">+7 (3513) 59‒15‒19</a></p>
			</div>
		</div>

		<h2 class="title hidden-mobile">Сертификаты</h2>
		<div class="sert hidden-mobile">
			<?php
			$query = new WP_Query(array(

			  'category_name' => 'sertificate',
			  'posts_per_page' => 5,

			)); ?>

			<?php if ($query->have_posts()) : ?>

				<?php while ($query->have_posts()) : $query->the_post(); ?>
			    <div class="sert-image" style="background: url(<?php echo the_post_thumbnail_url('full'); ?>) center no-repeat; background-size: 100%;"></div>
			    <?php endwhile; ?>
			  <?php wp_reset_postdata(); ?>

			<?php else : ?>
			  <p><?php esc_html_e('Нет постов по вашим критериям.'); ?></p>
			<?php endif; ?>

		</div>				
		
	</div>
	<?php get_template_part('template-parts/parts/contacts') ?>
</div>


<?php get_footer(); ?>