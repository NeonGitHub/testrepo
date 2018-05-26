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
<link href="/graProject/css/offcanvas.css" rel="stylesheet">

<script src="/graProject/js/jquery-3.3.1.min.js"></script>
<script src="/graProject/js/bootstrap.min.js"></script>
<script src="/graProject/js/offcanvas.js"></script>
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
				<li><a href="#.html">首页</a></li>
				<li><a href="/graProject/admin/${seesionScope.user.userId}?page=1&pageSize=10">管理员主页</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false">
						管理疾病种类 <span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="/graProject/admin/findDisease?page=1&pageSize=10">查看疾病种类</a></li>
						<li><a href="/graProject/admin/addDisease">添加疾病种类</a></li>
					</ul></li>


				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false">
						管理生物种类 <span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="/graProject/admin/findFish?page=1&pageSize=10">查看生物种类</a></li>
						<li><a href="/graProject/admin/addFish">添加生物种类</a></li>
					</ul></li>

				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false">
						管理特征表现 <span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="/graProject/admin/findBehave?page=1&pageSize=10">查看特征表现</a></li>
						<li><a href="/graProject/admin/addBehave">添加特征表现</a></li>
					</ul></li>

				<li class="dropdown active"><a href="#" class="dropdown-toggle" data-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false">
						管理案例 <span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="/graProject/admin/findCase?page=1&pageSize=10">查看治愈案例</a></li>
						<li><a href="/graProject/admin/addCase">添加治愈案例</a></li>
						<li><a href="/graProject/admin/findCheckCase?page=1&pageSize=10">审核治愈案例</a></li>
					</ul></li>
				<li><a href="/graProject/admin/newslist?page=1&pageSize=10">资讯管理</a></li>
			</ul>
		</div>
		<!-- /.nav-collapse -->
	</div>
	<!-- /.container --> </nav>
	<!-- /.navbar -->

	<div class="container">

		<div class="row row-offcanvas row-offcanvas-right">

			<div class="col-xs-12 col-sm-9">
				<div class="discuss">
					<ul class="nav nav-tabs">
						<li role="presentation"><a href="/graProject/admin/findCase?page=1&pageSize=10">查看所有案例</a></li>
						<li role="presentation"><a href="/graProject/admin/addCase">添加治愈案例</a></li>
						<li role="presentation" class="active"><a
								href="/graProject/admin/findCheckCase?page=1&pageSize=10">审核治愈案例</a></li>
					</ul>
				</div>
				<div class="col-md-12">
					<h3>审核案例</h3>
				</div>

				<div class="row" style="padding: 15px">

					<table class="table">
						<tr>
							<th>案例编号</th>
							<th>案例作者</th>
							<th>生物种类</th>
							<th>疾病编号</th>
							<th>疾病名称</th>
							<th>操作预留</th>
							<th>操作预留</th>
							<th>操作预留</th>
						</tr>
						<c:forEach items="${treatmentList}" var="List">
							<tr>
								<td>${List.caseId}</td>
								<td>${List.caseAuthor}</td>
								<td>${List.fishName}</td>
								<td>${List.diseaseId}</td>
								<td>${List.diseaseName}</td>
								<td><button type="button"
										onclick="window.location.href = '/graProject/admin/findOneCheckCase/${List.caseId}'"
										class="btn btn-info">详情</button></td>
								<td><button type="button"
										onclick="window.location.href = '/graProject/admin/passCheckCase/${List.caseId}'"
										class="btn btn-success">通过</button></td>
								<td><button type="button"
										onclick="window.location.href = '/graProject/admin/deleteCheckCase/${List.caseId}'"
										class="btn btn-danger">拒绝</button></td>
							</tr>
						</c:forEach>

					</table>

					<div class="col-md-4 col-md-offset-4">
						<nav aria-label="Page navigation">
						<ul class="pagination">
							<li><a href="/graProject/admin/findCheckCase?page=1&pageSize=${pageSize}"
									aria-label="First">
									<span aria-hidden="true">&laquo;</span>
								</a></li>
							<c:forEach var="i" begin="1" end="${totalPage}">
								<li><a href="/graProject/admin/findCheckCase?page=${i}&pageSize=${pageSize}">
										<c:out value="${i}" />
									</a></li>
							</c:forEach>
							<li><a href="/graProject/admin/findCheckCase?page=${totalPage}&pageSize=${pageSize}"
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
					<a href="#" class="list-group-item text-center">管理用户主页</a>
					<div class="dropdown">
						<a class="list-group-item text-center dropdown-toggle" data-toggle="dropdown" role="button"
							aria-haspopup="true" aria-expanded="false">
							管理疾病种类 <span class="caret"></span>
						</a>
						<ul class="dropdown-menu" style="width: 100%">
							<li class="text-center"><a href="/graProject/admin/findCase?page=1&pageSize=10">查看疾病种类</a></li>
							<li class="text-center"><a href="/graProject/admin/addCase">添加疾病种类</a></li>
						</ul>
					</div>

					<div class="dropdown">
						<a class="list-group-item text-center dropdown-toggle" data-toggle="dropdown" role="button"
							aria-haspopup="true" aria-expanded="false">
							管理生物种类 <span class="caret"></span>
						</a>
						<ul class="dropdown-menu" style="width: 100%">
							<li class="text-center"><a href="/graProject/admin/findFish?page=1&pageSize=10">查看已知生物种类</a></li>
							<li class="text-center"><a href="/graProject/admin/addFish">添加生物种类</a></li>
						</ul>
					</div>
					
					
					<div class="dropdown">
						<a class="list-group-item text-center dropdown-toggle" data-toggle="dropdown"
							role="button" aria-haspopup="true" aria-expanded="false">
							管理特征表现 <span class="caret"></span>
						</a>
						<ul class="dropdown-menu" style="width: 100%">
							<li class="text-center"><a href="/graProject/admin/findBehave?page=1&pageSize=10">查看特征表现</a></li>
							<li class="text-center"><a href="/graProject/admin/addBehave">添加特征表现</a></li>
						</ul>
					</div>

					<div class="dropdown">
						<a class="list-group-item text-center  active dropdown-toggle" data-toggle="dropdown"
							role="button" aria-haspopup="true" aria-expanded="false">
							管理案例 <span class="caret"></span>
						</a>
						<ul class="dropdown-menu" style="width: 100%">
							<li class="text-center"><a href="/graProject/admin/findCase?page=1&pageSize=10">查看治愈案例</a></li>
							<li class="text-center"><a href="/graProject/admin/addCase">添加治愈案例</a></li>
							<li class="text-center"><a href="/graProject/admin/findCheckCase?page=1&pageSize=10">审核治愈案例</a></li>
						</ul>
					</div>

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
