# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  $('.focus-content').toggle()
  $('#navlist a').on "click", (e) ->
    e.preventDefault()
    $('#navlist a').removeClass("active")
    $(this).addClass("active")
    $('div.screenshots div.images img').hide()
    $('.'+ event.target.id).toggle()



$(document).ready ready
$(document).on "page:load", ready
