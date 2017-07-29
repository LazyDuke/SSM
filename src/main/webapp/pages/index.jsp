<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<script src="https://cdn.bootcss.com/jquery/3.2.0/jquery.js"></script>
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>MicroBlog</title>
<style>
body {
	background: url("<c:url value='/resources/img/bg.png'/>");
	background-size: cover;
	padding-top: 70px;
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
			<ul class="nav navbar-nav navbar-right">
				<li><a href="<c:url value='/login'/>" style="font-size: 20px; font-weight: bold;">请登录</a></li>
			</ul>
			<div>
				<p class="navbar-text navbar-right"
					style="line-height: 200%; margin-bottom: 0;">您好，</p>
			</div>
		</div>
	</nav>
</body>
</html>