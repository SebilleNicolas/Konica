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
        // alert("avant : "+nbr);
      	nbr++;
        // alert("apres : "+nbr);
      	// alert(bool);
        if ( document.getElementById('YESS'+nbr.toString()) ) { nbr++; }
        if ( document.getElementById('NO'+nbr.toString()) ) { nbr++; }
      	margin = margin + 40;	
      	var id_question_next = "";
      	// alert("id route yes : " + data["question"]["id_route_yes"] + "nom question : "+ data["question"]["title_question"]);
      	var string = '<span style="margin-left: '+margin.toString()+'px;"></span> <b> '+data["question"]["title_question"].toString()+'</b> </br>';
				if (data["question"]["id_route_yes"] != null){
					if(bool == "yes"){id_question_next = data["question_avant"]["id_route_yes"].toString()}
					if(bool == "no"){id_question_next = data["question_avant"]["id_route_no"].toString()}
					string = string + '  <button style="margin-left: '+margin.toString()+'px;" id="" class="btn btn-primary" value="60" type="submit" onclick="titi('+ID_descision_tree.toString()+','+id_question_next +',\'yes\','+nbr.toString()+','+margin+')" name="button">YES</button>';
      	}

      	// alert("YES : "+string);

      	// alert("id route yes : " + data["question"]["id_route_no"]+ "nom question : "+ data["question"]["title_question"]);
      	string = string + '<div id="YESS'+nbr.toString()+'"></div>	</br>';
      	if (data["question"]["id_route_no"] != null){
      		if(bool == "yes"){id_question_next = data["question_avant"]["id_route_yes"].toString()}
					if(bool == "no"){id_question_next = data["question_avant"]["id_route_no"].toString()}
      		// alert("question avant id route no :  "+data["question_avant"]["id_route_no"]);
      	string = string + ' <button style="margin-left: '+margin.toString()+'px;" id="'+data["question"]["id"].toString()+'" class="btn btn-primary" value="60" type="submit" onclick="titi('+ID_descision_tree.toString()+','+id_question_next+',\'no\','+nbr.toString()+','+margin+')" name="button">NON</button>';
				string = string + ' <div id="NO'+nbr.toString()+'"> </div> '
        }

				// alert(" NON :  " + string);


      	// alert("Nombre indentation : "+nbr);
        if(bool=="yes"){    		$("#YESS"+nbr_avant).html(string);  $("#NO"+nbr_avant).html(""); }
        if(bool=="no"){        $("#NO"+nbr_avant).html(string);   $("#YESS"+nbr_avant).html("");}
      	// alert(data["question_avant"]["title_question"]);
      	// alert(data["id_route_yes"]);
      	// alert(data["id_route_no"]);
      }
		});
		}








$seconde=0;
$minute=0;
$heure=0;
$jour=0;
d = new Date();
interupt = false;
Compteur();

// Fonction Compteur qui appele la fonction ActualiserCompteur() toutes les secondes
function Compteur()
{
  setInterval("ActualiserCompteur()",1000);
}
// Fonction qui appele une fonction toutes les secondes

//Compteur
function ActualiserCompteur()
  {
  if (!interupt)
  {
    $seconde++;
    
    if($seconde ==60)
    {
      $seconde=0;
      $minute++;
    }

    if($minute ==60)
    {
      $seconde=0;
      $minute=0;
      $heure++;
    }
    if($heure ==24)
    {
      $seconde=0;
      $minute=0;
      $heure=0;
      $jour++;
    }

    if($heure < 10)
    {
    $text = "0" + $heure+ " : ";
    
      
    }
    else
    {
      $text =  $heure+ " : ";
    }
    
    if($minute < 10)
    {
    $text += "0" + $minute + " : ";
    
      
    }
    else
    {
      $text += $minute+ " : ";
    }

    if($seconde < 10)
    {
    $text += "0" + $seconde;
    
      
    }
    else
    {
      $text += $seconde;
    }

  $("#Compteur").val($text);

    
    // $("#CompteurJour").val($jour);
  }
}

//saisie
$("#Compteur").focusin(function(){

  interupt = true;


});
//sort de saisie
$("#Compteur").focusout(function(){
  $text = $("#Compteur").val;
  str=$text.split(" : ");
  $seconde = str[0];
  $minute = str[1];
  $heure = str[2];

  interupt = false;


});

