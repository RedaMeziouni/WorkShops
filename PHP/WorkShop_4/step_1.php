<?php
function nombrepremier( $nombre ){
    for ($i = 2; $i < $nombre; $i++){
        if ($nombre % $i == 0){
            $fois = 1;
        }
    }
    if (isset($fois)) {
        echo "$nombre n'est pas un nombre premier";
    }
    else{
        echo "$nombre est un nombre premier";
    }
}
nombrepremier(7901);
echo "<br/>";
nombrepremier(10);
?>

<?php
function carre($x) {
    return $x*$x;
}
echo carre(10);
echo "<br>";
?>
<?php
function LogarithmeN($x){
    return Log($x);
}
echo LogarithmeN(10);
echo "<br>";
?>

<?php
function Racine($x){
    return sqrt($x);
}
echo Racine(49);

?>