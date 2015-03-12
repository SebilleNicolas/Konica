$(document).ready(function() {
// $("#question_yes").css('visibility', 'hidden');
// $("#question_no").css('visibility', 'hidden');


	$("#Id_route_yes_true").change(function() {
		$("#question_no").css('visibility', 'hidden');
		$("#question_yes").css('visibility', 'visible');
		// alert('kjuholjljljlijlijlij');

  });
	$("#Id_route_yes_false").change(function() {
		$("#question_yes").css('visibility', 'hidden');
		$("#question_no").css('visibility', 'visible');
		// alert('llllllllllllllllllll');
  });
});