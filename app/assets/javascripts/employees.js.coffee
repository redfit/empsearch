# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  if $('.pagination').length
    $(window).scroll ->
      if $("#tab-normal").attr("class") is "active" and $('#employees').css("display") isnt "none"
        url = $('.pagination .next_page a').attr('href')
        if url && $(window).scrollTop() > $(document).height() - $(window).height() - 50
          $('.pagination').text("Fetching more products...")
          $.getScript(url)
    $(window).scroll()


  $("#tab-normal, #tab-detail").click((e)->
    $('.carousel').carousel('pause')
  )

