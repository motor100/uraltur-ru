<?php
/**
 * Шаблон шапки (header.php)
 * @package WordPress
 * @subpackage your-clean-template-3
 */
?>
<!DOCTYPE html>
<html <?php language_attributes(); // вывод атрибутов языка ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); // кодировка ?>">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
	<meta name="description" content="Турагентство Уральский Экспресс. Бронирование туров онлайн. Звоните 8 (3513) 54-83-11">
	<meta name="keywords" content="турагентство, турфирма, путешествия, отдых, подбор тура, экскурсии, авиабилеты"/>

	<?php wp_head(); // необходимо для работы плагинов и функционала ?>
</head>
<body <?php body_class(); // все классы для body ?> >
	<header>
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<div class="header-logo">
						<a href="<?php echo esc_url(home_url('/')); ?>">
							<img src="<?php echo get_template_directory_uri()?>/img/logo.png" alt="logo">
						</a>
					</div>
					<div class="address-wrapper">
						<div class="address">Миасс<br>пр. Макеева, 25А<br>8 (3513) 54-83-11</div>
						<div class="address">Миасс<br>пр. Автозаводцев, 31<br>8 (3513) 59-15-19</div>
					</div>
				</div>
				<div class="col-md-7">
					<nav class="navbar">
						<?php $args = array( // опции для вывода верхнего меню, чтобы они работали, меню должно быть создано в админке
						'theme_location' => 'top', // идентификатор меню, определен в register_nav_menus() в functions.php
						'container'=> false, // обертка списка, тут не нужна
						'menu_id' => 'top-nav-ul', // id для ul
						// 'items_wrap' => '<ul id="%1$s" class="nav navbar-nav %2$s">%3$s</ul>',
						'items_wrap' => '<ul id="%1$s" class="%2$s">%3$s</ul>',
						'menu_class' => 'top-menu', // класс для ul, первые 2 обязательны
						'walker' => new bootstrap_menu(false) // верхнее меню выводится по разметке бутсрапа, см класс в functions.php, если по наведению субменю не раскрывать то передайте false		  		
						);
						wp_nav_menu($args); // выводим верхнее меню
						?>
					</nav>
				</div>
			</div>
		</div>
	</header>