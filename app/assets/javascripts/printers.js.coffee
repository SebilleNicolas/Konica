$ ->
  
  $('#valid-consommable').click (e) ->
    $.ajax
      url: 'update_valide'
      type: 'GET'
      data:
        id: $(this).data('id')
      success: (data) ->
        alert 'Le consommable '+id+' a été validé.'
        $(this).closest('tr').fadeOut();