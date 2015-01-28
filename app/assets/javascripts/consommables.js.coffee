$ ->
  
  $('#valid-consommable').click (e) ->
    
    $.ajax
      url: 'update_valide'
      type: 'GET'
      data:
        id: $(this).data('consommable')
      success: (data) ->
        $('#valid-true-false').html('true')
        alert 'Le consommable a été validé.'