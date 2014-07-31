// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require tinymce-jquery


$(document).ready(function() {
	$("#nav-search").hide();

  $("#nav-search-toggle a").on("click", function(e) {
    e.preventDefault();

    if ( $(this).parents("ul").hasClass("search-on") ) {
      $(this).parents("ul").find("li").show();
      $("#nav-search").hide();
      $(this).parents("ul").removeClass("search-on").addClass("search-off");
    } else {
      $(this).parents("ul").removeClass("search-off").addClass("search-on").find("li").hide();

      $(this).parents("li").show();

      $("#nav-search").show().find("input").focus(); 
    }
  });
});
