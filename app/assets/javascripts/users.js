
//   $(function () {
//       $('#datetimepicker_deb').datetimepicker({
//       	format: 'L',
//       	showTodayButton: true
//       	 });
//       $('#datetimepicker_fin').datetimepicker({
// 			format: 'L',
// 			showTodayButton: true

//       });

// 			// $('#datetimepicker_deb').data("DateTimePicker").locale('fr');
//       // $("#datetimepicker_deb").on("dp.show", function (e) { });
//       // $("#datetimepicker_fin").on("dp.change", function (e) { });
// if($('#datetimepicker_deb').data("DateTimePicker").date() === "null"){
// 	alert("toto");
// }

//  alert($('#datetimepicker_deb').data("DateTimePicker").date());

// // if (document.getElementById("update_attachments_printer").dataset.delete == "false"){
// //     // alert('ii');
// //     document.getElementById("update_attachments_printer").disabled = false;
// //    }

//       $("#datetimepicker_deb").on("dp.change", function (e) {
//        $('#datetimepicker_fin').data("DateTimePicker").minDate($('#datetimepicker_deb').data("DateTimePicker").date());
//        $('#dd').focus();
//       });
//       $("#datetimepicker_fin").on("dp.change", function (e) {
//       	$('#dd').focus();
//          // alert($('#datetimepicker_fin').data("DateTimePicker").date());
//          // $('#datetimepicker_fin').data("DateTimePicker").focusOnShow(false);
//          // $('#datetimepicker_fin').data("DateTimePicker").minDate($('#datetimepicker_deb').data("DateTimePicker").date());
//       });

//    // $('#datetimepicker_deb').datetimepicker({
		
//    //  clearBtn: true,
//    //  locale: 'fr',
//    //  calendarWeeks: true,
//    //  todayHighlight: true
//    //              });


//   });










