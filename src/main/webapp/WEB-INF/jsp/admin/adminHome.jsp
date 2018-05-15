<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../common/tag.jsp"%>
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

<title>智能水族箱-管理员主页</title>

<link href="/graProject/css/private.css" rel="stylesheet">
<!-- Bootstrap core CSS -->
<link href="/graProject/css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap theme -->
<link href="/graProject/css/bootstrap-theme.min.css" rel="stylesheet">
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/graProject/css/offcanvas.css" rel="stylesheet">
<!-- 引入 echarts.js -->
<script src="/graProject/js/echarts.min.js"></script>
<!-- 引入 walden 主题 -->
<script src="/graProject/js/walden.js"></script>
<!-- Placed at the end of the document so the pages load faster -->
<script src="/graProject/js/jquery-3.3.1.min.js"></script>
<script src="/graProject/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<!-- <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>-->
<script src="/graProject/js/offcanvas.js"></script>
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
				<li class="active"><a href="/graProject/admin/home">管理员主页</a></li>
				<li><a href="/graProject/admin/addDisease">添加疾病种类</a></li>
				<li><a href="/graProject/admin/addCase">添加生物种类</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false">
						管理案例 <span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="/graProject/admin/caseList?page=1&pageSize=10">查看治愈案例</a></li>
						<li><a href="/graProject/admin/addCase">添加治愈案例</a></li>
						<li><a href="/graProject/admin/addCase">审核治愈案例</a></li>
					</ul></li>
				<li><a href="/graProject/admin/newslist.html">资讯管理</a></li>
			</ul>
		</div>
		<!-- /.nav-collapse -->
	</div>
	<!-- /.container --> </nav>
	<!-- /.navbar -->

	<div class="container">

		<div class="row row-offcanvas row-offcanvas-right">

			<div class="col-xs-12 col-sm-9">
				<h3>用户列表：</h3>

				<div class="row" style="padding: 15px">

					<table class="table">
						<tr>
							<th>数据编号</th>
							<th>用户ID</th>
							<th>密码</th>
							<th>邮箱</th>
							<th>关联设别ID</th>
						</tr>
						<tr>
							<td>数据编号</td>
							<td>用户ID</td>
							<td>密码</td>
							<td>邮箱</td>
							<td>关联设别ID</td>
						</tr>
					</table>

					<div class="col-md-4 col-md-offset-4">
						<nav aria-label="Page navigation">
						<ul class="pagination">
							<li><a href="/graProject/caseList?page=1&pageSize=${pageSize}" aria-label="First">
									<span aria-hidden="true">&laquo;</span>
								</a></li>
							<c:forEach var="i" begin="1" end="${totalPage}">
								<li><a href="/graProject/caseList?page=${i}&pageSize=${pageSize}">
										<c:out value="${i}" />
									</a></li>
							</c:forEach>
							<li><a href="/graProject/caseList?page=${totalPage}&pageSize=${pageSize}"
									aria-label="Last">
									<span aria-hidden="true">&raquo;</span>
								</a></li>
						</ul>
						</nav>
					</div>

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

						<h4>${sessionScope.user.userId}</h4>
						<div class="btn-group" role="group" aria-label="...">
							<button type="button" class="btn btn-default">个人设置</button>
							<button type="button" class="btn btn-default">注销</button>
						</div>
					</div>
				</div>
				<div class="list-group">
					<a href="#" class="list-group-item active text-center">管理用户主页</a>
					<a href="/graProject/caseList?page=1&pageSize=10" class="list-group-item text-center">查看案例</a>
					<a href="/graProject/admin/Disease" class="list-group-item text-center">管理疾病种类</a>
					<a href="/graProject/admin/Case" class="list-group-item text-center">管理生物种类</a>
					<a class="list-group-item text-center dropdown-toggle" data-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false">
						管理案例 <span class="caret"></span>
					</a>
					<ul class="dropdown-menu" style="width: 100%">
						<li class="text-center"><a href="/graProject/admin/caseList?page=1&pageSize=10">查看治愈案例</a></li>
						<li class="text-center"><a href="/graProject/admin/addCase">添加治愈案例</a></li>
						<li class="text-center"><a href="/graProject/admin/addCase">审核治愈案例</a></li>
					</ul>

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

</body>

</html>