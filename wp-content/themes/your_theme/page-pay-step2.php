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
	<p>Введите свои данные для оплаты</p>
	<form action="<?php echo get_page_link( 140 ); ?>" method="POST">
		<input type="hidden" name="summa" value="<?php echo htmlspecialchars($_POST['summ']); ?>" >
		<label>Введите ФИО</label>
		<input type="text" name="fio" value="" required>
		<label>Введите e-mail</label>
		<input type="text" name="email" value="" required>
		<label>Введите номер телефона</label>
		<input type="text" name="phone" value="" required>
		<input type="checkbox" name="checkbox" onchange="document.getElementById('submit').disabled = !this.checked;" />
		<input type="button" onclick="history.back();" value="Назад"/>
		<input type="submit" id="submit" disabled="disabled" value="Далее">
	</form>
	</div>

<?php get_footer(); ?>