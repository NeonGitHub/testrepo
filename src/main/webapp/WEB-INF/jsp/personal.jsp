<%@page import="cn.graProject.entity.User"%>
<%@page import="cn.graProject.entity.Device"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<meta name="description" content="">
		<meta name="author" content="">
		<link rel="icon" href="/graProject/img/icon2.jpg">

		<title>智能水族箱-个人主页</title>
		
		<link href="/graProject/css/private.css" rel="stylesheet">
		<!-- Bootstrap core CSS -->
		<link href="/graProject/css/bootstrap.min.css" rel="stylesheet">
		<!-- Bootstrap theme -->
		<link href="/graProject/css/bootstrap-theme.min.css" rel="stylesheet">
		<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
		<link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

		<!-- Custom styles for this template -->
		<link href="/graProject/css/offcanvas.css" rel="stylesheet">

		<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
		<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
		<script src="../../assets/js/ie-emulation-modes-warning.js"></script>

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	</head>

	<body>
		<nav class="navbar navbar-fixed-top navbar-inverse">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
					<a class="navbar-brand" href="#">智能水族箱</a>
				</div>
				<div id="navbar" class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li>
							<a href="#">首页</a>
						</li>
						<li class="active">
							<a href="#about">个人主页</a>
						</li>
						<li>
							<a href="#contact">资讯</a>
						</li>
					</ul>
				</div>
				<!-- /.nav-collapse -->
			</div>
			<!-- /.container -->
		</nav>
		<!-- /.navbar -->

		<div class="container">

			<div class="row row-offcanvas row-offcanvas-right">

				<div class="col-xs-12 col-sm-9">
					<p class="pull-right visible-xs">
						<button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
					</p>
					<div class="jumbotron">
						<h1>图片/历史数据图表</h1>
						<p>折线图</p>
					</div>
					<% Device device = (Device) request.getAttribute("device");%>
					<h3>数据上传时间：<%=device.getUploadTime()%></h3>
					<div class="row">
						<div class="col-xs-6 col-lg-4">
							<h2>PH值</h2>
							<p>您的水族箱当前PH值为：
								<h4 style="color: red;"><%=device.getPhData()%> </h4></p>
							<p>氢离子浓度指数（hydrogen ion concentration）是指溶液中氢离子的总数和总物质的量的比。</p>
							<p>
								<a class="btn btn-default" href="#" role="button">View details &raquo;</a>
							</p>
						</div>
						<!--/.col-xs-6.col-lg-4-->
						<div class="col-xs-6 col-lg-4">
							<h2>TDS值</h2>
							<p>您的水族箱当前TDS值为：
								<h4 style="color: red;"><%=device.getTdsData() %> mg/L</h4></p>
							<p>总溶解固体（Total dissolved solids）,测量单位为毫克/升（mg/L）,它表明1升水中溶有多少毫克溶解性固体。</p>
							<p>
								<a class="btn btn-default" href="#" role="button">View details &raquo;</a>
							</p>
						</div>
						<!--/.col-xs-6.col-lg-4-->
						<div class="col-xs-6 col-lg-4">
							<h2>温度</h2>
							<p>您的水族箱当前温度为：
								<h4 style="color: red;"><%=device.getTempData() %> °C</h4></p>
							<p>水中的鱼儿依靠皮肤感觉器感觉环境温度的变动，保持恒定水温对水族箱来说至关重要。</p>
							<p>
								<a class="btn btn-default" href="#" role="button">View details &raquo;</a>
							</p>
						</div>
						<!--/.col-xs-6.col-lg-4-->

					</div>
					<!--/row-->
				</div>
				<!--/.col-xs-12.col-sm-9-->

				<div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
					<!--小屏幕下是隐藏此部分的-->
					<div class="userHeadDiv">
						<img class="img-circle img-thumbnail " src="/graProject/img/headpic.JPG" />
						<div class="userInfoDiv">
							<!--用户ID-->
							<% User user = (User) request.getAttribute("user");%>
							<h4><%=user.getUserId()%></h4>
							<div class="btn-group" role="group" aria-label="...">
								<button type="button" class="btn btn-default">个人设置</button>
								<button type="button" class="btn btn-default">注销</button>
							</div>
						</div>
					</div>
					<div class="list-group">
						<a href="#" class="list-group-item active text-center">个人主页</a>
						<a href="#" class="list-group-item text-center">历史数据</a>
						<a href="#" class="list-group-item text-center">新鲜资讯</a>
						<a href="#" class="list-group-item text-center">我的帖子</a>

					</div>
				</div>

			</div>
			<!--/row-->

			<hr>

			<footer>
				<p>&copy; 2018 Graduation Project by Jingxuan.</p>
			</footer>

		</div>
		<!--/.container-->

		<!-- Bootstrap core JavaScript
    ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="/graProject/js/jquery-3.3.1.min.js"></script>
		<script src="/graProject/js/bootstrap.min.js"></script>
		<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
		<!-- <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>-->
		<script src="/graProject/offcanvas.js"></script>
	</body>

</html>