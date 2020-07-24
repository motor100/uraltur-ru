<?php
/**
 * Страница Поиск тура (page-find-tour.php)
 * @package WordPress
 * @subpackage your-clean-template-3
 * Template Name: Поиск тура
 */
?>

<?php get_header(); ?>

<div class="about gradient">
	<div class="container">
		<h2 class="title page-title"><?php the_title(); ?></h2>


		<div id="df-root"></div>
		<script>
		    (function(d, s, id){
		        var js, dfjs = d.getElementsByTagName(s)[0];
		        if (d.getElementById(id)) {return;}
		        js = d.createElement(s); js.id = id;
		        js.src = "//www.delfin-tour.ru/frame/23214.jss";
		        dfjs.parentNode.insertBefore(js, dfjs);
		    }(document, 'script', 'df-export'));
		</script>
						
		
	</div>
	
</div>


<?php get_footer(); ?>