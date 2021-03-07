<!-- Third -->
<?php
//Définition de la fonction
function initmaj(&$tab)
{
foreach($tab as $ind=>$val)
{
$tab[$ind]=ucfirst(strtolower($val));
}
return $tab;
}
//Utilisation
$tabch= array("AzertToTO","Sous peAu","sARtHES jp");
print_r(initmaj($tabch));
?>