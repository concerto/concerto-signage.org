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

  $("#responsive-menu-trigger").on "click", (e) ->
    e.preventDefault()
    resp_menu = $("#responsive-main-menu")

    if $(resp_menu).hasClass("pure-menu-hidden")
      $(resp_menu).removeClass("pure-menu-hidden").addClass("pure-menu-open")
      $("#responsive-menu-trigger").html("Hide Menu")
    else
      $(resp_menu).removeClass("pure-menu-open").addClass("pure-menu-hidden")
      $("#responsive-menu-trigger").html("Show Menu")
    return

  return

$(document).ready ready
$(document).on "page:load", ready