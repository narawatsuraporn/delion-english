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
                        <div class="seperate-bar">Giới thiệu website </div>
                        <div class="content-inside">
                            Hoan nghênh các bạn đã vào trang website học tiếng Anh delion.cf của chúng tôi
                            <br><br>
                            Viết bằng ngôn ngữ JS, PHP và CSS
                            <br><br>
                            Bản quyền thiết kế thuộc về Narawat Suraporn
                        </div>
                        <div class="seperate-bar">Cập nhật</div>
                        <div class="content-inside">
                            <div>
                                Phiên bản: 1.0
                            </div>
                            <div>
                                Phiên bản mới chưa có nội dung cập nhật. 
                            </div>
                        </div>
                        
                    </div>
                    <div class="inline-inner-content inner-content-submain">
                        <div class="content-submain-object new-words-today">
                            <div class="inobject-content-submain-object content-submain-object-title">
                                Thanh điều hướng
                            </div>
                            <div class="inobject-content-submain-object inobject-content-submain-object-main">
                                <div class="content-submain-object-main-text">
                                    Không có thông tin gì mới ở đây
                                </div>
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
