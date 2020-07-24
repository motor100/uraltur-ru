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
	<?php echo (int)$_POST['summa']; ?><br>
	<?php echo htmlspecialchars($_POST['fio']); ?><br>
	<?php echo htmlspecialchars($_POST['email']); ?><br>
	<?php echo (int)$_POST['phone']; ?><br>
</div>

<?php get_footer(); ?>