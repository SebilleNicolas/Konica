$ ->
  $('.delete-printers-consommable').click (e) ->
    if confirm("Voulez-vous supprimer le consommable de ce système d'impression ?")
      $.ajax
        url: 'delete_printers_consommables'
        type: 'GET'
        data:
          id: $(this).data('consommable')
          printer: $(this).data('printer')
        success: (data) ->
          alert 'Le consommable a été supprimé.'
          t = window.location.href.substring(0).split('/')
          s = t[4].substring(0).split('#')
          #alert s[0]
          #window.location.reload()
          document.location.href="http://localhost:3000/printers/ "+s[0]+" #consommableFalse"
          #document.location.href=t[0]+"#consommableFalse" 
          #$(this).closest('tr').fadeOut(2000)
          #alert this
          #$(e).closest("tr").fadeOut(2000)


  