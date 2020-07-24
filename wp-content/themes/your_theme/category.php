<!--start category.php!!! -->

<?php

if (is_category(array('news'))) { 
	get_template_part('./template-parts/posts/category-news');
} else {
	get_template_part('./template-parts/posts/category');
}

?>