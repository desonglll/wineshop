<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
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
        <input type="hidden" name="id" value="${info.id}">
        <input type="hidden" name="typeIds" id="typeIds" value="${info.room_id}">
        <div class="layui-form-item">
            <label class="layui-form-label required">房间类别</label>
            <div class="layui-input-block">
                <select name="typeId" id="typeId" lay-verify="required">
                    <option value="${info.room_id}">${info.type_name}</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label for="price" class="layui-form-label">
                <span class="x-red">*</span>房间编号
            </label>
            <div class="layui-input-block">
                <input type="number" id="number" name="number"  value="${info.number}" required=""
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="price" class="layui-form-label">
                <span class="x-red">*</span>价格
            </label>
            <div class="layui-input-block">
                <input type="number" id="price" name="price" value="${info.price}" required=""
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="price" class="layui-form-label">
                <span class="x-red">*</span>面积
            </label>
            <div class="layui-input-block">
                <input type="number" id="area" name="area" value="${info.area}" required=""
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <!--房屋图片-->
        <div class="layui-form-item">
            <input type="hidden" name="imgs" id="imgs">
            <label class="layui-form-label required">房屋图片</label>
            <div class="layui-upload-drag" id="test10">
                <i class="layui-icon"></i>
                <p>点击上传，或将文件拖拽到此处</p>
                <div class="layui-hide" id="uploadDemoView">
                    <hr>
                    <img src="http://localhost:8080/${info.img}" alt="上传成功后渲染" style="max-width: 196px">
                </div>
            </div>
        </div>
        <!--房屋图片end-->
        <div class="layui-form-item">
            <label class="layui-form-label">状态</label>
            <div class="layui-input-block">
                <input type="checkbox" <c:if test="${info.status==1}">checked </c:if> name="status" lay-skin="switch" lay-filter="switchTest" lay-text="正常|禁用">
            </div>
        </div>
        <div class="layui-form-item">
            <label  class="layui-form-label">
                <span class="x-red">*</span>备注
            </label>
            <div class="layui-input-block">
                <textarea class="layui-textarea" id="LAY_demo1" name="remarks" style="display: none;">${info.remark}</textarea>
            </div>
        </div>
        <div class="layui-form-item">
            <label  class="layui-form-label">
            </label>
            <button  class="layui-btn" lay-filter="add" lay-submit="">
                修改信息
            </button>
        </div>
    </form>
</div>
<script>
    layui.use(['form','layer', 'layedit','upload'], function(){
        $ = layui.jquery;
        var form = layui.form
            ,layer = layui.layer;
        upload = layui.upload;
        var form=layui.form,
            layedit=layui.layedit;
        var index1 = layedit.build('LAY_demo1', {
            tool: ['strong', 'italic', 'underline', 'del', '|', 'left', 'center', 'right'],
            height: 200
        });

        //获取id为roomIds的值
        var values=document.getElementById("typeIds").value;
        //动态获取图书类型的数据
        $.get("<%=basePath%>roomTypeServlet?flag=queryTypeList",{},function (data) {
            var list=data;
            var select=document.getElementById("typeId");
            if(list!=null|| list.size()>0){
                for(var c in list){
                    var option=document.createElement("option");
                    option.setAttribute("value",list[c].id);
                    option.innerText=list[c].type_name;
                    select.appendChild(option);
                    if(list[c].id==values){
                        option.setAttribute("selected","selected");
                        layui.form.render('select');
                    }
                }
            }
            form.render('select');
        },"json")


        //图片上传功能
        upload.render({
             elem: '#test10'
            ,url: '<%=basePath%>roomInfoServlet?flag=upload' //改成您自己的上传接口
            ,field:'file'
            ,done: function(res){
                debugger
                console.log(res)
                layer.msg('上传成功');
                layui.$('#uploadDemoView').removeClass('layui-hide').find('img').attr('src', "<%=basePath2%>/images/"+res.msg);
                //塞入到input
                $("#imgs").val(res.msg);
                console.log(res)
            }
        });
        layui.$('#uploadDemoView').removeClass('layui-hide');

        //监听提交
        form.on('submit(add)', function(data){
            console.log(data);
            //发异步，把数据提交给php
            var data=data.field;
            debugger
            $.ajax({
                url:"<%=basePath%>roomInfoServlet?flag=update",
                type:"post",
                data:data,
                success:function (result) {
                    if(result.code==0){
                        layer.alert("修改成功", {icon: 6},function () {
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