// BENOIT JS
$(document).on('ready page:change', function() {
  // $.fn.datetimepicker.dates
  $('#datetimepicker_deb').datetimepicker({
    language: 'fr',
    rtl: true,
    format: "dd MM yyyy",
    minView: 'month',
    autoclose: true,
    showClear: true,
        showClose: true,
    showTodayButton: true
    // startDate: moment(new Date()).add(1,'days').format("YYYY-MM-DD")
    //daysOfWeekDisabled:[0]
  });
  $('#datetimepicker_fin').datetimepicker({
    language: 'fr',
    rtl: true,
    format: "dd MM yyyy",
    minView: 'month',
    autoclose: true,
    showTodayButton: true
    //daysOfWeekDisabled:[0]
  });


function alo()
{
	//Si mes 2 date sont remplies
	if($('#input_date_fin').val() != "" && $('#input_date_fin').val() != ""){

	 $.ajax({
	      url: 'users/ajax_search_date',
	      data: {
	          date_deb: $(this).val()
	      },
	      type: "GET",
	      success: function(data) { 

	      }
	    });


	}
 
}



$('#button_date').on('click', function(){
// alert('jyhgjh');
	$('#datetimepicker_deb').datetimepicker().on('dp.show', function(ev){
        var a = moment(ev.date);
        alert(a);
	});
//Si mes 2 date sont remplies
if($('#input_date_deb').val() != "" && $('#input_date_fin').val() != ""){


// var i = parseInt($('#input_date_deb').val());
// alert(i);
// alert($('#object').val());
// alert($('#action').val());
// var isoDate = new Date(i).toISOString();
// alert(isoDate);
		// alert($("#datetimepicker_deb").datetimepicker('date').toSource());
		// alert(JSON.stringify($("#datetimepicker_deb").datetimepicker('date'), null, 4));
		// alert();

	 $.ajax({
	      url: 'ajax_search_date',
	      data: {
	          date_deb: $('#input_date_deb').val(),
	          date_fin: $('#input_date_fin').val(),
              action_obj: $('#action').val(),
              object_obj: $('#object').val()
	      },
	      type: "GET",
	      success: function(data) { 
                // alert(data.toSource());
                // alert(JSON.stringify(data, null, 4));
                // alert(data["object_list"][1]["id"].toString());


               


                var string =  "       <table class=\"table-bordered\" style=\"text-align:center; width:100%;\">";
                string = string +   " <thead>";
                string = string +   "  <tr>";
                string = string +   "<th style=\"text-align:center;\"> Objet </th>";
                string = string +   " <th style=\"text-align:center;\"> Date </th>";
                string = string +   " <th style=\"text-align:center;\"> Nom Utilisateur </th>";
                string = string +   " <th style=\"text-align:center;\"> Prenom Utilisateur </th>";
                string = string +   " </tr>";
                string = string +   "</thead>";
                string = string +   " <tbody> ";

                var i;
                var champ= "";
                var obj = "";

                if($('#action').val() == "user_add_"){ champ = "date_add";}
                    if($('#action').val() == "admin_valid_"){ champ = "date_valid";}
                        if($('#action').val() == "user_show_"){ champ = "date_show";}
                            if($('#action').val() == "user_update_"){ champ = "date_update";}


                if($('#object').val() == "incidents"){ obj = "incident";}
                    if($('#object').val() == "consommables"){ obj = "consommable";}
                        if($('#object').val() == "decision_trees"){ obj = "decision_tree";}
                            if($('#object').val() == "releve_compteurs"){ obj = "releve_compteur";}
                for(i = 0; i< data["object_list"].length; i++){
                string = string + "  <tr>";
                string = string + " <td>";
                var object_obj;
                 $.ajax({
                      url: 'ajax_search_object',
                      data: {
                          object_id:data["object_list"][i][obj+"_id"].toString(),
                          object_nature : obj
                      },
                       async: false,
                      type: "GET",
                      success: function(data_obj) {object_obj = data_obj;}
                    });

                 // alert(JSON.stringify(object_obj, null, 4));
                  string = string + "<a href=\"/"+$('#object').val()+"/"+ object_obj["object"]["id"].toString()+"\">";
                if(obj == "incident"){string = string + object_obj["object"]["code_incidents"].toString();}
                if(obj == "consommable"){string = string + object_obj["object"]["code_consommables"].toString();}
                if(obj == "decision_tree"){string = string + object_obj["object"]["title_decision_tree"].toString();}
                if(obj == "releve_compteur"){string = string + object_obj["object"]["id"].toString();}
                string = string + "</a>";
                
                string = string + " </td>";
                string = string + " <td>";
                string = string + data["object_list"][i][champ].toString();
                string = string + " </td>";

                var user;
                 $.ajax({
                      url: 'ajax_search_user',
                      data: {
                          user_id:data["object_list"][i]["user_id"].toString()
                      },
                       async: false,
                      type: "GET",
                      success: function(data_user) {user = data_user; }
                       
                    });
                  string = string + "  <td>";
                        string = string + "<a href=\"/user/"+user["user"]["id"].toString()+"\">";
                        string = string + user["user"]["first_name"].toString();
                        string = string + "</a>";
                        string = string + "  </td>";
                        string = string + "  <td>";
                        string = string + "<a href=\"/user/"+user["user"]["id"].toString()+"\">";
                        string = string + user["user"]["last_name"].toString();
                        string = string + "</a>";
                        string = string + "  </td>";
                         // alert(JSON.stringify(user, null, 4));
                string = string + " </tr>";
                }
                
                string = string + "  </tbody>";
                string = string + " </table>";



                $('#result_ajax_user').html(string);
	      }
	    });

	

}


});


$("#datetimepicker_deb").datetimepicker().on('changeDate', function(ev){
	// alert(ev.value);
	//    alert($('#datetimepicker_deb').data("DateTimePicker").date().value);
	var date_deb = ev.date;
	// alert(toto);
$('#datetimepicker_fin').datetimepicker('setStartDate', moment(ev.date).format("YYYY-MM-DD"));
$('#input_date_fin').val('');


// alert($(this).data("DateTimePicker").date());
// alert($("#datetimepicker_deb").data("DateTimePicker").date());

 // $('#datetimepicker_deb').datetimepicker('setEndDate', moment(ev.date).subtract(1,'days').format("YYYY-MM-DD"));
    // $('#datetimepicker_fin').datetimepicker('setStartDate', moment(ev.date).add(1,'days').format("YYYY-MM-DD"));
    // $('#datetimepicker_fin').datetimepicker('setEndDate', moment(ev.date).add(16,'days').format("YYYY-MM-DD"));
    // $('#time1').css("display","inline");
    // $('#time1 select').removeAttr("disabled");
    // $('#time2 select').attr("disabled", "disabled");
    // if (moment(ev.date).format("ddd") != "Sat"){
    //  $('#time1').css("display","inline");
    //  $('#time1 select').removeAttr("disabled");
    //  $('#time2 select').attr("disabled", "disabled");
    // }
    // else{
    //  $('#time1').css("display", "none");
    //  $('#time1 select').attr("disabled", "disabled");
    // }
    // if (moment(ev.date).format("ddd") == "Sat"){
    //  $('#time2').css("display","inline");
    //  $('#time2 select').removeAttr("disabled");
    //  $('#time1 select').attr("disabled", "disabled");
    // }
    // else{
    //  $('#time2').css("display", "none");
    //  $('#time2 select').attr("disabled", "disabled");
    // }
  });
  $("#datetimepicker_fin").datetimepicker().on('changeDate', function(ev){
    // $('#datetimepicker_deb').datetimepicker('setEndDate', moment(ev.date).subtract(1,'days').format("YYYY-MM-DD"));
    // $('#time3').css("display","inline");
    // $('#time3 select').removeAttr("disabled");
    // $('#time4 select').attr("disabled", "disabled");
    //if (moment(ev.date).format("ddd") != "Sat"){
    //  $('#time3').css("display","inline");
    //  $('#time3 select').removeAttr("disabled");
    //  $('#time4 select').attr("disabled", "disabled");
    //}
    //else{
    //  $('#time3').css("display", "none");
    //  $('#time3 select').attr("disabled", "disabled");
    //}
    //if (moment(ev.date).format("ddd") == "Sat"){
    //  $('#time4').css("display","inline");
    //  $('#time4 select').removeAttr("disabled");
    //  $('#time3 select').attr("disabled", "disabled");
    //}
    //else{
    //  $('#time4').css("display", "none");
    //  $('#time4 select').attr("disabled", "disabled");
    //}
  });
});