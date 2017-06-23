// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$(document).on('turbolinks:load', function () {
  $(document).on('click', ".arrow" , function() {
      $('html,body').animate({
          scrollTop: $(".intro_section").offset().top},
          'slow');
  });
  $(document).on('click', ".you_tube_spot", function() {

    $('.loading_page_mid').removeClass("hide");
    $('html,body').animate({
      scrollTop: $(".you_tube_section").offset().top -40},
      'slow');
  });
  $(document).on("click", ".submit_email", function() {
    var name = $('.customer_name').val();
    var email = $('.customer_email').val();
    var input = $('.customer_input').val();
  })
  $(document).on("click", ".close_contact_user", function() {
    $(".email_container").addClass('hidden');
    $(".customer_email").val('');
    $(".customer_name").val('');
    $(".customer_input").val('');
  })
  $(document).on("click", ".you_tube_spot", function() {
    $(".you_tube_spot").removeClass('pressed_in');
    $(".you_tube_spot").addClass('pop_out');
    var data = $(this).attr('data-index');
    var page = $(this).attr('data-page');
    $(this).removeClass('pop_out');
    $(this).addClass('pressed_in');
    $(".page_page_mid ").html("<iframe id='myIframe' style='position: relative; height: 300px; width: 100%;' src='https://www.youtube.com/embed/" + data + "'style='margin: auto;' frameborder='0' allowfullscreen></iframe>").hide();
    var iframeSrc = $(this).attr('href');
    $('#myIframe').load(function(){
      $('.loading_page_mid').addClass("hide");
      $('.page_page_mid').fadeOut(10,function(){
        $('.page_page_mid' + ' iframe').attr('src',iframeSrc);
        $('.page_page_mid').fadeIn(1800);
      });
    })
  })
  
  $(window).on('scroll', function() {
  	var scrollPos = $(window).scrollTop();
  	if (scrollPos > 100) {
  		$('.arrow').addClass('hidden');
  	}
  	else {
  		$('.arrow').removeClass('hidden');
  	}
  });
  $(".home_button").on('click', function() {
      $('html,body').animate({
          scrollTop: $(".home_section").offset().top},
          'slow');
  });
  $(".intro_button").on('click', function() {
      $('html,body').animate({
          scrollTop: $(".intro_section").offset().top},
          'slow');
  });
  $(".featured_works_button").on('click', function() {
      $('html,body').animate({
          scrollTop: $(".featured_works_section").offset().top},
          'slow');
  });
  $(".works_button").on('click', function() {
      $('html,body').animate({
          scrollTop: $(".works_section").offset().top},
          'slow');
  });
  $(".contact_us_button").on('click', function() {
      $('html,body').animate({
          scrollTop: $(".contact_us_section").offset().top},
          'slow');
  });
  $(".social_media_button").on('click', function() {
      $('html,body').animate({
          scrollTop: $(".social_media_section").offset().top},
          'slow');
  });
  var trigger = $('.hamburger'),
      overlay = $('.overlay'),
     isClosed = true;
    function hamburger_cross() {
      if (isClosed == false) {
        $('.logo_image').animate({
          marginRight: "18px"
          
        }, 1000);
        overlay.hide();
        trigger.removeClass('is-open');
        trigger.addClass('is-closed');
        isClosed = true;
      } else {
        $('.logo_image').animate({
          marginRight: "120px"
        }, 1000)
        overlay.show();
        trigger.removeClass('is-closed');
        trigger.addClass('is-open');
        isClosed = false;
      }
  }
  function run(e) {
    $("#wrapper").toggleClass("active");
    hamburger_cross();
  }
  $('[data-toggle="offcanvas"]').click(function(e) {
      run(e);
  });
});













