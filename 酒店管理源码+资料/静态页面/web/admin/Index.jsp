<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html  class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>管理系统</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <!--    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />-->
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="stylesheet" href="<%=basePath%>admin/css/font.css">
    <link rel="stylesheet" href="<%=basePath%>admin/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript"src="https://cdn.bootcss.com/blueimp-md5/2.10.0/js/md5.min.js"></script>
    <script src="<%=basePath%>admin/lib/layui/layui.js" charset="utf-8"></script>

    <script type="text/javascript" src="<%=basePath%>admin/js/xadmin.js"></script>
    <script type="text/javascript" src="<%=basePath%>admin/js/cookie.js"></script>
    <script>
        // 是否开启刷新记忆tab功能
        // var is_remember = false;
    </script>
</head>
<body>
<!-- 顶部开始 -->
<div class="container">
    <div class="logo"><a href="./index.html">管理系统</a></div>
    <div class="left_open">
        <i title="展开左侧栏" class="iconfont">&#xe699;</i>
    </div>
    <ul class="layui-nav left fast-add" lay-filter="">
        <!--<li class="layui-nav-item">
          <a href="javascript:;">+新增</a>
          <dl class="layui-nav-child"> &lt;!&ndash; 二级菜单 &ndash;&gt;
            <dd><a onclick="x_admin_show('资讯','https://www.baidu.com')"><i class="iconfont">&#xe6a2;</i>资讯</a></dd>
            <dd><a onclick="x_admin_show('图片','https://www.baidu.com')"><i class="iconfont">&#xe6a8;</i>图片</a></dd>
             <dd><a onclick="x_admin_show('用户 最大化','https://www.baidu.com','','',true)"><i class="iconfont">&#xe6b8;</i>用户最大化</a></dd>
             <dd><a onclick="x_admin_add_to_tab('在tab打开','https://www.baidu.com',true)"><i class="iconfont">&#xe6b8;</i>在tab打开</a></dd>
          </dl>
        </li>-->
    </ul>
    <ul class="layui-nav right" lay-filter="">
        <li class="layui-nav-item">
            <a href="javascript:;">admin</a>
            <dl class="layui-nav-child"> <!-- 二级菜单 -->
                <dd><a onclick="x_admin_show('个人信息','https://www.murongmengjie.cn')">个人信息</a></dd>
                <dd><a onclick="x_admin_show('切换帐号','http://www.baidu.com')">切换帐号</a></dd>
                <dd><a href="login.html">退出</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item to-index"><a href="./index.html">前台首页</a></li>
    </ul>

</div>
<!-- 顶部结束 -->

<!-- 中部开始 -->
<!-- 左侧菜单开始 -->
<!--第一个-->
<div class="left-nav">
    <div id="side-nav">
        <ul id="nav">
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe6b8;</i>
                    <cite>基础功能</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li date-refresh="1">
                        <a _href="Type_Index.jsp">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>房间类型管理</cite>
                        </a>
                    </li >
                    <li date-refresh="1">
                        <a _href="room/Room_Index.jsp">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>房间信息管理</cite>
                        </a>
                    </li >
<%--                    <li>--%>
<%--                        <a _href="member-list1.html">--%>
<%--                            <i class="iconfont">&#xe6a7;</i>--%>
<%--                            <cite>会员列表(动态表格)</cite>--%>

