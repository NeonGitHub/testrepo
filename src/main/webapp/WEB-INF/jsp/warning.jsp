<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="img/icon2.jpg">

<title>智能水族箱-个人设置</title>


<link href="/graProject/css/private.css" rel="stylesheet">
<!-- Bootstrap core CSS -->
<link href="/graProject/css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap theme -->
<link href="/graProject/css/bootstrap-theme.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/graProject/css/offcanvas.css" rel="stylesheet">
</head>

<body>
	<nav class="navbar navbar-fixed-top navbar-inverse">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
				data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">智能水族箱</a>
		</div>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li><a href="home.html">首页</a></li>
				<li class="active"><a href="userhome.html">个人主页</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false">
						案例功能 <span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="caseList.html">查看案例</a></li>
						<li><a href="caseAnalysis.html">案例分析</a></li>
						<li><a href="caseAdd.html">添加案例</a></li>
					</ul></li>
				<li><a href="newslist.html">社交资讯</a></li>
			</ul>
		</div>
		<!-- /.nav-collapse -->
	</div>
	<!-- /.container --> </nav>
	<!-- /.navbar -->

	<div class="container">

		<div class="row row-offcanvas row-offcanvas-right">

			<div class="col-xs-12 col-sm-9">


				<div class="col-md-12">
					<h3>个人设置</h3>
				</div>
				<div class="myAtreat">
					<form action="/graProject/settings/${sessionScope.user.userId}">
						<br>
                        <input name="deviceId" type="hidden"  value="${sessionScope.user.userDev}"  class="form-control">
						<div class="form-group">
							<div class="col-md-3">
								<span>ph值预警</span>
							</div>
							<div class="col-md-2">
								<input name="phMax" type="text" placeholder="最大值" class="form-control"  value="${dw.phMax}">
							</div>
							<div class="col-md-2">
								<input name="phMin" type="text" placeholder="最小值" class="form-control" value="${dw.phMin}">
							</div>
						</div>
						<div class="col-md-12">
							<br>
						</div>
						<br>
						<div class="form-group">
							<div class="col-md-3">
								<span>tds值预警</span>
							</div>
							<div class="col-md-2">
								<input name="tdsMax" type="text" placeholder="最大值" class="form-control" value="${dw.tdsMax}">
							</div>
							<div class="col-md-2">
								<input name="tdsMin" type="text" placeholder="最小值" class="form-control" value="${dw.tdsMin}">
							</div>
						</div>
						<div class="col-md-12">
							<br>
						</div>
						<br>
						<div class="form-group">
							<div class="col-md-3">
								<span>温度预警</span>
							</div>
							<div class="col-md-2">
								<input name="tempMax" type="text" placeholder="最大值" class="form-control" value="${dw.tempMax}">
							</div>
							<div class="col-md-2">
								<input name="tempMin" type="text" placeholder="最小值" class="form-control" value="${dw.tempMin}">
							</div>
						</div>
						<div class="col-md-12">
							<br>
						</div>
						<br> <br>

						<div class="col-md-3 col-md-offset-3">
							<button type="submit" class="btn btn-default">提交</button>
							<button type="reset" class="btn btn-default">重置</button>
						</div>

					</form>
				</div>
				<!--mytreat-->
			</div>
			<!--/.col-xs-12.col-sm-9-->

			<div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
				<!--小屏幕下是隐藏此部分的-->
				<div class="userHeadDiv">
					<!--用户头像-->
					<img class="img-circle img-thumbnail " src="/graProject/img/headpic.JPG" />

					<div class="userInfoDiv">
						<!--用户ID-->
						<h4>${sessionScope.user.userId}</h4>
						<div class="btn-group" role="group" aria-label="...">
							<button type="button" class="btn btn-default">个人设置</button>
							<button type="button" class="btn btn-default">注销</button>
						</div>
					</div>
				</div>
				<div class="list-group">
					<a href="userhome.html" class="list-group-item text-center active">个人主页</a>
					<a href="#" class="list-group-item text-center">历史数据</a>
					<a href="caseAnalysis.html" class="list-group-item text-center">案例分析</a>
					<a href="caseList.html" class="list-group-item text-center">查看案例</a>
					<a href="caseAdd.html" class="list-group-item text-center">添加案例</a>
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
	<script src="/graProject/js/offcanvas.js"></script>
</body>

</html>
