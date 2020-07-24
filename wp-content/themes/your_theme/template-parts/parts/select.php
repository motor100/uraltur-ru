<section id="select" class="select">
	<div class="container">
		<h2 class="title">Подберите мне тур</h2>
		<p class="select-text">Нужна помощь в выборе тура?</p>
		<p class="select-text">Оставьте свои пожелания по туру и мы подберем для вас лучшие варианты.</p>

		<div id="contactform">
			<?php echo do_shortcode( '[contact-form-7 id="57" title="Подберите мне тур"]' ); ?>
			<p class="agreement">*согласен на&nbsp;<a href="<?php echo esc_url(home_url('/agreement')); ?>">обработку персональных данных</a></p>
		</div>
	</div>
</section>