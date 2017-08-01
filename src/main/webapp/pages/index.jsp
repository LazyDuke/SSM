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
    <link href="https://cdn.bootcss.com/webui-popover/2.1.15/jquery.webui-popover.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/webui-popover/2.1.15/jquery.webui-popover.min.js"></script>
    <script type="text/javascript">
        toastr.options.positionClass = 'toast-top-center';
    </script>
    <title>MicroBlog</title>
    <style>
        body {
            background: url("<c:url value='/resources/img/bg.png'/>");
            background-size: cover;
            padding-top: 70px;
        }
        .navbar-item {
            font-size: 15px;
            font-weight: bold;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#"
               style="font-size: 30px; font-weight: bold;">MicroBlog</a>
        </div>
        <c:choose>
            <c:when test="${sessionScope.userName==null}">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="<c:url value='/login'/>" style="font-size: 20px; font-weight: bold;">请登录</a></li>
                </ul>
                <div>
                    <p class="navbar-text navbar-right"
                       style="line-height: 200%; margin-bottom: 0;">您好，</p>
                </div>
            </c:when>
            <c:when test="${sessionScope.userName!=null}">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="" class="navbar-item">
                        <span class="glyphicon glyphicon-home" aria-hidden="true" style="vertical-align: text-bottom"></span> 首页</a>
                    </li>
                    <li><a href="#" class="navbar-item ">
                        <span class="glyphicon glyphicon-user" aria-hidden="true" style="vertical-align: text-bottom"></span> ${userName}</a>
                    </li>
                    <li><a href="#" class="navbar-item" id="webui-pop">
                        <span class="glyphicon glyphicon-cog" aria-hidden="true" style="margin-top: 2px"></span></a>
                        <div class="webui-popover-content">
                            <ul class="dropdown-menu">
                                <li><a href="">账号设置</a></li>
                                <li class="divider"></li>
                                <li>
                                    <a href="<c:url value='/user/logout'/>"><span class="glyphicon glyphicon-log-out"></span> 注 销</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </c:when>
        </c:choose>
    </div>
</nav>
<script type="text/javascript">
    var msg = "${requestScope.msg}"
    if (msg == "0") {
        toastr.success("登录成功！");
    }
    else if(msg == "1"){
        toastr.success("注销成功！");
    }
    msg="";
</script>
<script type="text/javascript">
    $('#webui-pop').webuiPopover({
        container: '#webui-pop',
        trigger: 'hover',
        placement:'bottom',
        animation: 'fade'
    });
</script>
</body>
</html>