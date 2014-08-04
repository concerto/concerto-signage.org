ready = undefined
ready = ->
  $("#nav-search").hide()
  $("#nav-search-toggle a").on "click", (e) ->
    e.preventDefault()
    if $(this).parents("ul").hasClass("search-on")
      $(this).parents("ul").find("li").show()
      $("#nav-search").hide()
      $(this).parents("ul").removeClass("search-on").addClass "search-off"
    else
      $(this).parents("ul").removeClass("search-off").addClass("search-on").find("li").hide()
      $(this).parents("li").show()
      $("#nav-search").show().find("input").focus()
    return

  return

$(document).ready ready
$(document).on "page:load", ready