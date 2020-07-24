<?php

/**
 * Шаблон обычной страницы (page.php)
 * @package WordPress
 * @subpackage your-clean-template-3
 */
?>
<?php get_header(); ?>

<!-- ГЛАВНАЯ -->
<?php get_template_part('template-parts/parts/main') ?>
<!-- ПРЕДЛОЖЕНИЕ ДНЯ -->
<?php get_template_part('template-parts/parts/offer') ?>
<!-- ПОДБЕРИТЕ МНЕ ТУР -->
<?php get_template_part('template-parts/parts/select') ?>
<!-- КОНТАКТЫ -->
<?php get_template_part('template-parts/parts/contacts') ?>

<?php get_footer(); ?>