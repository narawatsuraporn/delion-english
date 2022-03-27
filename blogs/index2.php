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
                        <h1>Where does it come from?</h1>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                        <br> <br>
                        <div class="seperate-bar">1. Cách dùng</div>
                        <div class="content-inside">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                            <br> <br>
                            <div class="seperate-bar">S + V2-ed + O</div>
                            <br>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                            <br>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                            <br>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                            <br>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                            <br>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                            <br>
                            <span class="word-pronounce" title="Click to hear how to say" onclick="speakWords(this.innerText)">a</span><span class="word-pronounce" title="Click to hear how to say" onclick="speakWords(this.innerText)">b</span><span class="word-pronounce" title="Click to hear how to say" onclick="speakWords(this.innerText)">c</span>
                            <img src="https://www.englishclub.com/images/pronunciation/alphabet-pronunciation.png" alt="">
                            <table style="width:100%">
                                <tr>
                                    <th>Tên</th>
                                    <th>Chủ sở hưu</th>
                                    <th>Lí do lưu</th>
                                </tr>
                                <tr>
                                    <td>Cookies từ bên hosting server</td>
                                    <td>000webhost</td>
                                    <td>Lưu trữ cache để load web nhanh hơn</td>
                                </tr>
                                <tr>
                                    <td>Facebook Cookies</td>
                                    <td>Facebook</td>
                                    <td>Lưu trữ thông tin khi thảo luận</td>
                                </tr>
                            </table>
                            <a href="http://google.com">fdsf</a>
                        </div>
                        [img=]
                        [a=]
                        [br]
                        [form]fdsfdsfdsfdsfdsfsd
                        <!-- <div class="seperate-bar">Bản quyền</div>
                        <div class="content-inside">
                            Code và thiết kế của chúng tôi đều có bản quyền. Xin đừng sao chép mã nguồn của trang web này. 
                        </div>
                        <div class="seperate-bar">Dữ liệu, học liệu</div>
                        <div class="content-inside">
                            Dữ liệu thông tin trong website thì chúng tôi không chịu trách nhiệm. Vì đây là trang thông tin mã nguồn mở, tức là mọi người đều có thể chỉnh sửa, thay đổi dữ liệu. Bạn có thể tự xác nhận những thông tin này, không nên quá tin tưởng vào những thông tin này.
                            <br><br>
                            Ban quản trị và các tài khoản đăng kí có trách nhiệm giám sát và xác thực thông tin có trong cơ sở dữ liệu
                        </div>
                        <div class="seperate-bar">Tài khoản</div>
                        <div class="content-inside">
                            Ai cũng có thể tạo tài khoản trên đây. Ban quản trị không có quyền dùng thông tin này cho mục đích khác.
                            <br><br>
                            Ban quản trị có quyền xóa tài khoản và sẽ thông báo khi bạn đã vi phạm thỏa thuận.
                        </div>
                        <div class="seperate-bar">Quảng cáo</div>
                        <div class="content-inside">
                            Chúng tôi không đặt bất cứ quảng cáo của bên thứ 3
                        </div>
                        <div class="seperate-bar">Cookies</div>
                        <div class="content-inside">
                            Chúng tôi không có ý tạo cookies để lưu thông tin của người dùng. Dưới đây là danh sách cookies được sử dụng không mục đích chiếm đoạt thông tin của bạn <br><br>
                            <table style="width:100%">
                                <tr>
                                    <th>Tên</th>
                                    <th>Chủ sở hưu</th>
                                    <th>Lí do lưu</th>
                                </tr>
                                <tr>
                                    <td>Cookies từ bên hosting server</td>
                                    <td>000webhost</td>
                                    <td>Lưu trữ cache để load web nhanh hơn</td>
                                </tr>
                                <tr>
                                    <td>Facebook Cookies</td>
                                    <td>Facebook</td>
                                    <td>Lưu trữ thông tin khi thảo luận</td>
                                </tr>
                              
                                </table>
                        </div> -->
                    </div>
                    <div class="inline-inner-content inner-content-submain">
                        <div class="content-submain-object new-words-today">
                            <div class="inobject-content-submain-object content-submain-object-title">
                                Tuyên bố và miễn trừ trách nhiệm
                            </div>
                            <div class="inobject-content-submain-object inobject-content-submain-object-main">
                                <div class="content-submain-object-main-text">
                                    Không có thông tin gì thêm ở đây
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
