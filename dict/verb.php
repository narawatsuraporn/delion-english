<?php 
error_reporting(0);
$lastID="";
$pos= $_POST['startfrom'];

$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "/database/connect.php";
include $path;


if ($status = "OK"){
	$sql = "SELECT * FROM db_verb ORDER BY id DESC LIMIT 1";
	$result = $conn->query($sql);
	if (mysqli_num_rows($result) > 0) {
		while($row = mysqli_fetch_assoc($result)) {
			$lastID = $row['ID'];
		}
	}  	

	if ($pos<$lastID ) {
		$sql = "SELECT * FROM db_verb  ORDER BY v1 ASC LIMIT ".$pos.",50 ";//$sql = "SELECT * FROM listcn";
        $result = $conn->query($sql);
        if (mysqli_num_rows($result) > 0) {
            $pos+=50;
            echo '<position>'.$pos.'</position>';
            while($row = mysqli_fetch_assoc($result)) {
                echo '
                    <tr>
                        <td>'.$row['v1'].'</td>
                        <td>'.$row['v2'].'</td>
                        <td>'.$row['v3'].'</td>
                        <td>'.$row['meaning'].'</td>
                    </tr>';
            }
        } else {
            
        }	
	} else {
		echo "123";
	}
	
}	
?>
