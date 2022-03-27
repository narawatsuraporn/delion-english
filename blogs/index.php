<!DOCTYPE html>
<html>
<head>
    <?php
        header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
        header("Cache-Control: post-check=0, pre-check=0", false);
        header("Pragma: no-cache");
    ?>
    <?php  
        $path = $_SERVER['DOCUMENT_ROOT'];
        $path .= "/html-root/meta.html";
        $file = file_get_contents($path, true);
        echo $file;
        $path = $_SERVER['DOCUMENT_ROOT'];
		$path .= "/database/dict.php"; 
		include $path;
    ?>
</head>
<body>

    <div id="container">
        <?php  
            $path = $_SERVER['DOCUMENT_ROOT'];
            $path .= "/html-root/header.html";
            $file = file_get_contents($path, true);
            echo $file;
        ?>
        <div class="contain-wrapper">
            <div class="inner-wrapper">
                <?php  
                    $path = $_SERVER['DOCUMENT_ROOT'];
                    $path .= "/html-root/menu.html";
                    $file = file_get_contents($path, true);
                    echo $file;
                ?>
                <div class="inner-content">
                    <div class="inline-inner-content inner-content-main">
                        <div class="content-inside">
                            <div class="content-inside-select-mode">
                                <div class="inline-content-inside-select-mode content-inside-select-mode-text">
                                   Lựa chọn mục
                                </div>
                                <select class="inline-content-inside-select-mode content-inside-select-mode-select" name="mode" id="mode-select" onChange="NavigateBar()">
                                    <option value="" selected disabled hidden> Nhấp vào đây để lựa chọn ... </option>
                                    <option value="0">Lí thuyết cơ bản về tiếng Anh</option>
                                    <option value="1">Các bài học</option>
                                </select>
                            </div>
                        </div>

                        <?php
                            $html = '<hea>Title text here</hea>
                            <subhea>Lorem Ipsum dolor sir amet hahahah&apos;</subhea>';
                            function processHTML($html){
                                $html = str_replace('<hea>','<div class="seperate-bar">',$html);
                                $html = str_replace('<subhea>','<div class="content-inside">',$html);
                                $html = str_replace('</hea>','</div>',$html);
                                $html = str_replace('</subhea>','</div>',$html);
                                $html = str_replace('<pword>','<span class="word-pronounce" title="Click to hear how to say" onclick="speakWords(this.innerText)">',$html);
                                $html = str_replace('</pword>','</span>',$html);
                                $html = str_replace('<img src=','<img class="imgformat" src=',$html);
                                $html = str_replace('<psen>','<p class="word-pronounce" title="Click to hear how to say" onclick="speakWords(this.innerText)">',$html);
                                $html = str_replace('</psen>','</p>',$html);
                                $html = str_replace('<table>','<table style="width:100%">',$html);
                                return $html;
                            }
                            if (isset($_GET['id'])) {
                                $path = $_SERVER['DOCUMENT_ROOT'];
                                $path .= "/database/connect.php";
                                include $path;
                                if ($status == "OK") {
                                    $sql = "SELECT * FROM db_blogs WHERE ID = '".$_GET['id']."'";
                                    $result = $conn->query($sql);
                                    if (mysqli_num_rows($result) > 0) {
                                        while($row = mysqli_fetch_assoc($result)) {
                                            echo '<h1>'.$row['blogname'].'</h1>';
                                            echo '<p>Chỉnh sửa bởi '.$row['user_modified'].' vào ngày '.$row['date_modified'].'</p>';
                                            $html = $row['html_inner'];
                                            echo processHTML($html);
                                        }
                                    }
                                }                    
                            } else {
                                if (isset($_GET['mode']) && ($_GET['mode'] == 0 || $_GET['mode'] == 1)) {
                                    echo '<trans class="trans" hidden>'.$_GET['mode'].'</trans>';
                                    echo '<div class="seperate-bar">';
                                    echo '<div class="inline-seperate-bar seperate-bar-text">';
                                    echo 'Danh sách bài học';
                                    echo '</div>';
                                    echo '</div>';
                                    echo '<div class="content-inside">';
                                    echo '<div class="inner-content-inside-lesson">';
                                    $path = $_SERVER['DOCUMENT_ROOT'];
                                    $path .= "/database/connect.php";
                                    include $path;
                                    if ($status == "OK") {
                                        $sql = "SELECT * FROM db_blogs WHERE tag = '".$_GET['mode']."'";
                                        $result = $conn->query($sql);
                                        if (mysqli_num_rows($result) > 0) {
                                            while($row = mysqli_fetch_assoc($result)) {
                                                $url = '/blogs?id='.$row['ID'];
                                                echo '<div class="content-inside-lesson">';
                                                echo '<a href="'.$url.'" class="inline-inner-a"></a>';
                                                echo '<div class="content-inside-lesson-thumbnail content-inside-lesson-img">';
                                                echo '<img src = "'.$row['img_thumbnail'].'">';
                                                echo '</div>';
                                                
                                                echo '<div class="content-inside-lesson-thumbnail content-inside-lesson-text">';
                                                echo '<div class="content-inside-lesson-text-inside content-inside-lesson-text-header">'.$row['blogname'].'</div>';
                                                echo '<div class="content-inside-lesson-text-inside">'.$row['thumbnail'].'</div>';
                                                echo '</div>';

                                                echo '</div>';
                                            }
                                        } else {
                                            echo 'Không có bài học nào trong mục này';
                                        }
                                    }
                                    echo '</div>';
                                    echo '</div>';
                                } else {
                                    echo '<script>location.replace("/blogs?mode=1")</script>';
                                }
                                
                            }

                            
                        ?>
 
                        <!-- <div class="seperate-bar">
                            <div class="inline-seperate-bar seperate-bar-text">
                                Danh sách bài học
                            </div>
                        </div>
                       
                        <div class="content-inside">
                            <div class="inner-content-inside-lesson">
                                <div class="content-inside-lesson">
									<a href="#" class="inline-inner-a"></a>
                                    <div class="content-inside-lesson-thumbnail content-inside-lesson-img">
                                        <img src = "https://i.ytimg.com/vi/njDKi7dDOq4/maxresdefault.jpg">
									</div>
									<div class="content-inside-lesson-thumbnail content-inside-lesson-text">
                                        <div class="content-inside-lesson-text-inside content-inside-lesson-text-header"> Giới thiệu bảng chữ cái </div>
										<div class="content-inside-lesson-text-inside"> Tiếng Anh gồm có 27 chữ cái từ A đến Z. Chúng ta hãy cùng lướt xem để biết nhé... </div>
									</div>	
								</div>
                                <div class="content-inside-lesson">
									<a href="#" class="inline-inner-a"></a>
                                    <div class="content-inside-lesson-thumbnail content-inside-lesson-img">
                                        <img src = "https://i.ytimg.com/vi/njDKi7dDOq4/maxresdefault.jpg">
									</div>
									<div class="content-inside-lesson-thumbnail content-inside-lesson-text">
                                        <div class="content-inside-lesson-text-inside content-inside-lesson-text-header"> Giới thiệu bảng chữ cái </div>
										<div class="content-inside-lesson-text-inside"> Tiếng Anh gồm có 27 chữ cái từ A đến Z. Chúng ta hãy cùng lướt xem để biết nhé... </div>
									</div>	
								</div>
                            </div>
                        </div>  -->
                        
                    </div>
                    <div class="inline-inner-content inner-content-submain">
                        <div class="content-submain-object new-words-today">
                            <div class="inobject-content-submain-object content-submain-object-title">
                                Bài học
                            </div>
                            <div class="inobject-content-submain-object inobject-content-submain-object-main">
                                <div class="content-submain-object-main-text">
                                    Đây là trang dành cho việc tìm kiếm thông tin lí thuyết
                                </div>
                            </div>
                            

                            <?php
                            $actual_link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://".$_SERVER['SERVER_NAME'].'/blogs?id='.$_GET['id'];
                            if (isset($_GET['id'])) {
                                echo '<br><br>
                                <div class="inobject-content-submain-object content-submain-object-title">
                                    Bình luận
                                </div>
                                <div class="inobject-content-submain-object inobject-content-submain-object-main">
                                    <div class="content-submain-object-main-text">
                                        Bình luận lịch sự, không spam, gửi link bậy. Cảm ơn!
                                    </div>
                                </div>';
                                echo '<div class="inobject-content-submain-object inobject-content-submain-object-main" style="background:white">';
                                echo '<div class="fb-comments" data-href="'.$actual_link.'" data-width="100%" data-numposts="5"></div>';
                                echo'</div>';
                            }
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
    <?php  
        $path = $_SERVER['DOCUMENT_ROOT'];
        $path .= "/html-root/footer.html";
        $file = file_get_contents($path, true);
        echo $file;
    ?>
