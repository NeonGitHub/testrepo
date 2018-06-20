<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

<title>智能水族箱-案例分析</title>

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
				<li><a href="#">首页</a></li>
				<li><a href="/graProject/personal/${sessionScope.user.userId}">个人主页</a></li>
				<li class="dropdown active"><a href="#" class="dropdown-toggle" data-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false">
						案例功能 <span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="/graProject/caseList?page=1&pageSize=10">查看案例</a></li>
						<li><a href="#">案例分析</a></li>
						<li><a href="/graProject/caseAdd">添加案例</a></li>
					</ul></li>
				
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
						<li role="presentation" class="active"><a href="#">填写</a></li>
						<li role="presentation"><a href="#">分析</a></li>
						<li role="presentation"><a href="#">诊断</a></li>
					</ul>
				</div>

				<form action="/graProject/caseAnalysisSubmit" method="post">
					<div class="col-md-12">
						<h3>填写基本情况</h3>
					</div>

					<div class="myBselect">
						<div class="row">
							<div class="form-group">
								<div class="col-md-3 col-md-offset-3">
									<span>鱼的种类：</span>
								</div>
								<div class="col-md-4">
									<select name="fishName" class="myAselect">
										<option>--请选择--</option>
										<c:forEach items="${fishList}" var="fish">
											<option value="${fish.fishName}">${fish.fishName}</option>
										</c:forEach>
									</select>
								</div>
							</div>
						</div>
						<br>

						<div class="row">
							<div class="form-group">
								<div class="col-md-2 col-md-offset-3">
									<span>环境值：</span>
								</div>
								<div class="col-md-2">
									<input type="text" name="phData" placeholder="ph值" class="form-control">
								</div>
								<div class="col-md-2">
									<input type="text" name="tdsData" placeholder="tds值(mg/l)" class="form-control">
								</div>
								<div class="col-md-2">
									<input type="text" name="tempData" placeholder="温度值 (℃)" class="form-control">
								</div>
							</div>
						</div>
						<br>


						<div class="row">
							<div class="form-group">
								<div class="col-md-3 col-md-offset-3">
									<span>1.体表：</span>
								</div>
								<div class="col-md-4">
									<select name="characterA" class="myAselect">
										<option value="0">--请选择--</option>
										<c:forEach items="${behaveList}" var="behave">
											<c:if test="${behave.behavePart=='体表'}">
												<option value="${behave.behaveValue}">${behave.behaveDesc}</option>
											</c:if>
										</c:forEach>
									</select>
								</div>
							</div>
						</div>
						<br>


						<div class="row">
							<div class="form-group">
								<div class="col-md-3 col-md-offset-3">
									<span>2.头部：</span>
								</div>
								<div class="col-md-4">
									<select name="characterB" class="myAselect">
										<option value="0">--请选择--</option>
										<c:forEach items="${behaveList}" var="behave">
											<c:if test="${behave.behavePart=='头部'}">
												<option value="${behave.behaveValue}">${behave.behaveDesc}</option>
											</c:if>
										</c:forEach>
									</select>
								</div>
							</div>
						</div>
						<br>



						<div class="row">
							<div class="form-group">
								<div class="col-md-3 col-md-offset-3">
									<span>3.腮部：</span>
								</div>
								<div class="col-md-4">
									<select name="characterC" class="myAselect">
										<option value="0">--请选择--</option>
										<c:forEach items="${behaveList}" var="behave">
											<c:if test="${behave.behavePart=='腮部'}">
												<option value="${behave.behaveValue}">${behave.behaveDesc}</option>
											</c:if>
										</c:forEach>
									</select>
								</div>
							</div>
						</div>
						<br>



						<div class="row">
							<div class="form-group">
								<div class="col-md-3 col-md-offset-3">
									<span>4.腹部：</span>
								</div>
								<div class="col-md-4">
									<select name="characterD" class="myAselect">
										<option value="0">--请选择--</option>
										<c:forEach items="${behaveList}" var="behave">
											<c:if test="${behave.behavePart=='腹部'}">
												<option value="${behave.behaveValue}">${behave.behaveDesc}</option>
											</c:if>
										</c:forEach>
									</select>
								</div>
							</div>
						</div>
						<br>

						<div class="row">
							<div class="form-group">
								<div class="col-md-3 col-md-offset-3">
									<span>5.鳞片：</span>
								</div>
								<div class="col-md-4">
									<select name="characterE" class="myAselect">
										<option value="0">--请选择--</option>
										<c:forEach items="${behaveList}" var="behave">
											<c:if test="${behave.behavePart=='鳞片'}">
												<option value="${behave.behaveValue}">${behave.behaveDesc}</option>
											</c:if>
										</c:forEach>
									</select>
								</div>
							</div>
						</div>
						<br>

						<div class="row">
							<div class="form-group">
								<div class="col-md-3 col-md-offset-3">
									<span>6.鱼鳍：</span>
								</div>
								<div class="col-md-4">
									<select name="characterF" class="myAselect">
										<option value="0">--请选择--</option>
										<c:forEach items="${behaveList}" var="behave">
											<c:if test="${behave.behavePart=='鱼鳍'}">
												<option value="${behave.behaveValue}">${behave.behaveDesc}</option>
											</c:if>
										</c:forEach>
									</select>
								</div>
							</div>
						</div>
						<br>

						<div class="row">
							<div class="form-group">
								<div class="col-md-3 col-md-offset-3">
									<span>7.肌肉：</span>
								</div>
								<div class="col-md-4">
									<select name="characterG" class="myAselect">
										<option value="0">--请选择--</option>
										<c:forEach items="${behaveList}" var="behave">
											<c:if test="${behave.behavePart=='肌肉'}">
												<option value="${behave.behaveValue}">${behave.behaveDesc}</option>
											</c:if>
										</c:forEach>
									</select>
								</div>
							</div>
						</div>
						<br>

						<div class="row">
							<div class="form-group">
								<div class="col-md-3 col-md-offset-3">
									<span>8.肠道：</span>
								</div>
								<div class="col-md-4">
									<select name="characterH" class="myAselect">
										<option value="0">--请选择--</option>
										<c:forEach items="${behaveList}" var="behave">
											<c:if test="${behave.behavePart=='肠道'}">
												<option value="${behave.behaveValue}">${behave.behaveDesc}</option>
											</c:if>
										</c:forEach>
									</select>
								</div>
							</div>
						</div>

						<!-- 对应上面choose标签结束 -->
						<!-- 对应上面choose标签外面foreach标签结束 -->
					</div>
					</br>
					<div class="row">
						<div class="col-md-2 col-md-offset-8" style="padding-left: 35px;">
							<button type="submit" class="btn btn-default">提交</button>
						</div>
					</div>
				</form>

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
					<a href="/graProject/caseList?page=1&pageSize=10" class="list-group-item text-center">查看案例</a>
					<a href="/graProject/caseAnalysis" class="list-group-item text-center active">案例分析</a>
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

</body>

</html>
