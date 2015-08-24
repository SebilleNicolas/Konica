$ ->
  $("#button_add_title_decision_tree").click (e) ->
    #if confirm("Voulez-vous ?") # Clic sur OK
   		#alert ($('#title_decision_tree').val())
    $.ajax
      url: "add_title_first_question_decision_tree"
      type: "GET"
      data:
        title_decision_tree: $('#title_decision_tree').val()

      success: (data) ->
        $('#titi').html('<%= escape_javascript(render( :partial => "decision_trees/decision_tree")) %>')
        $("#button_add_title_decision_tree").fadeOut()
        document.getElementById("button_update_title_decision_tree").style.visibility="visible"
        #alert "dazdazdazdazdazdazdazd."