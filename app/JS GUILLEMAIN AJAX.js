$("#order_address3").keyup(function() {
    $.ajax({
      url: 'search',
      data: {
          value: $(this).val()
      },
      type: "GET",
      success: function(data) {
        if(data.status == true) {
          $("#suite").fadeIn(1000);
          $("#not_found").css('visibility', 'hidden')
        } 
        if(data.status == false) {
          $("#not_found").css('visibility', 'visible');
          $("#suite").fadeOut(1000);
        }
        if(data.status == null) {
          $("#suite").fadeOut(1000);
          $("#not_found").css('visibility', 'hidden');
        }
      }
    });
  });
  $('#order_address3').keypress(function(e){
    if ( e.which == 13 ) return false;
  });