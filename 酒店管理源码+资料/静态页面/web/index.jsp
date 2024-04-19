<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Sona Template">
    <meta name="keywords" content="Sona, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>梦想酒店</title>

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
    <div class="search-icon  search-switch">
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
        <a href="#" class="bk-btn">预定</a>
    </div>
    <nav class="mainmenu mobile-menu">
        <ul>
            <li class="active"><a href="./index.html">首页</a></li>
            <li><a href="./rooms.html">房间</a></li>
            <li><a href="./about-us.html">关于我们 Us</a></li>
            <li><a href="./pages.html">页数</a>
                <ul class="dropdown">
                    <li><a href="./room-details.html">房间资料表</a></li>
                    <li><a href="#">豪华房间</a></li>
                    <li><a href="#">家庭房</a></li>
                    <li><a href="#">高级房</a></li>
                </ul>
            </li>
            <li><a href="./blog.html">新闻</a></li>
            <li><a href="./contact.html">联系方式</a></li>
        </ul>
    </nav>
    <div id="mobile-menu-wrap"></div>
    <div class="top-social">
        <a href="#"><i class="fa fa-facebook"></i></a>
        <a href="#"><i class="fa fa-twitter"></i></a>
        <a href="#"><i class="fa fa-tripadvisor"></i></a>
        <a href="#"><i class="fa fa-instagram"></i></a>
    </div>
<%--    <ul class="top-widget">
        <li><i class="fa fa-phone"></i> (12) 345 67890</li>
        <li><i class="fa fa-envelope"></i> info.colorlib@gmail.com</li>
    </ul>--%>
</div>
<!-- Offcanvas Menu Section End -->

<!-- Header Section Begin -->
<jsp:include page="header.jsp" flush="true" />
<!-- Header End -->

<!-- Hero Section Begin -->
<section class="hero-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="hero-text">
                    <h1>豪华酒店</h1>
                    <p>以下是最好的酒店预订网站，包括国际酒店的推荐
                        旅游和寻找便宜的酒店房间。</p>
                    <a href="#" class="primary-btn">现在</a>
                </div>
            </div>
            <div class="col-xl-4 col-lg-5 offset-xl-2 offset-lg-1">
                <div class="booking-form">
                    <h3>查询预定酒店信息</h3>
                    <form action="#">
                        <div class="check-date">
                            <label for="date-in">身份证号码：</label>
                            <input type="text" class="date-input" id="date-in">
                            <i class="icon_calendar"></i>
                        </div>
                        <div class="check-date">
                            <label >联系电话</label>
                            <input type="text" class="date-input" >
                            <i class="icon_calendar"></i>
                        </div>

                        <button type="submit">查询(发送到手机)</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="hero-slider owl-carousel">
        <div class="hs-item set-bg" data-setbg="img/hero/hero-1.jpg"></div>
        <div class="hs-item set-bg" data-setbg="img/hero/hero-2.jpg"></div>
        <div class="hs-item set-bg" data-setbg="img/hero/hero-3.jpg"></div>
    </div>
</section>
<!-- Hero Section End -->

<!-- Services Section End -->
<section class="services-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <span>我们的服务</span>
                    <h2>发现我们的服务</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-sm-6">
                <div class="service-item">
                    <i class="flaticon-036-parking"></i>
                    <h4>旅行计划</h4>
                    <p><strong>我的同僚们都不愿意坐在我的位子上，因为我的精英们都是临时的
                        劳工和多洛尔麦格纳。</strong></p>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="service-item">
                    <i class="flaticon-033-dinner"></i>
                    <h4>宴会服务处</h4>
                    <p>我的同僚们都不愿意坐在我的位子上，因为我的精英们都是临时的
                        劳工和多洛尔麦格纳。</p>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="service-item">
                    <i class="flaticon-026-bed"></i>
                    <h4>当临时保姆</h4>
                    <p>我的同僚们都不愿意坐在我的位子上，因为我的精英们都是临时的
                        劳工和多洛尔麦格纳。.</p>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="service-item">
                    <i class="flaticon-024-towel"></i>
                    <h4>洗衣店</h4>
                    <p>我的同僚们都不愿意坐在我的位子上，因为我的精英们都是临时的
                        劳工和多洛尔麦格纳。.</p>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="service-item">
                    <i class="flaticon-044-clock-1"></i>
                    <h4>雇用司机</h4>
                    <p>我的同僚们都不愿意坐在我的位子上，因为我的精英们都是临时的
                        劳工和多洛尔麦格纳。</p>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="service-item">
                    <i class="flaticon-012-cocktail"></i>
                    <h4>酒和酒吧</h4>
                    <p>我的同僚们都不愿意坐在我的位子上，因为我的精英们都是临时的
                        劳工和多洛尔麦格纳。</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Services Section End -->

<!-- Home Room Section Begin -->
<section class="hp-room-section">
    <div class="container-fluid">
        <div class="hp-room-items">
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="hp-room-item set-bg" data-setbg="img/room/room-b1.jpg">
                        <div class="hr-text">
                            <h3>双人床房间</h3>
                            <h2>199$<span>/每晚</span></h2>
                            <table>
                                <tbody>
                                <tr>
                                    <td class="r-o">大小:</td>
                                    <td>30 英尺</td>
                                </tr>
                                <tr>
                                    <td class="r-o">容量:</td>
                                    <td>最大人数 5</td>
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
                <div class="col-lg-3 col-md-6">
                    <div class="hp-room-item set-bg" data-setbg="img/room/room-b2.jpg">
                        <div class="hr-text">
                            <h3>高质量国王的房间</h3>
                            <h2>159$<span>/每晚</span></h2>
                            <table>
                                <tbody>
                                <tr>
                                    <td class="r-o">大小:</td>
                                    <td>30 英尺</td>
                                </tr>
                                <tr>
                                    <td class="r-o">容量:</td>
                                    <td>最多5人</td>
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
                <div class="col-lg-3 col-md-6">
                    <div class="hp-room-item set-bg" data-setbg="img/room/room-b3.jpg">
                        <div class="hr-text">
                            <h3>豪华客房</h3>
                            <h2>198$<span>/每晚</span></h2>
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
                <div class="col-lg-3 col-md-6">
                    <div class="hp-room-item set-bg" data-setbg="img/room/room-b4.jpg">
                        <div class="hr-text">
                            <h3>家庭房</h3>
                            <h2>299$<span>/每晚</span></h2>
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
            </div>
        </div>
    </div>
</section>
<!-- Home Room Section End -->

<!-- Testimonial Section Begin -->



<!-- Footer Section Begin -->
<jsp:include page="foot.jsp" flush="true" />
<!-- Footer Section End -->

<!-- Search model Begin -->
<%--<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch"><i class="icon_close"></i></div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Search here.....">
        </form>
    </div>
</div>--%>
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