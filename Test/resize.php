<?php    
ini_set('display_errors', 1); ini_set('display_startup_errors', 1); error_reporting(E_ALL);
$img = file_get_contents('https://wejdan.net/storage/76885b92a25a4f42a43c9a28ae130a8a-removebg-preview.png');

$im = imagecreatefromstring($img);

$width = imagesx($im);

$height = imagesy($im);

$newwidth = '120';

$newheight = '120';

$thumb = imagecreatetruecolor($newwidth, $newheight);

imagecopyresized($thumb, $im, 0, 0, 0, 0, $newwidth, $newheight, $width, $height);

$bb=imagejpeg($thumb,'../storage/products/myChosenName.jpg'); //save image as jpg


$imgs=file_get_contents($bb);
imagedestroy($thumb); 

imagedestroy($im);
echo $imgs;


?>