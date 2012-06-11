jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip
    placement: "bottom"
  $('.carousel').carousel()

  setTimeout ->
    $('#alert').fadeOut("slow")
  , 2000
