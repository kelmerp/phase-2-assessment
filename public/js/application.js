$(document).ready(function() {
  $('#create-event').submit(function(event){
      event.preventDefault();
      var data = $(this).serialize();
      $.post('/event/create', data, function(success){
        $('#create-event').append(success)
      });
    });
  });
});
