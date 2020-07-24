<?php
/**
 * Страница Платеж шаг 1 (page-pay-step1.php)
 * @package WordPress
 * @subpackage your-clean-template-3
 * Template Name: Платеж шаг 1
 */
?>

<?php get_header(); ?>

<div class="pay-wrapper">
	<form action="<?php echo get_page_link( 138 ); ?>" method="POST">
		<label>Введите сумму оплаты</label>
		<input type="text" name="summ" value="">
		<input type="submit" value="Далее">
		
	</form>
</div>



<?php get_footer(); ?>