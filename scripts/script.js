// Функция, отвечающая за появление бокового меню
$(document).ready(function() {
    var $toggleButton = $('.toggle-button'),
        $menuWrap = $('.menu-wrap');
    $toggleButton.on('click', function() {
        $(this).toggleClass('button-open');
        $menuWrap.toggleClass('menu-show');
    });
});

// закрытие бокового меню при нажатии в любом месте сайта
// кроме самого меню
$(document).mouseup(function(e) {
  var $target = $(e.target);
  if ($target.closest(".menu-wrap").length == 0 && $target.closest(".toggle-button").length == 0) {
    $(".menu-wrap").removeClass("menu-show");
  }
});


// Функция очистки поля у input-а в боковом меню
function clearInput() {
  document.getElementById("side-menu-input").value = "";
}
