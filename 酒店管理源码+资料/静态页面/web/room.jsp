<%--
  Created by IntelliJ IDEA.
  User: zhouk
  Date: 2021/11/18
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
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
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

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
                    <li><a href="./room-details.html">房间细节</a></li>
                    <li><a href="./blog-details.html">微博细节</a></li>
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

<!-- Breadcrumb Section Begin -->
<div class="breadcrumb-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-text">
                    <h2>我们的房间</h2>
                    <div class="bt-option">
                        <a href="./home.html">首页</a>
                        <span>房间</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb Section End -->

<!-- Rooms Section Begin -->
<section class="rooms-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="room-item">
                    <img src="img/room/room-1.jpg" alt="">
                    <div class="ri-text">
                        <h4>溢价国王的房间</h4>
                        <h3>159$<span>/每晚</span></h3>
                        <table>
                            <tbody>
                            <tr>
                                <td class="r-o">大小:</td>
                                <td>30 英尺</td>
                            </tr>
                            <tr>
                                <td class="r-o">容量:</td>
                                <td>最大3人</td>
                            </tr>
                            <tr>
                                <td class="r-o">床:</td>
                                <td>国王的床</td>
                            </tr>
                            <tr>
                                <td class="r-o">服务:</td>
                                <td>无线网络、电视、卫生间、…</td>
                            </tr>
                            </tbody>
                        </table>
                        <a href="details.jsp" class="primary-btn">更多细节</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="room-item">
                    <img src="img/room/room-2.jpg" alt="">
                    <div class="ri-text">
                        <h4>豪华客房</h4>
                        <h3>159$<span>/每晚</span></h3>
                        <table>
                            <tbody>
                            <tr>
                                <td class="r-o">大小:</td>
                                <td>30 英尺</td>
                            </tr>
                            <tr>
                                <td class="r-o">容量:</td>
                                <td>最大5人</td>
                            </tr>
                            <tr>
                                <td class="r-o">床:</td>
                                <td>国王的床</td>
                            </tr>
                            <tr>
                                <td class="r-o">服务:</td>
                                <td>无线网络、电视、卫生间、…</td>
                            </tr>
                            </tbody>
                        </table>
                        <a href="#" class="primary-btn">更多细节</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="room-item">
                    <img src="img/room/room-3.jpg" alt="">
                    <div class="ri-text">
                        <h4>双人间</h4>
                        <h3>159$<span>/每晚</span></h3>
                        <table>
                            <tbody>
                            <tr>
                                <td class="r-o">大小:</td>
                                <td>30 英尺</td>
                            </tr>
                            <tr>
                                <td class="r-o">容量:</td>
                                <td>最大2人</td>
                            </tr>
                            <tr>
                                <td class="r-o">床:</td>
                                <td>国王的床</td>
                            </tr>
                            <tr>
                                <td class="r-o">服务:</td>
                                <td>无线网络、电视、卫生间、…</td>
                            </tr>
                            </tbody>
                        </table>
                        <a href="#" class="primary-btn">更多细节</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="room-item">
                    <img src="img/room/room-4.jpg" alt="">
                    <div class="ri-text">
                        <h4>豪华房间</h4>
                        <h3>159$<span>/每晚</span></h3>
                        <table>
                            <tbody>
                            <tr>
                                <td class="r-o">大小:</td>
                                <td>30 英尺</td>
                            </tr>
                            <tr>
                                <td class="r-o">容量:</td>
                                <td>最大1人</td>
                            </tr>
                            <tr>
                                <td class="r-o">床:</td>
                                <td>国王的床</td>
                            </tr>
                            <tr>
                                <td class="r-o">服务:</td>
                                <td>无线网络、电视、卫生间、…</td>
                            </tr>
                            </tbody>
                        </table>
                        <a href="#" class="primary-btn">更多细节</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="room-item">
                    <img src="img/room/room-5.jpg" alt="">
                    <div class="ri-text">
                        <h4>房间查看</h4>
                        <h3>159$<span>/每晚</span></h3>
                        <table>
                            <tbody>
                            <tr>
                                <td class="r-o">大小:</td>
                                <td>30 英尺</td>
                            </tr>
                            <tr>
                                <td class="r-o">容量:</td>
                                <td>最大1人</td>
                            </tr>
                            <tr>
                                <td class="r-o">床:</td>
                                <td>国王的床</td>
                            </tr>
                            <tr>
                                <td class="r-o">服务:</td>
                                <td>无线网络、电视、卫生间、…</td>
                            </tr>
                            </tbody>
                        </table>
                        <a href="#" class="primary-btn">更多细节</a>
                    </div>
                </div>
            </div>

          <%--  <div class="col-lg-12">
                <div class="room-pagination">
                    <a href="#">1</a>
                    <a href="#">2</a>
                    <a href="#">Next <i class="fa fa-long-arrow-right"></i></a>
                </div>
            </div>--%>
        </div>
    </div>
</section>
<!-- Rooms Section End -->

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
