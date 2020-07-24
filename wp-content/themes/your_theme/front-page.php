<?php
if (is_front_page()) {
    get_template_part('template-parts/pages/page');
} else {
    get_template_part('template-parts/pages/page-custom');
}
