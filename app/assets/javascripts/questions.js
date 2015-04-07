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
function titi (ID_descision_tree,ID_question,bool, nbr, margin)
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
      	nbr++;
      	// alert(bool);
      	margin = margin + 40;	
      	var id_question_next = "";
      	// alert("id route yes : " + data["question"]["id_route_yes"] + "nom question : "+ data["question"]["title_question"]);
      	var string = '<span style="margin-left: '+margin.toString()+'px;"></span> <b> '+data["question"]["title_question"].toString()+'</b> </br>';
				if (data["question"]["id_route_yes"] != null){
					if(bool == "yes"){id_question_next = data["question_avant"]["id_route_yes"].toString()}
					if(bool == "no"){id_question_next = data["question_avant"]["id_route_no"].toString()}
					string = string + '<span style="margin-left: '+margin.toString()+'px;"></span>  <button id="" class="btn btn-primary" value="60" type="submit" onclick="titi('+ID_descision_tree.toString()+','+id_question_next +',\'yes\','+nbr.toString()+','+margin+')" name="button">YES</button>';
      	}

      	// alert("YES : "+string);

      	// alert("id route yes : " + data["question"]["id_route_no"]+ "nom question : "+ data["question"]["title_question"]);
      	string = string + '</br>	<div id="YESS'+nbr.toString()+'"></div>	</br>';
      	if (data["question"]["id_route_no"] != null){
      		if(bool == "yes"){id_question_next = data["question_avant"]["id_route_yes"].toString()}
					if(bool == "no"){id_question_next = data["question_avant"]["id_route_no"].toString()}
      		// alert("question avant id route no :  "+data["question_avant"]["id_route_no"]);
      	string = string + '<span style="margin-left: '+margin.toString()+'px;"></span><button id="'+data["question"]["id"].toString()+'" class="btn btn-primary" value="60" type="submit" onclick="titi('+ID_descision_tree.toString()+','+id_question_next+',\'no\','+nbr.toString()+','+margin+')" name="button">NON</button>';
				}

				// alert(" NON :  " + string);


      	// alert(nbr);
      		$("#YESS"+nbr_avant).html(string);
      	// alert(data["question_avant"]["title_question"]);
      	// alert(data["id_route_yes"]);
      	// alert(data["id_route_no"]);
      }
		});
		}