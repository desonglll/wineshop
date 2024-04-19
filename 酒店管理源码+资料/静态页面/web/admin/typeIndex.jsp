<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %--%>>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html class="x-admin-sm">

<head>
    <meta charset="UTF-8">
    <title>欢迎页面-X-admin2.1</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="css/font.css">
    <link rel="stylesheet" href="css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="js/xadmin.js"></script>
    <script type="text/javascript" src="js/cookie.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body class="">
<div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="">首页</a>
        <a href="">演示</a>
        <a>
          <cite>导航元素</cite></a>
      </span>
</div>
<div class="x-body">
    <div class="layui-row">
        <form class="layui-form layui-col-md12 x-so">
            <input class="layui-input"  autocomplete="off" placeholder="开始日" name="start" id="start">
            <input class="layui-input"  autocomplete="off" placeholder="截止日" name="end" id="end">
            <input type="text" name="username"  placeholder="请输入用户名" autocomplete="off" class="layui-input">
            <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
        </form>
    </div>
    <xblock>
        <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
        <button class="layui-btn" onclick="x_admin_show('添加关于我们','about_add.html',600,400)"><i class="layui-icon"></i>添加</button>
    </xblock>
    <table class="layui-table" lay-data="{url:'http://localhost:8080/javawebproject/roomTypeServlet',page:true,id:'test'}" lay-filter="test">
        <thead>
        <tr>
            <th lay-data="{type:'checkbox'}">ID</th>
            <th lay-data="{field:'id', width:80, sort: true}">ID</th>
            <th lay-data="{field:'type_name', width:120}">房间类型</th>
            <th lay-data="{field:'price',  minWidth: 150}">单价</th>
            <th lay-data="{field:'create_time', width:80 }">创建时间</th>

            <th lay-data="{field:'create_author', sort: true, edit: 'text'}">创建人</th>
            <th lay-data="{title:'操作', toolbar: '#barDemo',minWidth: 150}">操作</th>
        </tr>
        </thead>
    </table>

</div>

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>

<script>
    layui.use('laydate', function(){
        var laydate = layui.laydate;

        //执行一个laydate实例
        laydate.render({
            elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
            elem: '#end' //指定元素
        });


    });
</script>
<script>
    layui.use('table', function(){
        var table = layui.table;

        // //监听单元格编辑
        // table.on('edit(test)', function(obj){
        //   var value = obj.value //得到修改后的值
        //   ,data = obj.data //得到所在行所有键值
        //   ,field = obj.field; //得到字段
        //   layer.msg('[ID: '+ data.id +'] ' + field + ' 字段更改为：'+ value);
        // });

        //头工具栏事件
        /*     table.on('toolbar(test)', function(obj){
               var checkStatus = table.checkStatus(obj.config.id);
               switch(obj.event){
                 case 'getCheckData':
                   var data = checkStatus.data;
                   layer.alert(JSON.stringify(data));
                 break;
                 case 'getCheckLength':
                   var data = checkStatus.data;
                   layer.msg('选中了：'+ data.length + ' 个');
                 break;
                 case 'isAll':
                   layer.msg(checkStatus.isAll ? '全选': '未全选');
                 break;
               };
             });*/
    });
</script>

</body>

</html>
