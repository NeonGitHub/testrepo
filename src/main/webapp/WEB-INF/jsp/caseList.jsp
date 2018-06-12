 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/tag.jsp"%>
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

	<title>智能水族箱-查看案例</title>

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
						<a href="/graProject">首页</a>
					</li>
					<li>
						<a href="/graProject/personal/${sessionScope.user.userId}">个人主页</a>
					</li>
					<li class="dropdown active">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">案例功能 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">查看案例</a></li>
							<li><a href="/graProject/caseAnalysis">案例分析</a></li>
							<li><a href="/graProject/caseAdd">添加案例</a></li>
						</ul>
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

				<div class="discuss">
					<ul class="nav nav-tabs">
						<li role="presentation" class="active">
							<a href="#">查看案例</a>
						</li>
						<li role="presentation">
							<a href="/graProject/caseAdd">申请提交案例</a>
						</li>
					</ul>
				</div>

				<div class="row">
					<div class="col-md-6 col-md-offset-6">
						<form action="caseList.html">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="标题查找...">
							<span class="input-group-btn"><button class="btn btn-default" type="submit">查找</button></span>
						</div>
					</form>
					</div>
					<br>
					<div class="col-md-12">
						<br>
					</div>
				</div>
				
				
				
				<c:forEach items="${treatmentCaseList}" var="treatmentCase">
				<a class="myAlabel" href="caseInfo/${treatmentCase.caseId}/diseaseId/${treatmentCase.diseaseId}">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">案例编号 ${treatmentCase.caseId}</h3>
						</div>
						<div class="panel-body">
							<span class="glyphicon glyphicon-user" aria-hidden="true"></span><span> ${treatmentCase.caseAuthor}</span>
							<br><br>
							<span>诊断对象:</span><span>${treatmentCase.fishName}</span>
							<br>
							<span>疾病名称:</span><span>${treatmentCase.diseaseName}</span>
						</div>
					</div>
				</a>
				</c:forEach>
				



				<div class="col-md-4 col-md-offset-4">
					<nav aria-label="Page navigation">
						<ul class="pagination">
							<li>
								<a href="/graProject/caseList?page=1&pageSize=${pageSize}" aria-label="First">
										<span aria-hidden="true">&laquo;</span>
									</a>
							</li>
							<c:forEach var="i" begin="1" end="${totalPage}">
							<li>
								<a href="/graProject/caseList?page=${i}&pageSize=${pageSize}"><c:out value="${i}"/></a>
							</li>
							</c:forEach>
							
							<li>
								<a href="/graProject/caseList?page=${totalPage}&pageSize=${pageSize}" aria-label="Last">
										<span aria-hidden="true">&raquo;</span>
									</a>
							</li>
						</ul>
					</nav>
				</div>

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
					<a href="/graProject/personal/${sessionScope.user.userId}" class="list-group-item text-center">个人主页</a>
					<a href="/graProject/historyList?page=1&pageSize=30" class="list-group-item text-center">历史数据</a>
					<a href="#" class="list-group-item text-center active">查看案例</a>
					<a href="/graProject/caseAnalysis" class="list-group-item text-center">案例分析</a>
					<a href="/graProject/caseAdd" class="list-group-item text-center">添加案例</a>
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
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="/graProject/js/bootstrap.min.js"></script>
	<script src="/graProject/js/offcanvas.js"></script>
</body>

</html>
