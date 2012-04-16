jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()
  $('.carousel').carousel(
    # intervalやらない方法がないので１時間設定
    interval: 36000000
  )


