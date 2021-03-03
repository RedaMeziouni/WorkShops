<?php
$note = array(
    "Said" => 13,
    "Badr" => 16,
    "Najat" => 15,
);

// Ajout du karim
$note["karim"]=10;

// Supprimer la note de Badr
unset($note["badr"]);

// La note max du groupe
echo "<b>La note maximale est : </b>",max($note) . "<br>";

// La note min du groupe
echo "<b>La note minimale est : </b>",min($note) . "<br>";

// Trier le tableau par ordre Alphabetique 
ksort($note); // ksort() trie les clés du tableau par ordre croissant

foreach ($note as $key => $value) {
	echo "<b>La note de l’étudiant(e) $key est :</b> $value <br>";
}

// Classement des etudiants par ordre de merites
arsort($note); // arsort() tri croissant des valeurs

foreach ($note as $key => $value) {
	echo "<b>La note de l’étudiant $key est : $value </b> <br>";
}

// La moyenne de la class 
echo "<b>La moyenne de la classe est : </b>",round(array_sum($note)/count($note),2);
