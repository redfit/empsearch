jQuery ->
  setTimeout ->
    $('#alert').fadeOut("slow")
  , 3000
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip
    placement: "bottom"
  $('.carousel').carousel(
    interval: 5000
  )

