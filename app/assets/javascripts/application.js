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
  var soundcloud_list = {genre_based_thematic_samples: '335414613', emotional: '329904726', action_intense: '329904489', horror_mysterious: '329904155', uplifting: '329904403', video_game_based: '336466351'};
  $(document).on('click', ".soundcloud_buttons", function() {
    current_playlist = $(this).attr('id');
    $('.loading_sound_cloud_mid').removeClass('hide');
    $('.soundcloud_widget_holder').html("<iframe id='soundcloud_iframe' width='500' height='450' scrolling='no' frameborder='no' src='https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/playlists/" + soundcloud_list[current_playlist] + "&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false'></iframe>");
    $('.soundcloud_buttons').removeClass('clicked_soundcloud_buttons');
    $(this).addClass('clicked_soundcloud_buttons');
  })
  $(document).on('click', ".arrow" , function() {
      $('html,body').animate({
          scrollTop: $(".intro_section").offset().top},
          'slow');
  });
  $(document).on('click', ".you_tube_spot", function() {

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
    $(".page_page_mid ").html("<iframe id='myIframe' style='position: relative; height: 300px; width: 100%;' src='https://www.youtube.com/embed/" + data + "'style='margin: auto;' frameborder='0' allowfullscreen></iframe>");
    var iframeSrc = $(this).attr('href');
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
          'fast');
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













