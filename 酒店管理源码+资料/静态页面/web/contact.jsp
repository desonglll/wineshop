<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Sona Template">
    <meta name="keywords" content="Sona, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sona |模板</title>

    <!-- Google Font -->
<%--    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">--%>
<%--    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">--%>

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Offcanvas Menu Section Begin -->
<div class="offcanvas-menu-overlay"></div>
<div class="canvas-open">
    <i class="icon_menu"></i>
</div>
<div class="offcanvas-menu-wrapper">
    <div class="canvas-close">
        <i class="icon_close"></i>
    </div>
    <div class="search-icon search-switch">
        <i class="icon_search"></i>
    </div>
    <div class="header-configure-area">
        <div class="language-option">
            <img src="img/flag.jpg" alt="">
            <span>EN <i class="fa fa-angle-down"></i></span>
            <div class="flag-dropdown">
                <ul>
                    <li><a href="#">Zi</a></li>
                    <li><a href="#">Fr</a></li>
                </ul>
            </div>
        </div>
        <a href="#" class="bk-btn">现在预订</a>
    </div>
    <nav class="mainmenu mobile-menu">
        <ul>
            <li class="active"><a href="./index.html">首页</a></li>
            <li><a href="./rooms.html">房间</a></li>
            <li><a href="./about-us.html">关于我们</a></li>
            <li><a href="./pages.html">页数</a>
                <ul class="dropdown">
                    <li><a href="./room-details.html">房间的细节</a></li>
                    <li><a href="./blog-details.html">博客的细节</a></li>
                    <li><a href="#">家庭房</a></li>
                    <li><a href="#">高级客房</a></li>
                </ul>
            </li>
            <li><a href="./blog.html">新闻</a></li>
            <li><a href="./contact.html">接触</a></li>
        </ul>
    </nav>
    <div id="mobile-menu-wrap"></div>
    <div class="top-social">
        <a href="#"><i class="fa fa-facebook"></i></a>
        <a href="#"><i class="fa fa-twitter"></i></a>
        <a href="#"><i class="fa fa-tripadvisor"></i></a>
        <a href="#"><i class="fa fa-instagram"></i></a>
    </div>
    <ul class="top-widget">
        <li><i class="fa fa-phone"></i> (12) 345 67890</li>
        <li><i class="fa fa-envelope"></i> info.colorlib@gmail.com</li>
    </ul>
</div>
<!-- Offcanvas Menu Section End -->

<!-- Header Section Begin -->
<jsp:include page="header.jsp" flush="true" />
<!-- Header End -->

<!-- Contact Section Begin -->
<section class="contact-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="contact-text">
                    <h2>联系方式</h2>
                    <p>酒店坐落于上海浦东新区南洋泾路，距新国际博览中心约2.5公里，地铁9号线（芳甸路站3号口）下地铁，约50米即到；靠近地铁2号线科技馆站。
                        自酒店出发驱车前往世博馆、陆家嘴商圈约15分钟车程，临近的大拇指广场，联洋广场，金桥国际广场，嘉里中心等休闲购物广场是您忙碌之余的好去处；世纪公园，东方艺术中心，上海科技馆步行即达，让您享受别样的海派艺术氛围。</p>
                    <table>
                        <tbody>
                        <tr>
                            <td class="c-o">地址:</td>
                            <td>上海浦东新区南洋泾路</td>
                        </tr>
                        <tr>
                            <td class="c-o">电话:</td>
                            <td>010-111000000</td>
                        </tr>
                        <tr>
                            <td class="c-o">Email:</td>
                            <td>jiudian1101@126.com</td>
                        </tr>
                        <tr>
                            <td class="c-o">Fax:</td>
                            <td>+(12) 345 67890</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col-lg-7 offset-lg-1">
                <form action="#" class="contact-form">
                    <div class="row">
                        <div class="col-lg-6">
                            <input type="text" placeholder="Your Name">
                        </div>
                        <div class="col-lg-6">
                            <input type="text" placeholder="Your Email">
                        </div>
                        <div class="col-lg-12">
                            <textarea placeholder="Your Message"></textarea>
                            <button type="submit">现在提交</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
       <%-- <div class="map">
            <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.0606825994123!2d-72.8735845851828!3d40.760690042573295!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89e85b24c9274c91%3A0xf310d41b791bcb71!2sWilliam%20Floyd%20Pkwy%2C%20Mastic%20Beach%2C%20NY%2C%20USA!5e0!3m2!1sen!2sbd!4v1578582744646!5m2!1sen!2sbd"
                    height="470" style="border:0;" allowfullscreen=""></iframe>
        </div>--%>
    </div>
</section>
<!-- Contact Section End -->

<!-- Footer Section Begin -->
<jsp:include page="foot.jsp" flush="true" />
<!-- Footer Section End -->

<!-- Search model Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch"><i class="icon_close"></i></div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Search here.....">
        </form>
    </div>
</div>
<!-- Search model end -->

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>
</body>

</html>