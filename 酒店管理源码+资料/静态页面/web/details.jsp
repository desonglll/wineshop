<%--
  Created by IntelliJ IDEA.
  User: zhouk
  Date: 2021/11/18
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html >

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

<!-- Room Details Section Begin -->
<section class="room-details-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="room-details-item">
                    <img src="img/room/room-details.jpg" alt="">
                    <div class="rd-text">
                        <div class="rd-title">
                            <h3>高级国王房间</h3>
                            <div class="rdt-right">
<%--                                <div class="rating">--%>
<%--                                    <i class="icon_star"></i>--%>
<%--                                    <i class="icon_star"></i>--%>
<%--                                    <i class="icon_star"></i>--%>
<%--                                    <i class="icon_star"></i>--%>
<%--                                    <i class="icon_star-half_alt"></i>--%>
<%--                                </div>--%>
                                <a href="#">现在预订</a>
                            </div>
                        </div>
                        <h2>159$<span>/每晚</span></h2>
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
                                <td>皇帝s</td>
                            </tr>
                            <tr>
                                <td class="r-o">服务:</td>
                                <td>无线网络、电视、卫生间、. ..</td>
                            </tr>
                            </tbody>
                        </table>
                        <p class="f-para">房车还是拖车，这是你的问题。这里有一些
                            优点和缺点，所以你会有信心时，购买RV。
                            当比较房车、房车或旅行拖车时，你应该买房车还是第五辆
                            惠勒?研究了两者的优点和缺点，这样你就可以使你的
                            在购买房车时要明智地做出选择。拥有一个汽车房或第五个轮子是一种
                            一生的成就。它可以类似于与你的住所作为你的逗留
                            在我们伟大的土地——美国的各个地方进行搜索。</p>
                        <p>两种常见的娱乐车辆是机动型和可拖曳型。
                            可拖的房车是旅行拖车和第五个轮子。房车旅行拖车或第五辆
                            车轮具有被皮卡或汽车拖着的吸引力，因此给予
                            当你在营地停车时，为你拥有交通工具的适应性。
                        </p>
                    </div>
                </div>
                <div class="rd-reviews">
                    <h4>点评</h4>
                    <div class="review-item">
                        <div class="ri-pic">
                            <img src="img/room/avatar/avatar-1.jpg" alt="">
                        </div>
                        <div class="ri-text">
                            <span>布兰登·凯利</span>
                            <div class="rating">2019年8月27日</div>
                            <h5>   </h5>
                            <p>你的身体是什么样子的，你的身体是什么样子的，
                                我不知道，我现在不知道。在劳动和痛苦中发生
                                magnam。</p>
                        </div>
                    </div>
                    <div class="review-item">
                        <div class="ri-pic">
                            <img src="img/room/avatar/avatar-2.jpg" alt="">
                        </div>
                        <div class="ri-text">
                            <span>布兰登·凯利</span>
                                <div class="rating">2019年8月27日</div>
                            <h5>布兰登·凯利</h5>
                            <p>你的身体是什么样子的，你的身体是什么样子的，
                                我不知道，我现在不知道。在劳动和痛苦中发生
                                magnam.</p>
                        </div>
                    </div>
                </div>
                <div class="review-add">
                    <h4>添加评论</h4>
                    <form action="#" class="ra-form">
                        <div class="row">
                            <div class="col-lg-6">
                                <input type="text" placeholder="Name*">
                            </div>
                            <div class="col-lg-6">
                                <input type="text" placeholder="Email*">
                            </div>
                            <div class="col-lg-12">

                                <textarea placeholder="Your Review"></textarea>
                                <button type="submit">现在提交</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="room-booking">
                    <h3>你的预订</h3>
                    <form action="#">
                        <div class="check-date">
                            <label for="date-in">报到</label>
                            <input type="text" class="date-input" id="date-in">
                            <i class="icon_calendar"></i>
                        </div>
                        <div class="check-date">
                            <label for="date-out">结账离开:</label>
                            <input type="text" class="date-input" id="date-out">
                            <i class="icon_calendar"></i>
                        </div>
                        <div class="select-option">
                            <label for="guest">贵宾:</label>
                            <select id="guest">
                                <option value="">3 成年人</option>
                            </select>
                        </div>
                        <div class="select-option">
                            <label for="room">房间:</label>
                            <select id="room">
                                <option value="">1 房间</option>
                            </select>
                        </div>
                        <button type="submit">检查是否可用</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Room Details Section End -->

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
