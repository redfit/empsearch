# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('.best_in_place').best_in_place()
  $("#collapseOne").collapse('show') if $(".form-inputs > .error").length > 0
  $("#upload_cancel").click ->
    $("#collapseOne").collapse('hide')

  $("#photos_list").vgrid
    easing: "easeOutQuint"
    useLoadImageEvent: true
    useFontSizeListener: true
    time: 500
    delay: 200
    fadeIn:
      time: 500
      delay: 200




