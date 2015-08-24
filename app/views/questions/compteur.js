// Compteur à afficher dans la page question/new


// window.reload();
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
