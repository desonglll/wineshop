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
<%--    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript"src="https://cdn.bootcss.com/blueimp-md5/2.10.0/js/md5.min.js"></script>
  --%>  <script src="<%=basePath%>admin/lib/layui/layui.js" charset="utf-8"></script>

    <script type="text/javascript" src="<%=basePath%>admin/js/xadmin.js"></script>
    <script type="text/javascript" src="<%=basePath%>admin/js/cookie.js"></script>
    <script>
        // 是否开启刷新记忆tab功能
        // var is_remember = false;
    </script>
</head>

<body class="">

<div class="x-body">

    <div class="demoTable">
        房间编号：
        <div class="layui-inline">
            <input class="layui-input" name="type_name" id="type_name" autocomplete="off">
        </div>
        <button class="layui-btn" data-type="reload">搜索</button>
    </div>

    <script type="text/html" id="toolbarDemo">
        <div class="layui-btn-container">
            <button class="layui-btn layui-btn-sm" lay-event="getCheckData">批量删除</button>
            <button class="layui-btn" onclick="x_admin_show('添加房间','<%=basePath%>admin/room/RoomAdd.jsp',600,700)"><i class="layui-icon"></i>添加</button>
        </div>
    </script>

    <script type="text/html" id="dateTpl">
<%--       没有时间时候自动显示当前日期内容
{{layui.util.toDateString(new Date(d.create_time).getTime(), "yyyy-MM-dd HH:mm:ss") }}--%>
        {{#
        if(d.create_time){}}
        {{layui.util.toDateString(new Date(d.create_time).getTime(), "yyyy-MM-dd HH:mm:ss") }}
        {{#}
        else{}}
        {{#}}}
    </script>
    <table class="layui-table" lay-data="{url:'<%=basePath%>roomInfoServlet',page:true,toolbar: '#toolbarDemo',id:'test'}" lay-filter="test">
        <thead>
        <tr>
            <th lay-data="{type:'checkbox'}">ID</th>
            <th lay-data="{field:'id', width:80, sort: true}">id</th>
            <th lay-data="{field:'number',  minWidth: 150}">房间编号</th>
            <th lay-data="{field:'type_name', width:120}">房间类型</th>
            <th lay-data="{field:'area', width:120}">房间面积</th>
            <th lay-data="{field:'status', width:120}">状态</th>
            <th lay-data="{field:'price', width:120}">价格</th>
            <th lay-data="{field:'showTime',title:'创建时间',templet: '#dateTpl'}">创建时间</th>
<%--            <th lay-data="{field:'create_time',templet: '{layui.util.toDateString(d.create_time, 'yyyy-MM-dd') }'}">创建时间</th>--%>
            <th lay-data="{field:'create_author', sort: true, edit: 'text'}">创建人</th>
            <th lay-data="{title:'操作', toolbar: '#barDemo',minWidth: 150}">操作</th>
        </tr>
        </thead>
    </table>

</div>

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="delete">删除</a>
</script>

<script>
    layui.use(['form', 'table'], function () {
        var form = layui.form,
            table = layui.table;
        var $ = layui.$, active = {
            reload: function(){
                var name = $('#type_name').val();
                //执行重载
                table.reload('test', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    ,where: {
                        type_name:name
                    }
                }, 'data');
            }
        };

        $('.demoTable .layui-btn').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });

        /**
         * tool操作栏监听事件
         */
        table.on('tool(test)', function (obj) {
            var data=obj.data;
            debugger
            if (obj.event === 'edit') {  // 监听添加操作
                var index = layer.open({
                    title: '修改房间',
                    type: 2,
                    shade: 0.2,
                    shadeClose: true,
                    area: ['70%', '70%'],
                    content: '<%=basePath%>roomInfoServlet?flag=queryById&id='+data.id,
                });
                $(window).on("resize", function () {
                    layer.full(index);
                });
            } else if (obj.event === 'delete') {  // 监听删除操作
                debugger
                layer.confirm('真的删除行么', function (index) {
                    //调用删除功能
                    deleteInfoByIds(data.id,index);
                    layer.close(index);
                });
            }
        });



        /**
         * 获取选中记录的id信息
         */
        function getCheackId(data){
            var arr=new Array();
            for(var i=0;i<data.length;i++){
                arr.push(data[i].id);
            }
            //拼接id
            return arr.join(",");
        };

        /**
         * 提交删除功能
         */
        function deleteInfoByIds(ids ,index){
            //向后台发送请求
            $.ajax({
                url: "<%=basePath%>roomInfoServlet?flag=delete",
                type: "POST",
                data: {ids: ids},
                success: function (result) {
                    if (result.code == 0) {//如果成功
                        layer.msg('删除成功', {
                            icon: 6,
                            time: 500
                        }, function () {
                            parent.window.location.reload();
                            var iframeIndex = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(iframeIndex);
                        });
                    } else {
                        layer.msg("删除失败");
                    }
                }
            })
        };

        //头工具栏事件
        table.on('toolbar(test)', function(obj){
            var checkStatus = table.checkStatus(obj.config.id);
            if(obj.event=='getCheckData'){
                var data = checkStatus.data;
                if(data.length==0){//如果没有选中信息
                    layer.msg("请选择要删除的记录信息");
                }else{
                    //获取记录信息的id集合
                    var ids=getCheackId(data);
                    layer.confirm('真的删除行么', function (index) {
                        //调用删除功能
                        deleteInfoByIds(ids,index);
                        layer.close(index);
                    });
                }
            }
        });
    });
</script>

</body>

</html>