<%--                        </a>--%>
<%--                    </li >--%>
                    <!--   <li date-refresh="1">
                           <a _href="member-del.html">
                               <i class="iconfont">&#xe6a7;</i>
                               <cite>会员删除</cite>

                           </a>
                       </li>-->
                    <!--  <li>
                          <a href="javascript:;">
                              <i class="iconfont">&#xe70b;</i>
                              <cite>会员管理</cite>
                              <i class="iconfont nav_right">&#xe697;</i>
                          </a>
                          <ul class="sub-menu">
                              <li>
                                  <a _href="xxx.html">
                                      <i class="iconfont">&#xe6a7;</i>
                                      <cite>会员列表</cite>
                                  </a>
                              </li >
                              <li>
                                  <a _href="xx.html">
                                      <i class="iconfont">&#xe6a7;</i>
                                      <cite>会员删除</cite>
                                  </a>
                              </li>
                              <li>
                                  <a _href="xx.html">
                                      <i class="iconfont">&#xe6a7;</i>
                                      <cite>等级管理</cite>
                                  </a>
                              </li>
                          </ul>
                      </li>-->
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe723;</i>
                    <cite>业务管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="reserve/index.jsp">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>预定管理</cite>
                        </a>
                    </li >
                    <li>
                        <a _href="reserve/index.jsp">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>退房管理</cite>
                        </a>
                    </li >
                    <li>
                        <a _href="reserve/index.jsp">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>评论管理</cite>
                        </a>
                    </li >
                </ul>
            </li>
            <!--结束-->

            <!--      <li>
                      <a href="javascript:;">
                          <i class="iconfont">&#xe723;</i>
                          <cite>分类管理</cite>
                          <i class="iconfont nav_right">&#xe697;</i>
                      </a>
                      <ul class="sub-menu">
                          <li>
                              <a _href="cate.html">
                                  <i class="iconfont">&#xe6a7;</i>
                                  <cite>多级分类</cite>
                              </a>
                          </li >
                      </ul>
                  </li>-->

            <!-- <li>
                 <a href="javascript:;">
                     <i class="iconfont">&#xe723;</i>
                     <cite>城市联动</cite>
                     <i class="iconfont nav_right">&#xe697;</i>
                 </a>
                 <ul class="sub-menu">
                     <li>
                         <a _href="city.html">
                             <i class="iconfont">&#xe6a7;</i>
                             <cite>三级地区联动</cite>
                         </a>
                     </li >
                 </ul>
             </li>-->
            <!-- <li>
                 <a href="javascript:;">
                     <i class="iconfont">&#xe726;</i>
                     <cite>管理员管理</cite>
                     <i class="iconfont nav_right">&#xe697;</i>
                 </a>
                 <ul class="sub-menu">
                     <li>
                         <a _href="admin-list.html">
                             <i class="iconfont">&#xe6a7;</i>
                             <cite>管理员列表</cite>
                         </a>
                     </li >
                     <li>
                         <a _href="admin-role.html">
                             <i class="iconfont">&#xe6a7;</i>
                             <cite>角色管理</cite>
                         </a>
                     </li >
                     <li>
                         <a _href="admin-cate.html">
                             <i class="iconfont">&#xe6a7;</i>
                             <cite>权限分类</cite>
                         </a>
                     </li >
                     <li>
                         <a _href="admin-rule.html">
                             <i class="iconfont">&#xe6a7;</i>
                             <cite>权限管理</cite>
                         </a>
                     </li >
                 </ul>
             </li>-->
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe6ce;</i>
                    <cite>系统统计</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="echarts1.html">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>拆线图</cite>
                        </a>
                    </li >
                    <li>
                        <a _href="echarts2.html">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>柱状图</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="echarts3.html">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>地图</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="echarts4.html">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>饼图</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="echarts5.html">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>雷达图</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="echarts6.html">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>k线图</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="echarts7.html">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>热力图</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="echarts8.html">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>仪表图</cite>
                        </a>
                    </li>
                </ul>
            </li>
           <%-- <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe6b4;</i>
                    <cite>图标字体</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="unicode.html">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>图标对应字体</cite>
                        </a>
                    </li>
                </ul>
            </li>--%>
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe6b4;</i>
                    <cite>其它页面</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a href="login.html" target="_blank">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>登录页面</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="error.html">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>错误页面</cite>
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</div>
<!-- <div class="x-slide_left"></div> -->
<!-- 左侧菜单结束 -->
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
        <ul class="layui-tab-title">
            <li class="home"><i class="layui-icon">&#xe68e;</i>我的桌面</li>
        </ul>
        <div class="layui-unselect layui-form-select layui-form-selected" id="tab_right">
            <dl>
                <dd data-type="this">关闭当前</dd>
                <dd data-type="other">关闭其它</dd>
                <dd data-type="all">关闭全部</dd>
            </dl>
        </div>
        <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <iframe src='welcome.html' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
            </div>
        </div>
        <div id="tab_show"></div>
    </div>
</div>
<div class="page-content-bg"></div>
<!-- 右侧主体结束 -->

<!-- 中部结束 -->

<!-- 底部开始 -->
<div class="footer">
    <div class="copyright">Copyright ©2017 x-admin v2.3 All Rights Reserved</div>
</div>
<!-- 底部结束 -->
</body>
</html>