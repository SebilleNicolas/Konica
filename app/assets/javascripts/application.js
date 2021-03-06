// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require jquery-ui
//= require autocomplete-rails
//= require ckeditor/init
//= require d3
//= require contact
//= require turbolinks
//= require bootstrap

//= require_bootstrap-sprockets
//= require moment
//= require bootstrap-datetimepicker
//= require bootstrap-datetimepicker.fr
//= require_tree .




$('.collapse').collapse();

$(document).ready(function() {
  $("input[type='file']").change(function(e) {
  //Bloquer la modification des pièces jointes si aucune PJ n'est selectionnée
  if (document.getElementById("update_attachments_printer").dataset.delete == "false"){
    document.getElementById("update_attachments_printer").disabled = false;
   }
  });


//Recherche automatique en autocompletion du code_printers
$("#printer_code_printers").keyup(function() {
    $.ajax({
      url: 'printers/ajax_printer',
      data: {
          value: $(this).val()
      },
      type: "GET",
      success: function(data) {
        if (data.status == true)
        {
          //Si on rentre moins de 2 caractere
          if ($("#printer_code_printers").val().length < 2){
            $('#resultat_printers').html("Rentrez au moins 2 caractères.");
          }
          //Sinon
         else
         {
          $('#resultat_printers').html("Il n'y a pas de résultat a votre recherche.");
         }
        }
        else
        {
          var cpt = 0;
          var s = "";
          // alert(data.length);
          while (cpt < data.length) {

          var resultat = data[cpt].id;
          var nom = data[cpt].code_printers;
          s = s + '<a href="http://150.17.157.160/printers/'+resultat+'">'+nom+' </a> </br>';
          cpt++;
      }
         $('#resultat_printers').html(s);
        }
      }
    });
  });
  //Annuler la possibilité d'appuyer sur la touche entrer
  $('#printer_code_printers').keypress(function(e){
    if ( e.which == 13 ) return false;
  });


 
//Recherche automatique en autocompletion du code_consommables
$("#consommable_code_consommables").keyup(function() {
    $.ajax({
      url: 'consommables/ajax_consommable',
      data: {
          value: $(this).val(),
          column_search: $('#column_search').val()
      },
      type: "GET",
      success: function(data) {
        // alert(data.status);

        //Si il ne trouve pas de data
        if (data.status == true)
        {
          //Si on rentre moins de 2 caractere
          if ($("#consommable_code_consommables").val().length < 2){
            $('#resultat_consommables').html("Rentrez au moins 2 caractères.");
          }
          //Sinon
         else
         {
          $('#resultat_consommables').html("Il n'y a pas de résultat a votre recherche.");
         }
        }
        else
        {
          var cpt = 0;
          var s = "";
          while (cpt < data.length) {

           var resultat = data[cpt].id;
          var nom = '';
          if ($('#column_search').val()== "code_consommables")
            {
              nom = data[cpt].code_consommables;
            }
            else if ($('#column_search').val()== "designation_consommables")
            {
              nom = data[cpt].designation_consommables;
            }
          s = s + '<a href="http://150.17.157.160/consommables/'+resultat+'">'+nom+' </a> </br>';
            cpt++;
      }
         $('#resultat_consommables').html(s);
        }
      }
    });
  });
  //Annuler la possibilité d'appuyer sur la touche entrer
  $('#consommable_code_consommables').keypress(function(e){
    if ( e.which == 13 ) return false;
  });
//FIN du document.ready
});



$(document).ready(function(){
  $('.alert').delay(10000).hide(2000);
 });

$(document).ready(function() {
  // SI #descriptImprimante est présent dans l'URL
	if(document.location.href.indexOf("#descriptImprimante") > -1){
		$('#myTab a[href="#descriptImprimante"]').tab('show');
	}
    if(document.location.href.indexOf("#incidentTrue") > -1){
    $('#myTab a[href="#incidentTrue"]').tab('show');
  }
    if(document.location.href.indexOf("#incidentFalse") > -1){
    $('#myTab a[href="#incidentFalse"]').tab('show');
  }
    if(document.location.href.indexOf("#consommableFalse") > -1){
    $('#myTab a[href="#consommableFalse"]').tab('show');
  }
    if(document.location.href.indexOf("#consommableTrue") > -1){
    $('#myTab a[href="#consommableTrue"]').tab('show');
  }
    if(document.location.href.indexOf("#compteurTrue") > -1){
    $('#myTab a[href="#compteurTrue"]').tab('show');
  }
    if(document.location.href.indexOf("#compteurFalse") > -1){
    $('#myTab a[href="#compteurFalse"]').tab('show');
  }
    if(document.location.href.indexOf("#ajouterIncident") > -1){
    $('#myTab a[href="#ajouterIncident"]').tab('show');
  }
    if(document.location.href.indexOf("#ajouterConsommable") > -1){
    $('#myTab a[href="#ajouterConsommable"]').tab('show');
  }
    if(document.location.href.indexOf("#ajouterCompteur") > -1){
    $('#myTab a[href="#ajouterCompteur"]').tab('show');
  }
});


$(document).ready(function() {
  // SI #consommableFalse est présent dans l'URL
  if(document.location.href.indexOf("#cc") > -1){
    alert("fff");
    alert(document.location.href.indexOf("#cc"));
    $('#myTab a[href="#incidentFalse"]').tab('show');
  }
});





$('.alert').alert("close");


$('#myTab a').click(function (e) {
  e.preventDefault()
  alert('tttf');
  $(this).tab('show')
});
$(function() {
  return $("a[data-remote]").on("ajax:success", function(e, data, status, xhr) {
    // return alert("L'objet a bien été supprimé.");
  });
});

$('.carousel').carousel({
  interval: 5000
})

