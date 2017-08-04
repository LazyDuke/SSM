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
    <script src="https://cdn.bootcss.com/moment.js/2.18.1/moment.min.js"></script>
    <script type="text/javascript">
        toastr.options.positionClass = 'toast-top-center';
    </script>
    <title>${sessionScope.user.userNickname}的微博</title>
    <style>
        body {
            background: url("<c:url value='/resources/img/bg.png'/>");
            background-size: cover;
            padding-top: 70px;
        }

        nav {
             padding-right: 5%;
             padding-left: 5%;
         }

        .navbar-item {
            font-size: 15px;
            font-weight: bold;

        }
        .header-info {
            background: url("<c:url value='/resources/img/bg2.jpg'/>");
            width: 65%;
            background-size: cover;
        }

        .main-info.container{
            width: 65%;
        }

        .photograp {
            width: 150px;
            height: 150px;
        }

        .social-info {
            text-align: center;
            background-color: #ffffff;
            padding-top: 3%;
            padding-bottom: 3%;
        }
        .file-edit {
            background-color: #ffffff;
            margin-top: 10%;
            padding-top: 3%;
            padding-bottom: 3%;
        }

        .i-number {
            font-size: large;
        }

        .i-moji {
            font-size: small;
        }

        .no-blog-container {
            background-color: #f2f2f5;
            height: 434px;
            padding-top: 60px;
        }

        .no-blog-content {
           text-align: center;
        }

        .fixed-bottom {
            position: fixed;
            bottom: 0;
            width:100%;
        }
        footer {
            margin-top: 7%;
            min-height: 20%;
            background-color: #f2f2f5;
            text-align: center;
            display: flex;
            justify-content: center;
            flex-direction: column;
            font-size: large;
        }
        .microblog-list {
            padding-right: 0;
            padding-left: 3%;
        }

        .file-edit-text {
            text-align: center;
            border-top: 1px solid #d9d9d9;padding-top: 3%;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="<c:url value='/'/>"
               style="font-size: 30px; font-weight: bold;">MicroBlog</a>
        </div>

        <ul class="nav navbar-nav navbar-right">
            <li><a href="<c:url value='/main'/>" class="navbar-item">
                <span class="glyphicon glyphicon-home" aria-hidden="true" style="vertical-align: text-bottom"></span> 首页</a>
            </li>
            <li class="active"><a href="#" class="navbar-item ">
                <span class="glyphicon glyphicon-user" aria-hidden="true"
                      style="vertical-align: text-bottom"></span> ${sessionScope.user.userNickname}</a>
            </li>
            <li>
                <a href="#" class="navbar-item" id="message-pop" style="padding-bottom: 11px;">
                    <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                    <span class="badge" style="vertical-align: super">42</span>
                </a>
                <div class="webui-popover-content">
                    <ul class="dropdown-menu">
                        <li><a href="">评论</a></li>
                        <li><a href="">赞</a></li>
                        <li class="divider"></li>
                        <li><a href="">私信<span class="badge" style="vertical-align: super">42</span></a></li>
                    </ul>
                </div>
            </li>
            <li><a href="#" class="navbar-item" id="config-pop">
                <span class="glyphicon glyphicon-cog" aria-hidden="true" style="padding-top: 3px"></span></a>
                <div class="webui-popover-content">
                    <ul class="dropdown-menu">
                        <li><a href="">账号设置</a></li>
                        <li class="divider"></li>
                        <li>
                            <a href="<c:url value='/user/logout'/>"><span class="glyphicon glyphicon-log-out"></span> 注
                                销</a>
                        </li>
                    </ul>
                </div>
            </li>
        </ul>
    </div>
</nav>
<div class="header-info jumbotron center-block">
    <div class="photograp center-block">
        <a href="">
            <img src="<c:url value='/resources/img/avatar.jpg'/>" alt="头像" width="150" height="150" class="img-circle  center-block">
        </a>
    </div>
    <div class="nickName center-block">
        <h3 style="text-align: center; color: #ffffff">${sessionScope.user.userNickname}</h3>
        <h5 style="text-align: center; color: #ffffff">${sessionScope.user.userSign}</h5>
    </div>
</div>
<div class="container main-info">
   <div class="row">
       <div class="col-md-4">
           <div class="social-info row">
               <div class="col-md-4" style=" padding-left: 0;padding-right: 0;border-right: 1px solid #d9d9d9;">
                   <div class="row i-number">
                       <a href="">${sessionScope.user.followNum}</a>
                   </div>
                   <div class="row i-moji">
                        关注
                   </div>
               </div>
               <div class="col-md-4" style=" padding-left: 0;padding-right: 0;border-right: 1px solid #d9d9d9;">
                   <div class="row i-number">
                       <a href="">${sessionScope.user.fansNum}</a>
                   </div>
                   <div class="row i-moji">
                       粉丝
                   </div>
               </div>
               <div class="col-md-4" style=" padding-left: 0;padding-right: 0;">
                   <div class="row i-number">
                       <a href="">${sessionScope.user.blogNum}</a>
                   </div>
                   <div class="row i-moji">
                       微博
                   </div>
               </div>
           </div>
           <div class="row file-edit">
              <div class="col-md-12">
                  <div class="row bar-wrap">
                      <div class="col-md-12">
                          <div class="row">
                              <div class="col-md-12">
                                  <div class="row bar-title" style="padding-left: inherit; padding-right: inherit;">
                                      个人资料完成度 <span style="font-weight: bold;font-style: italic;font-size: large">95%</span>
                                  </div>
                                  <div class="bar progress">
                                      <div class="progress-bar progress-bar-warning progress-bar-striped" aria-valuemin="0" aria-valuemax="100" aria-valuenow="95" style="width: 95%">

                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
                  <div class="col-md-12" style="padding-right: 0;padding-left: 0;">
                      <div class="row file-edit-text" >
                          <a href="" style="text-decoration: none">编辑个人资料 <span class="glyphicon glyphicon-menu-right"></span></a>
                      </div>
                  </div>
              </div>
              </div>
       </div>
       <div class="microblog-list col-md-8" >
           <c:choose>
               <c:when test="${sessionScope.user.blogNum == 0}">
                   <div class="no-blog-container">
                       <div class="no-blog-content">
                           <div class="no-blog-icon" style="margin-bottom: 2%;">
                               <img src="<c:url value='/resources/img/info.png'/>" alt="info">
                           </div>
                           <div class="no-blog-text">
                               你还没有发过微博，点这里发一条微博。
                           </div>
                       </div>
                   </div>
               </c:when>
               <c:otherwise>

               </c:otherwise>
           </c:choose>
       </div>
   </div>
</div>
<footer>
    <div class="footer-time" id="days"></div>
    <div class="footer-info">
        Copyright ©  2017 懒成铁
    </div>
</footer>
<script>
    var now = moment(); //使用 moment() 获取当前时间
    setInterval(function (){
        document.getElementById('days').innerHTML =moment().format("YYYY-MM-DD HH:mm:ss")
            ,1000
    })

</script>
<script type="text/javascript">
    $('#config-pop').webuiPopover({
        container: '#config-pop',
        trigger: 'hover',
        placement: 'bottom',
        animation: 'fade'
    });
    $('#message-pop').webuiPopover({
        container: '#message-pop',
        trigger: 'hover',
        placement: 'bottom',
        animation: 'fade'
    });
    $(function(){
        function footerPosition(){
            $("footer").removeClass("fixed-bottom");
            var contentHeight = document.body.scrollHeight,//网页正文全文高度
                winHeight = window.innerHeight;//可视窗口高度，不包括浏览器顶部工具栏
            if(!(contentHeight > winHeight)){
                //当网页正文高度小于可视窗口高度时，为footer添加类fixed-bottom
                $("footer").addClass("fixed-bottom");
            } else {
                $("footer").removeClass("fixed-bottom");
            }
        }
        footerPosition();
        $(window).resize(footerPosition);
    });
</script>
</body>
</html>