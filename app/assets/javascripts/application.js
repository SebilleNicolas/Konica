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
//= require tinymce
//= require ckeditor/init
//= require d3
//= require contact
//= require turbolinks
//= require bootstrap
//= require_bootstrap-sprockets

//= require_tree .
// $(document).ready(function(){
//   setTimeout(function(){
//     $('.alert').remove().fadeOut(5000); }, 5000);
//  });


$('.collapse').collapse();

$(document).ready(function(){
  $('.alert').delay(10000).fadeOut(2000);
 });

$(document).ready(function() {
  // SI #consommableFalse est présent dans l'URL
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



