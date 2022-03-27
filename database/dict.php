<?php
    function getFirstVerb(){
        $path = $_SERVER['DOCUMENT_ROOT'];
		$path .= "/database/connect.php";
		include $path;
        if ($status == "OK") {
            $sql = "SELECT * FROM db_verb ORDER BY v1 ASC "; //LIMIT 0,50
			$result = $conn->query($sql);
			if (mysqli_num_rows($result) > 0) {
                while($row = mysqli_fetch_assoc($result)) {
                    echo '
                    <tr>
                        <td>'.$row['v1'].'</td>
                        <td>'.$row['v2'].'</td>
                        <td>'.$row['v3'].'</td>
                        <td>'.$row['meaning'].'</td>
                    </tr>';
                }
            }
        }
    }
    function getWord_Data($id){
        $path = $_SERVER['DOCUMENT_ROOT'];
		$path .= "/database/connect.php";
		include $path;
        if ($status == "OK") {
            $sql = "SELECT * FROM db_word WHERE ID='".$id."'";
			$result = $conn->query($sql);
			if (mysqli_num_rows($result) > 0) {
                while($row = mysqli_fetch_assoc($result)) {
                    echo '<div class="word-today-main">';
                    echo '<p title="Nhấp chuột để nghe cách đọc của từ này" onclick="speakWords(this.innerText)">'.$row[wordName].'</p>';
                    echo '</div>';
                    $array = json_decode($row['wordDescription'],true);
                    $count = 0;
                    foreach ($array['type'] as $type) {
                        $count++;
                        echo '<div class="content-submain-object-main-text text-italic text-bold">';
                        echo $count.'. '.getTypeWord($type['name']).' &nbsp;<span>/'.$type['read'].'/</span>';
                        echo '</div>';
                        foreach ($type['meaning'] as $meaning) {
                            echo '<div class="content-submain-object-main-text">';
                            echo $meaning['en'];
                            echo '</div>';
                            echo '<div class="content-submain-object-main-text">';
                            echo $meaning['vi'];
                            echo '</div>';
                            echo 'Example:';
                            foreach ($meaning['ex'] as $example) {
                                echo '<div class="content-submain-object-main-text text-italic text-bold" >';
                                echo '<p class="text-italic text-bold" onclick="speakWords(this.innerText)" title="'.$example['vi'].'">- '.$example['en'].'</p>';                                
                                echo '</div>';
                            }
                        }
                    }
                    
                    if (isset($array['example'])) {
                        echo '<br>';
                        echo 'More example:';
                        foreach ($array['example'] as $example) {
                            $count++;
                            echo '<div class="content-submain-object-main-text text-italic text-bold" >';
                            echo '<p class="text-italic text-bold" onclick="speakWords(this.innerText)" title="'.$example['vi'].'">- '.$example['en'].'</p>';                                
                            echo '</div>';
                        }    
                    }
                }
			} else {
                echo 'Không tồn tại từ có mã số như vậy. Kiểm tra lại ID nhé';
            }
        }
    }

    function getRandWord_Data(){
        $path = $_SERVER['DOCUMENT_ROOT'];
		$path .= "/database/connect.php";
		include $path;
        if ($status == "OK") {
            $sql = "SELECT * FROM db_word ORDER BY RAND() LIMIT 1";
			$result = $conn->query($sql);
			if (mysqli_num_rows($result) > 0) {
                while($row = mysqli_fetch_assoc($result)) {
                    echo '<div class="word-today-main">';
                    echo '<p title="Nhấp chuột để nghe cách đọc của từ này" onclick="speakWords(this.innerText)">'.$row[wordName].'</p>';
                    echo '</div>';
                    $array = json_decode($row['wordDescription'],true);
                    $count = 0;
                    foreach ($array['type'] as $type) {
                        $count++;
                        echo '<br> <div class="content-submain-object-main-text text-italic text-bold">';
                        echo $count.'. '.getTypeWord($type['name']).' &nbsp;<span>/'.$type['read'].'/</span>';
                        echo '</div>';
                        foreach ($type['meaning'] as $meaning) {
                            echo '<div class="content-submain-object-main-text">';
                            echo $meaning['en'];
                            echo '</div>';
                            echo '<div class="content-submain-object-main-text">';
                            echo $meaning['vi'];
                            echo '</div>';
                            echo 'Example:';
                            foreach ($meaning['ex'] as $example) {
                                echo '<div class="content-submain-object-main-text text-italic text-bold" >';
                                echo '<p class="text-italic text-bold" onclick="speakWords(this.innerText)" title="'.$example['vi'].'">- '.$example['en'].'</p>';                                
                                echo '</div>';
                            }
                        }
                    }
                    echo '<div class="content-submain-object-main-text" style="margin:15px 0 0 0;">';
                    echo '<div class="inline-content-submain-object-main-text">Xem thêm chi tiết về từ vựng này&nbsp;</div>';
                    echo '<a class="inline-content-submain-object-main-text" href="/dict?mode=0&word='.$row['ID'];
                    echo '">ở đây</a>';
                    echo '</div>';
                }
			}
        }
    }

    function getListNewWords(){
        $path = $_SERVER['DOCUMENT_ROOT'];
		$path .= "/database/connect.php";
		include $path;
        if ($status == "OK") {
            $sql = "SELECT * FROM db_word ORDER BY date_modified DESC LIMIT 5";
			$result = $conn->query($sql);
			if (mysqli_num_rows($result) > 0) {
                while($row = mysqli_fetch_assoc($result)) {
                    echo '<a href="/dict?mode=0&word='.$row['ID'].'">'.$row['wordName'].'</a>';                    
                }
			}
        }
    }

    function getRandWord_Data1(){
        $path = $_SERVER['DOCUMENT_ROOT'];
		$path .= "/database/connect.php";
		include $path;
        if ($status == "OK") {
            $sql = "SELECT * FROM db_word ORDER BY ID DESC LIMIT 1";
			$result = $conn->query($sql);
			if (mysqli_num_rows($result) > 0) {
				while($row = mysqli_fetch_assoc($result)) {
					$lastID = $row['ID'];
				}
                $word_index = rand(1,$lastID);  
                $sql = "SELECT * FROM db_word WHERE `ID`='".$word_index."'";
                $result = $conn->query($sql);
				if (mysqli_num_rows($result) > 0) {
					while($row = mysqli_fetch_assoc($result)) {
                        echo '<div class="word-today-main">';
                        echo '<p title="Nhấp chuột để nghe cách đọc của từ này" onclick="speakWords(this.innerText)">'.$row[wordName].'</p>';
                        echo '</div>';
                        $array = json_decode($row['wordDescription'],true);
                        $count = 0;
                        foreach ($array['type'] as $type) {
                            $count++;
                            echo '<br> <div class="content-submain-object-main-text text-italic text-bold">';
                            echo $count.'. '.getTypeWord($type['name']).' &nbsp;<span>/'.$type['read'].'/</span>';
                            echo '</div>';
                            foreach ($type['meaning'] as $meaning) {
                                echo '<div class="content-submain-object-main-text">';
                                echo $meaning['en'];
                                echo '</div>';
                                echo '<div class="content-submain-object-main-text">';
                                echo $meaning['vi'];
                                echo '</div>';
                                echo 'Example:';
                                foreach ($meaning['ex'] as $example) {
                                    
                                    echo '<div class="content-submain-object-main-text text-italic text-bold" >';
                                    echo '<p class="text-italic text-bold" onclick="speakWords(this.innerText)" title="'.$example['vi'].'">- '.$example['en'].'</p>';                                
                                    echo '</div>';
                                }
                            }
                        }

                        //return $row['wordDescription'];
                    }
                }
			}
        }
    }

    function getTypeWord($ind) {
        switch ($ind) {
            case 'adj':   
                $word_type = 'Tính từ';
                break;
            case 'adv':   
                $word_type = 'Trạng từ';
                break;
            case 'idm':   
                $word_type = 'Thành ngữ';
                break;
            case 'n':   
                $word_type = 'Danh từ';
                break;
            case 'v':   
                $word_type = 'Động từ';
                break;
            case 'pre':   
                $word_type = 'Giới từ';
                break;
            case 'pro':   
                $word_type = 'Đại từ';
                break;
            case 'de':   
                $word_type = 'Chỉ từ, Mạo từ';
                break;
            case 'int':   
                $word_type = 'Thán từ';
                break;
            case 'con':   
                $word_type = 'Liên từ';
                break;
            case 'phr':   
                $word_type = 'Cụm từ';
                break;
        }
        return $word_type;
    }

    function ParseJSON2($what){
		$array = json_decode(getRandWord_Data(),true);
        switch ($what) {
            case 'main_data':
                
                break;
            case 'more_example':
                foreach ($array['type'] as $word) {
                    
                }
                break;
            default:
                return -1;
                break;
        }
        
		//return str_replace('&b;','<br>',$array['type'][0]['pronounce']);
	}
?>