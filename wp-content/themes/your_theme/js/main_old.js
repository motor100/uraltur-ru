// TO-TOP плавная прокрутка НАВЕРХ
document.getElementById("to-top").onclick = function() {
  scroll(0, 0);
}

// Фиксированное верхнее меню
window.onscroll = function() {
    let scrMenu = window.pageYOffset || document.documentElement.scrollTop;
  if (scrMenu > 200) {
    document.getElementById("top-nav-ul").style.position = "fixed";
    document.getElementById("top-nav-ul").classList.add("sticky");
  } else {
    document.getElementById("top-nav-ul").style.position = "static";
    document.getElementById("top-nav-ul").classList.remove("sticky");
  }
}

// Слайдер на главной
var slides = document.querySelectorAll('#slides .slide');
var currentSlide = 0;
var slideInterval = setInterval(nextSlide,5000);

function nextSlide() {
  slides[currentSlide].className = 'slide';
  currentSlide = (currentSlide+1)%slides.length;
  slides[currentSlide].className = 'slide showing';
}
