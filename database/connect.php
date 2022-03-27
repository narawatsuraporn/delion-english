<?php
error_reporting(E_ERROR | E_PARSE);
$servername = "sql207.ihostfull.com";
$username = "uoolo_31285025";
$password = "Dellbiet";
$database = "uoolo_31285025_word";
$status ='';
$conn = mysqli_connect($servername, $username, $password, $database);
$conn -> set_charset("utf8");
mysql_set_charset('utf8', $conn);
if (!$conn) {
	$status ='notOK';
} 
else {
	$status = "OK";
}
?> 
