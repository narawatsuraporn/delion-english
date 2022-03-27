<!DOCTYPE html>
<html>
<head>
    <?php
        if (!isset($_GET['mode'])) {
            header('location:index.php?mode=0');
        }
    ?>
    <?php
        if (isset($_GET['mode']) ) {
            if (($_GET['mode'] == 1 ||$_GET['mode'] ==0)) {
                echo '<trans class="trans" hidden>'.$_GET['mode'].'</trans>';
            }
            else {
                header('location:index.php?mode=0');
            }
            
        } 
    ?>
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
                                Tra từ điển
                            </div>
                            <!-- <div class="inline-seperate-bar seperate-bar-button seperate-bar-set-language" lang="en" title="Dịch tiếng Việt sang tiếng Anh" onclick="switchLang()">
                                <img src="/images/general-icon/queue.png" alt="">
                            </div> -->
                        </div>
                        <div class="content-inside">
                            
                            <div class="content-inside-select-mode">
                                <div class="inline-content-inside-select-mode content-inside-select-mode-text">
                                   Loại cần tra
                                </div>
                                <select class="inline-content-inside-select-mode content-inside-select-mode-select" name="mode" id="mode-select" onChange="NavigateBar()">
                                    <option value="0">Từ điển Anh Việt</option>
                                    <option value="1">Tra bảng động từ bất quy tắc</option>
                                </select>
                            </div>
                        </div>
                        <?php
                            if (isset($_GET['mode']) && $_GET['mode'] == 1) {
                                echo '<constrant class="verb-cnt" num="50" hidden></constrant>';
                                echo '<table class="irregular-verbs" style="width:100%">';
                                echo '<tr><th>Vo</th><th>V2</th><th>V3</th><th>Nghĩa</th></tr>';
                                getFirstVerb(); 
                                echo '</table>';
                                //echo '<div class="next-words" onclick="goForward($('.chr(39).'.verb-cnt'.chr(39).').attr('.chr(39).num.chr(39).'))" style="transform: rotate(270deg);">';
                                //echo '<img src="/images/general-icon/back.png">';
                                //echo '</div>';
                            } elseif (isset($_GET['mode']) && $_GET['mode'] == 0)  {
                                echo '<input type="text" name="input-word" style="margin: 5px 0" oninput="searchTextDict()" placeholder="Nhập tên từ cần tìm và ấn phím enter" class="input-text-dict"><div class="seperate-minibar"></div><div class="suggested-words"></div>';
                                if (isset($_GET['word']) && $_GET['word'] !== '') {
                                    echo '<div class="inobject-content-submain-object">';
                                    echo getWord_Data($_GET['word']);
                                    echo '</div>';
                                }
                            }
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
    $('#mode-select').val($('.trans').text())
    function NavigateBar() {
        let mode = ($('#mode-select').val())
        window.location.href="index.php?mode="+mode
    }
    /*function goForward(pos,query){
        $.ajax({
            type: "POST",
            url: "verb.php",
            data: { 
                'startfrom': pos
            }
        }).done(function(msg) {

            if (msg.indexOf("<position>")!==-1) {
                $('.irregular-verbs').append( msg.split('</position>')[1])
            } else {
                alert('This is the end of the list');
            }
            let post = msg.split('</position>')[0].split('<position>')[1];
            $('.verb-cnt').attr('num',post);
            
        });
    }*/
    function searchTextDict() {
        let str = $('.input-text-dict').val();
        $.ajax({
            type: "POST",
            url: "dict.php",
            data: { 
                'query': str
            }
        }).done(function(msg) {
            if (msg !== "") {
                $('.suggested-words').html(msg) 
            } else {
                $('.suggested-words').text("Không có từ nào trong cơ sở dữ liệu") 
            }
        });
    }
</script>
