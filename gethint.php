<?php
// Array with names
$a[] = "Anna";
$a[] = "Brittany";
$a[] = "Cinderella";
$a[] = "Cher";
$a[] = "Diana";
$a[] = "Donna";
$a[] = "Eva";
$a[] = "Fiona";
$a[] = "Gunda";
$a[] = "Hege";
$a[] = "Helda";
$a[] = "Inga";
$a[] = "Ivan";
$a[] = "Johanna";
$a[] = "Kitty";
$a[] = "Kristian";
$a[] = "Linda";
$a[] = "Louise";
$a[] = "Nina";
$a[] = "Neftali";
$a[] = "Ophelia";
$a[] = "Diego";
$a[] = "Octavio";
$a[] = "Petunia";
$a[] = "Amanda";
$a[] = "Jannel";
$a[] = "Raquel";
$a[] = "Cindy";
$a[] = "Doris";
$a[] = "Eve";
$a[] = "Evita";
$a[] = "Joaquin";
$a[] = "Sunniva";
$a[] = "Tove";
$a[] = "Unni";
$a[] = "Felipe";
$a[] = "Violet";
$a[] = "Etienne";
$a[] = "Liza";
$a[] = "Luz";
$a[] = "Montserrat";
$a[] = "Elizabeth";
$a[] = "Ellen";
$a[] = "Wenche";
$a[] = "Vicky";

// get the q parameter from URL
$q = $_REQUEST["q"];

$hint = "";

// lookup all hints from array if $q is different from ""
if ($q !== "") {
  $q = strtolower($q);
  $len=strlen($q);
  foreach($a as $name) {
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
