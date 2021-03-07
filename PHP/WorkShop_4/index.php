<?php

function verification_date($date) {
    echo substr($date, 0,10) ;
    echo "<br>";
    echo substr($date, 11) ;
}
if(!empty($_POST)) {
$date=$_POST["date"];
verification_date($date);
}
$date = strtotime($_POST["date"]); 
echo date('Y/m/d h:i', $date);
?>