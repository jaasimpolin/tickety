# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('#booking_show_id').parent().hide()
  bookings = $('#booking_show_id').html()
  $('#booking_cinema_id').change ->
    cinema = $('#show_cinema_id :selected').text()
    escaped_cinema = cinema.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(bookings).filter("optgroup[label='#{escaped_cinema}']").html()
    if options
      $('#booking_show_id').html(options)
      $('#booking_show_id').parent().show()
    else
      $('#booking_show_id').empty()
      $('#booking_show_id').parent().hide()
