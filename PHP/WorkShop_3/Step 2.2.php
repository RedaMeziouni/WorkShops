<?php

//Fonction 
function affichtable($note){
    echo "<table border=1>";
    foreach ($note as $x => $x_value){
        echo "<tr><td>".$x."</td><td>".$x_value."</td></tr>";
    }
    echo "</table>";
}

//** */
//Déclaration tableau
$note = array( "said" => "13", "badr" => "16", "najat" => "15",);
//Afficher Tableau 
affichtable($note);

//Insertion
$note["karim"] ="10";
$note=array_merge($note, ["zrze" => "18"]);

// suppression
unset($note["badr"]);

//affichage
affichtable($note);

//Calcul du mac
echo "La note maximale est :".max($note)."<br>";

// Calcul du min
echo "La note minimale est :".min($note);


//Trier par ordre alphabétique
ksort($note);
affichtable($note);
echo "<br>";
arsort($note);
affichtable($note);

//La moyenne de la classe
echo "la moyenne de la classe est:".round(array_sum($note)/count($note),precision:2);

?>