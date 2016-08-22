function init_script() {
  a_start('#home-title', 'fadeInDown');
  a_start('#home-login', 'bounceIn');
  a_start('#user_email', 'shake');
  a_start('#user_password', 'shake');
  a_start('#user_done_notif', 'fadeInLeft')
  a_start('.form-input', 'fadeInDown');
  a_start('.form-notif', 'fadeInLeft');
}

if (typeof Turbolinks != 'undefined') {
  $(document).on("page:change", function () {
    init_script();
  });
  $(document).on("page:load", function () {
    init_script();
  });
} else {
  $(document).ready(function () {
    init_script();
  });
  $(document).on("page:load", function () {
    init_script();
  });
}

function a_start(arg, action){
  $(arg).addClass('animated '+ action);
}

function a_end(arg, action){
  $(arg).one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', action);
}
