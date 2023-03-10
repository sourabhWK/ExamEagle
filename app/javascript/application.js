// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery
//= require jquery_ujs
import "@hotwired/turbo-rails"
import "controllers"




$(document).ready(function() {
  $('#new_language').on('submit', function(event) {
    event.preventDefault();

    var formData = $(this).serialize();

    $.ajax({
      url: '/languages/create_ajax',
      type: 'POST',
      data: formData,
      dataType: 'json',
      success: function(response) {
        console.log(response);
      },
      error: function(jqXHR, textStatus, errorThrown) {
        console.log(textStatus + ': ' + errorThrown);
      }
    });
  });
});

$('#newLanguageModal').submit(function(e){
  e.preventDefault();
  $.ajax({
      type: "POST",
      url: $(create_ajax).attr( 'action' ),
      data: $(create_ajax).serialize(),
      success: function( response ) {
          console.log( response );
      }
  });

  return false;
});
  