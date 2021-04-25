$(function() {
    var $win = $(window),
        $main = $('main'),
        $nav = $('nav'),
        navHeight = $nav.outerHeight(),
        navPos = $nav.offset().top,
        fixedClass = 'is-fixed';
  
    $win.on('load scroll', function() {
      var value = $(this).scrollTop();
      if ( value > navPos ) {
        $nav.addClass(fixedClass);
        $main.css('margin-top', navHeight);
      } else {
        $nav.removeClass(fixedClass);
        $main.css('margin-top', '0');
      }
    });
  });

  function header(){
    var head = "";
    head += '<header class="head"><div class="head__inner"><p class="head__btn"><a href="#">btn</a></p></div></header>';
    document.write(head);
    }