<?php 
error_reporting(0);
$lastID="";
$str=$_POST['query'];

$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "/database/connect.php";
include $path;

echo "";
if ($status = "OK" && $str !==""){ 	
    $sql = "SELECT * FROM db_word WHERE wordName LIKE '$str%' LIMIT 15";
    $result = $conn->query($sql);
    if (mysqli_num_rows($result) > 0) {
        while($row = mysqli_fetch_assoc($result)) {
            echo '<a href="index.php?mode=0&word='.$row['ID'].'">'.$row['wordName'].'</a>';
        }
    }
}	
echo "";
?>
