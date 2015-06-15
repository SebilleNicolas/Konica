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



// $(document).ready(function(){
//   setTimeout(function(){
//     $('.alert').remove().fadeOut(5000); }, 5000);
//  });


$('.collapse').collapse();

$(document).ready(function() {
  $("input[type='file']").change(function(e) {
    // alert(document.getElementById("update_attachments_printer").dataset.delete);

   if (document.getElementById("update_attachments_printer").dataset.delete == "false"){
    // alert('ii');
    document.getElementById("update_attachments_printer").disabled = false;
   }
  });
  // alert(document.location.href.startsWith('http://localhost:3000/consommables/'));
  // alert(document.location.href);
  // if (document.location.href.contains('/consommables/'))
  // {
  //   alert("iiiiii");
  // }
  // if(document.location.href.startsWith('http://localhost:3000/consommables/') == true)
  // {
  //   window.location.reload();
  // }
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
          s = s + '<a href="http://localhost:3000/printers/'+resultat+'">'+nom+' </a> </br>';
          // $('#resultat').html('<a href="http://localhost:3000/printers/'+resultat+'">'+nom+' </a>');
          // alert(data[0].code_printers);
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
        // alert();
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
          // alert(data.length);
          while (cpt < data.length) {

           var resultat = data[cpt].id;
           // alert(data[cpt]);
          var nom = '';
          if ($('#column_search').val()== "code_consommables")
            {
              nom = data[cpt].code_consommables;
            }
            else if ($('#column_search').val()== "designation_consommables")
            {
              nom = data[cpt].designation_consommables;
            }
          s = s + '<a href="http://localhost:3000/consommables/'+resultat+'">'+nom+' </a> </br>';
          // s = s + nom+' </br>';
          // $('#resultat').html('<a href="http://localhost:3000/printers/'+resultat+'">'+nom+' </a>');
          // alert(data[0].code_printers);
          cpt++;
      }
         $('#resultat_consommables').html(s);
         // alert($('#resultat_consommables').val());
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
  $('.alert').delay(10000).fadeOut(2000);
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
    // $('#myTabDrop1 .active').dropdown('hide');
    // $('#pro').tab('show') ;
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


//$('#myTab a[href="#profile"]').tab('show') // Select tab by name
//$('#myTab a:first').tab('show') // Select first tab
//$('#myTab a:last').tab('show') // Select last tab
//$('#myTab li:eq(2) a').tab('show') // Select third tab (0-indexed)