</body>
</html>
<script>
    function openMenu(){
        {$('.mobile-respond').addClass('mobile-respond-opened');}
    }
    function removeMenu(){
        {$('.mobile-respond').removeClass('mobile-respond-opened');}
    }
    function openSubMenu(){
        if ($('.openSubMenu').attr('opened')==1) {
            $('.openSubMenu').attr('opened',0);
            $('.inner-content-main').removeClass('obj-hide');
            $('.inner-content-submain').removeClass('obj-hide');
            $('.inner-content-main').removeClass('obj-show');
            $('.inner-content-submain').removeClass('obj-show');
            $('.inner-content-main').addClass('obj-hide');
            $('.inner-content-submain').addClass('obj-show');
        } else {
            $('.openSubMenu').attr('opened',1);
            $('.inner-content-main').removeClass('obj-hide');
            $('.inner-content-submain').removeClass('obj-hide');
            $('.inner-content-main').removeClass('obj-show');
            $('.inner-content-submain').removeClass('obj-show');
            $('.inner-content-submain').addClass('obj-hide');
            $('.inner-content-main').addClass('obj-show');
        }
    }

    $(window).resize(function() {
        var width = $(window).width();
        if (width > 650){
            {$('.mobile-respond').removeClass('mobile-respond-opened');}
        }
    });
    function switchLang(){
        if ($('.seperate-bar-set-language').attr('lang')=='en') {
            $('.seperate-bar-set-language').attr('lang','vi');
            $('.seperate-bar-set-language').attr('title','Dịch tiếng Việt sang tiếng Anh');
            $('.language-i').text("Tiếng Việt");
            $('.language-o').text("Tiếng Anh");
        } else {
            $('.seperate-bar-set-language').attr('lang','en');
            $('.seperate-bar-set-language').attr('title','Dịch tiếng Anh sang tiếng Việt');
            $('.language-o').text("Tiếng Việt");
            $('.language-i').text("Tiếng Anh");
        }
        $('.text-to-translate').val("");
        $('.text-translated').val("")
    }
    if ($('.trans').text()!=="") {
        $('#mode-select').val($('.trans').text())
    } else {
       
    }
    
    function NavigateBar() {
        let mode = ($('#mode-select').val())
        window.location.href="index.php?mode="+mode
    }
</script>
