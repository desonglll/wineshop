<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    String basePath2=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/";

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
<div class="x-body">
    <form class="layui-form">
        <div class="layui-form-item">
            <label  class="layui-form-label">
                <span class="x-red">*</span>身份证号
            </label>
            <div class="layui-input-block">
                <input type="text" id="id_card" name="id_card" required=""
                       autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label  class="layui-form-label">
                <span class="x-red">*</span> 联系电话
            </label>
            <div class="layui-input-block">
                <input type="text" id="tel" name="tel" required=""
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label  class="layui-form-label">
                <span class="x-red">*</span>房间编号
            </label>
            <div class="layui-input-block">
                <select name="room_id" id="typeId" lay-verify="required">
                    <option value="">请选择</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">入住时间</label>
            <div class="layui-input-block">
                <input type="text" name="start_time" class="layui-input" id="test" placeholder="yyyy-MM-dd HH:mm:ss">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">预计离开时间</label>
            <div class="layui-input-block">
                <input type="text"  name="end_time" class="layui-input" id="test2"
                       placeholder="yyyy-MM-dd HH:mm:ss">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">是否入住</label>
            <div class="layui-input-block">
                <input type="checkbox" checked="" name="status" lay-skin="switch" lay-filter="switchTest" lay-text="入住|预定">
            </div>
        </div>
        <div class="layui-form-item">
            <label  class="layui-form-label">
                <span class="x-red">*</span>备注
            </label>
            <div class="layui-input-block">
                <textarea name="remarks" rows="5" cols="85"></textarea>
            </div>
        </div>
        <div class="layui-form-item">
            <label  class="layui-form-label">
            </label>
            <button  class="layui-btn" lay-filter="add" lay-submit="">
                增加
            </button>
        </div>
    </form>
</div>
<script>
    layui.use(['form','layer', 'layedit','laydate'], function(){
        $ = layui.jquery;
        var form = layui.form
            ,layer = layui.layer;
        laydate=layui.laydate;
        var form=layui.form,
            layedit=layui.layedit;
        var index1 = layedit.build('LAY_demo1', {
            tool: ['strong', 'italic', 'underline', 'del', '|', 'left', 'center', 'right'],
            height: 150
        });

        //时间选择器
        laydate.render({
            elem: '#test'
            ,type: 'datetime'
        });
        //时间选择器
        laydate.render({
            elem: '#test2'
            ,type: 'datetime'
        });


        //动态获取图书类型的数据
        $.get("<%=basePath%>roomInfoServlet?flag=queryListByStatus",{},function (data) {
            var list=data;
            var select=document.getElementById("typeId");
            if(list!=null|| list.size()>0){
                for(var c in list){
                    var option=document.createElement("option");
                    option.setAttribute("value",list[c].id);
                    option.innerText=list[c].number;
                    select.appendChild(option);
                }
            }
            form.render('select');
        },"json")




        //监听提交
        form.on('submit(add)', function(data){
            console.log(data);
            //发异步，把数据提交给php
            var data=data.field;
            debugger
            $.ajax({
                url:"<%=basePath%>reserveServlet?flag=insert",
                type:"post",
                data:data,
                success:function (result) {
                    debugger
                    //把字符串转json对象
                    if(JSON.parse(result).code==0){
                        layer.alert("增加成功", {icon: 6},function () {
                            //关闭当前frame
                            x_admin_close();
                            // 可以对父窗口进行刷新
                            x_admin_father_reload();
                        });
                    }else{
                        layer.msg("添加失败")
                    }
                }
            });
            return false;
        });
    });
</script>

</body>

</html>