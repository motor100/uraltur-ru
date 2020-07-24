<?php
/**
 * Шаблон подвала (footer.php)
 * @package WordPress
 * @subpackage your-clean-template-3
 */
?>
	<footer class="gradient">
		<div class="container">
			<p class="copyright">2001-2020. ИП Дюпина С.Ю. ИНН 741505335140.<br>Информация на сайте не является публичной офертой.</p>
			<a href="<?php echo esc_url(home_url('/agreement')); ?>">Соглашение на обработку персональных данных</a>
		</div>
	</footer>
	<!-- TO-TOP -->
	<span id="to-top" class="hidden-mobile"></span>

	<!-- Yandex.Metrika counter -->
	<script type="text/javascript" >
	   (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
	   m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})
	   (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

	   ym(57650629, "init", {
	        clickmap:true,
	        trackLinks:true,
	        accurateTrackBounce:true,
	        webvisor:true
	   });
	</script>
	<noscript><div><img src="https://mc.yandex.ru/watch/57650629" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
	<!-- /Yandex.Metrika counter -->

<?php wp_footer(); // необходимо для работы плагинов и функционала  ?>
</body>
</html>