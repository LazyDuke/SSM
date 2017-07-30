<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <script src="https://cdn.bootcss.com/jquery/3.2.0/jquery.js"></script>
    <link rel="stylesheet"
          href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script
            src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://cdn.bootcss.com/toastr.js/latest/css/toastr.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/toastr.js/latest/js/toastr.min.js"></script>
    <script type="text/javascript">
        toastr.options.positionClass = 'toast-top-center';
    </script>

    <title>请注册</title>
</head>
<style>
    body {
        background: url("<c:url value='/resources/img/bg.png'/>");
        background-size: cover;
    }

    .form-bg {
        background: #00b4ef;
    }

    .form-horizontal {
        background: #fff;
        padding-bottom: 40px;
        border-radius: 15px;
        text-align: center;
    }

    .form-horizontal .heading {
        display: block;
        font-size: 35px;
        font-weight: 700;
        padding: 35px 0;
        border-bottom: 1px solid #f0f0f0;
        margin-bottom: 30px;
    }

    .form-horizontal .form-group {
        padding: 0 40px;
        margin: 0 0 25px 0;
        position: relative;
    }

    .form-horizontal .form-control {
        background: #f0f0f0;
        border: none;
        border-radius: 20px;
        box-shadow: none;
        padding: 0 20px 0 45px;
        height: 40px;
        transition: all 0.3s ease 0s;
    }

    .form-horizontal .form-control:focus {
        background: #e0e0e0;
        box-shadow: none;
        outline: 0 none;
    }

    .form-horizontal .form-group i {
        position: absolute;
        top: 12px;
        left: 60px;
        font-size: 17px;
        color: #c8c8c8;
        transition: all 0.5s ease 0s;
    }

    .form-horizontal .form-control:focus + i {
        color: #00b4ef;
    }

    .form-horizontal .text {
        float: left;
        margin-left: 7px;
        line-height: 20px;
        padding-top: 5px;
        text-transform: capitalize;
    }

    .form-horizontal .btn {
        float: right;
        font-size: 14px;
        color: #fff;
        background: #00b4ef;
        border-radius: 30px;
        padding: 10px 25px;
        border: none;
        text-transform: capitalize;
        transition: all 0.5s ease 0s;
    }

    .center-vertical {
        position: relative;
        top: 25%;
    }
</style>
<body>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="<c:url value='/'/>"
               style="font-size: 30px; font-weight: bold;">MicroBlog</a>
        </div>
    </div>
</nav>
div
<div class="container center-vertical">
    <div class="row">
        <div class="col-md-offset-3 col-md-6">
            <form class="form-horizontal" action="<c:url value='/user/register'/>" method="post">
                <span class="heading">用户注册</span>
                <div class="form-group">
                    <input type="text" class="form-control" id="userName" name="userName"
                           placeholder="用户名"> <i class="glyphicon glyphicon-user"></i>
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" id="userPassword" name="userPassword"
                           placeholder="密　码"> <i class="glyphicon glyphicon-lock"></i>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-default">注册</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script type="text/javascript">
    var msg = "${requestScope.msg}";
    if (msg != "") {
        toastr.error(msg);
    }

</script>
</body>
</html>