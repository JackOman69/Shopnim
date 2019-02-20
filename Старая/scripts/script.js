// Функция, отвечающая за появление бокового меню
$(document).ready(function() {
    var $toggleButton = $('.toggle-button'),
        $menuWrap = $('.menu-wrap');
        $shadow = $('.shadow-overlay');
    $toggleButton.on('click', function() {
        $(this).toggleClass('button-open');
        $menuWrap.toggleClass('menu-show');
        $shadow.css('display', 'block');
    });
});

// Функция, увеличивающая кол-во товара в корзине
$(document).ready(function() {
    $('.minus').click(function () {
        var $input = $(this).parent().find('.numbers-input');
        var count = parseInt($input.val()) - 1;
        count = count < 1 ? 1 : count;
        $input.val(count);
        $input.change();
        return false;
    });
    $('.plus').click(function () {
        var $input = $(this).parent().find('.numbers-input');
        $input.val(parseInt($input.val()) + 1);
        $input.change();
        return false;
    });
});

// закрытие бокового меню при нажатии в любом месте сайта
// кроме самого меню
$(document).mouseup(function(e) {
  var $target = $(e.target);
  if ($target.closest(".menu-wrap").length == 0 && $target.closest('.toggle-button').length == 0) {
    $('.menu-wrap').removeClass('menu-show');
    $('.shadow-overlay').css('display', 'none');
  }
});


// Функция очистки поля у input-а в боковом меню
function clearInput() {
  document.getElementById('side-menu-input').value = "";
}
