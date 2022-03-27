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
                        <div class="seperate-bar">
                            <div class="inline-seperate-bar seperate-bar-text">
                                Lời chào từ admin website
                            </div>
                            
                        </div>
                        <div class="content-inside translate-panel">
                            Thân chào các bạn đã đến website. Hiện tại chúng tôi đang nâng cấp, bảo trì và cập nhật dữ liệu nên sẽ phát sinh những vấn đề không mong muốn. Kính mong các bạn thông cảm và giúp đỡ để website càng hoàn thiện hơn. Chân thành cảm ơn các bạn
                        </div>
                        <div class="seperate-bar">
                            <div class="inline-seperate-bar seperate-bar-text">
                                Công cụ dịch
                            </div>
                            <div class="inline-seperate-bar seperate-bar-button seperate-bar-set-language" lang="en" title="Dịch tiếng Việt sang tiếng Anh" onclick="switchLang()">
                                <img src="/images/general-icon/queue.png" alt="">
                            </div>
                        </div>
                        <div class="content-inside translate-panel">
                            <script>
                                function httpGet(theUrl)
                                {
                                    var xmlHttp = new XMLHttpRequest();
                                    xmlHttp.open( "GET", theUrl, false ); // false for synchronous request
                                    xmlHttp.send( null );
                                    return xmlHttp.responseText;
                                }
                                function translateGoogle(str){
                                    let uri = '';
                                    let encoded = '';
                                    if ($('.seperate-bar-set-language').attr('lang')=='en') {
                                        uri = 'https://translate.googleapis.com/translate_a/single?client=gtx&sl=en&tl=';
                                        encoded = uri+'vi'+"&dt=t&q="+encodeURIComponent(str);
                                    } else {
                                        uri = 'https://translate.googleapis.com/translate_a/single?client=gtx&sl=vi&tl=';
                                        encoded = uri+'en'+"&dt=t&q="+encodeURIComponent(str);
                                    }                                    
                                    let js =  JSON.parse(httpGet(encoded)); 
                                    let st = '';
                                    js[0].forEach(merge);
                                    function merge(item) {
                                        st = st+item[0];
                                    }
                                    return st;
                                }
                            </script>
                            <div class="inner-content-inside inner-content-inside-sep">
                                <div class="language language-i">Tiếng Anh</div>
                                <div class="language seperate-minibar"></div>
                                <textarea class="text-to-translate" oninput="$('.text-translated').val(translateGoogle($('.text-to-translate').val()))" onchange="$('.text-translated').val(translateGoogle($('.text-to-translate').val()))">Welcome to Delion English</textarea>
                            </div>
                            <div class="inner-content-inside">
                                <div class="language language-o">Tiếng Việt</div>
                                <div class="language seperate-minibar"></div>
                                <textarea class="text-translated" readonly>Chào mừng đến với Delion English</textarea>
                            </div>
                        </div>

                        <?php
                            echo '<div class="seperate-bar">';
                            echo '<div class="inline-seperate-bar seperate-bar-text">';
                            echo 'Ngữ pháp mới được cập nhật';
                            echo '</div>';
                            echo '</div>';
                            echo '<div class="content-inside">';
                            echo '<div class="inner-content-inside-lesson">';
                            $path = $_SERVER['DOCUMENT_ROOT'];
                            $path .= "/database/connect.php";
                            include $path;
                            if ($status == "OK") {
                                $sql = "SELECT * FROM db_blogs  WHERE tag = '0' ORDER BY date_modified DESC LIMIT 5";
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
                        ?>       
                        <?php
                            echo '<div class="seperate-bar">';
                            echo '<div class="inline-seperate-bar seperate-bar-text">';
                            echo 'Bài học mới được cập nhật';
                            echo '</div>';
                            echo '</div>';
                            echo '<div class="content-inside">';
                            echo '<div class="inner-content-inside-lesson">';
                            $path = $_SERVER['DOCUMENT_ROOT'];
                            $path .= "/database/connect.php";
                            include $path;
                            if ($status == "OK") {
                                $sql = "SELECT * FROM db_blogs  WHERE tag = '1' ORDER BY date_modified DESC LIMIT 5";
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
                        ?>
                    </div>
                    <div class="inline-inner-content inner-content-submain">
                        <div class="content-submain-object new-words-today">
                            <div class="inobject-content-submain-object content-submain-object-title">
                                Từ vựng mới
                            </div>
                            <div class="inobject-content-submain-object inobject-content-submain-object-main">
                                <div class="content-submain-object-main-text">
                                    Đây là danh sách những từ vựng vừa đã được cập nhật gần nhất
                                </div>
                                <div class="content-submain-object-main-text text-italic text-bold list-word-5">
                                    <?php 
                                        getListNewWords(); 
                                    ?>
                                    
                                </div>
                            </div>
                            <div class="inobject-content-submain-object content-submain-object-title">
                                Từ vựng hôm nay
                            </div>
                            <div class="inobject-content-submain-object inobject-content-submain-object-main">
                                <div class="content-submain-object-main-text">
                                    Chúng tôi sẽ lựa chọn ngẫu nhiên từ vựng trong cơ sở dữ liệu của website.
                                </div>
                                <?php 
                                    echo getRandWord_Data();
                                ?>
                            </div>
                            <div class="inobject-content-submain-object content-submain-object-title" style="margin: 10px 0">
                                Tham gia server Discord
                            </div>
                            <div class="inobject-content-submain-object">
                                <iframe src="https://discord.com/widget?id=951135634238619708&theme=dark" allowtransparency="true" frameborder="0" width="100%" height="450" sandbox="allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts"></iframe> 
                            </div> 
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
</script>
