
function load() {window.location.reload();} 
$(document).ready(function() {
// $("#question_yes").css('visibility', 'hidden');
// $("#question_no").css('visibility', 'hidden');
// 	var id_yes = document.getElementById('toto').dataset.idyes;
// 	var id_no  = document.getElementById('toto').dataset.idno;
// 	alert(id_yes);
// 	alert(id_no);


// 	$("#"+id_yes).click(function() {
// 		alert("coucou");
// 	});

// 	$("#"+id_no).click(function() {
// 		alert("Afficher la question non ");
// 	});

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
function titi (ID_descision_tree,ID_question,bool, nbr, margin, cpt_color)
  {	
  	//alert(ID_descision_tree);
  	 $.ajax({
      url: 'ajax_titi',
      data: {
      	decision_tree: ID_descision_tree,
          question_avant: ID_question,
          bool: bool
        },
      type: "GET",
      success: function(data) {
      	var nbr_avant = nbr; 
        // alert("avant : "+nbr);
      	nbr++;
        cpt_color++;
        if(cpt_color.toString() == "5" ){cpt_color =0;}
        var color="";
        if(cpt_color.toString() == "0"){color="primary";}
          if(cpt_color.toString() == "1"){color="success";}
            if(cpt_color.toString() == "2"){color="danger";}
              if(cpt_color.toString() == "3"){color="info";}
                if(cpt_color.toString() == "4"){color="warning";}


        

        bool_questions_end = false;
        // alert("apres : "+nbr);
      	// alert(bool);
        if ( document.getElementById('YESS'+nbr.toString()) ) { nbr++; }
        if ( document.getElementById('NO'+nbr.toString()) ) { nbr++; }
      	margin = margin + 40;	
      	var id_question_next = "";
      	// alert("id route yes : " + data["question"]["id_route_yes"] + "nom question : "+ data["question"]["title_question"]);
        if  (data["question"]["id_route_yes"] == null)
          {bool_questions_end = true;}
      	var string = '<span style="margin-left: '+margin.toString()+'px;"></span> <b> '+data["question"]["title_question"].toString() + '</b>';
        if(bool_questions_end == true){
          string = string + '<span class="label label-info" style="margin-left: 10px;">FIN</span>';
        }
        string = string + ' </br>';
				if (data["question"]["id_route_yes"] != null){
					if(bool == "yes"){id_question_next = data["question_avant"]["id_route_yes"].toString()}
					if(bool == "no"){id_question_next = data["question_avant"]["id_route_no"].toString()}
					string = string + '  <button style="margin-left: '+margin.toString()+'px;" id="" class="btn btn-'+color+'" value="60" type="submit" onclick="titi('+ID_descision_tree.toString()+','+id_question_next +',\'yes\','+nbr.toString()+','+margin+','+cpt_color+')" name="button">YES</button>';
      	}

      	// alert("YES : "+string);

      	// alert("id route yes : " + data["question"]["id_route_no"]+ "nom question : "+ data["question"]["title_question"]);
      	string = string + '<div id="YESS'+nbr.toString()+'"></div>	</br>';
      	if (data["question"]["id_route_no"] != null){
      		if(bool == "yes"){id_question_next = data["question_avant"]["id_route_yes"].toString()}
					if(bool == "no"){id_question_next = data["question_avant"]["id_route_no"].toString()}
      		// alert("question avant id route no :  "+data["question_avant"]["id_route_no"]);
      	string = string + ' <button style="margin-left: '+margin.toString()+'px;" id="'+data["question"]["id"].toString()+'" class="btn btn-'+color+'" value="60" type="submit" onclick="titi('+ID_descision_tree.toString()+','+id_question_next+',\'no\','+nbr.toString()+','+margin+','+cpt_color+')" name="button">NON</button>';
				string = string + ' <div id="NO'+nbr.toString()+'"> </div> '
        }

				// alert(" NON :  " + string);


      	// alert("Nombre indentation : "+nbr);
        if(bool=="yes"){    		$("#YESS"+nbr_avant).html(string);  $("#NO"+nbr_avant).html(""); }
        if(bool=="no"){        $("#NO"+nbr_avant).html(string);   $("#YESS"+nbr_avant).html("");}
      	// alert(data["question_avant"]["title_question"]);
      	// alert(data["id_route_yes"]);
      	// alert(data);
      }
		});
		}




