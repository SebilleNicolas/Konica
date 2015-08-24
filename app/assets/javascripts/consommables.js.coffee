$ ->
  $("#valid-consommable").click (e) ->
    if confirm("Voulez-vous valider le consommable ?") # Clic sur OK
      $.ajax
        url: "update_valide"
        type: "GET"
        data:
          id: $(this).data("consommable")

        success: (data) ->
          $("#valid-true-false").html "true"
          alert "Le consommable a été validé."
          $("#valid-consommable").fadeOut(2000)
  $("#update-consommable").click (e) ->
    if confirm("Voulez-vous valider le consommable ?") # Clic sur OK
      $.ajax
        url: "update_valide"
        type: "GET"
        data:
          id: $(this).data("consommable")

        success: (data) ->
          $("#valid-true-false").html 
          alert "Le consommable a été validé."


