<?php
$DBHotels = new PDO(
  "mysql:dbname=hoteles;host=localhost; charset=utf8",
  'root'
);
$hotelList = $DBHotels->query("SELECT * FROM hoteles");

$q = $_REQUEST["q"];

$hint = "";

// lookup all hints from array if $q is different from ""
if ($q !== "") {
  $q = strtolower($q);
  $len = strlen($q);
  foreach ($hotelList as $hotel) {
    $name = $hotel["nombre"];
    if (stristr($q, substr($name, 0, $len))) {
      if ($hint === "") {
        $hint = $name;
      } else {
        $hint .= ", $name";
      }
    }
  }
}

// Output "no suggestion" if no hint was found or output correct values
echo $hint === "" ? "no suggestion" : $hint;

?>