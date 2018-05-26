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
				<li><a href="home.html">首页</a></li>
				<li><a href="/graProject/admin/${sessionScope.user.userId}">管理员主页</a></li>
				<li class="dropdown active"><a href="#" class="dropdown-toggle" data-toggle="dropdown"
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
						<li role="presentation"><a href="/graProject/admin/findDisease?page=1&pageSize=10">查看所有疾病</a></li>
						<li role="presentation" class="active"><a href="#">添加疾病种类</a></li>
					</ul>
				</div>

				<div class="row">

					<form action="/graProject/admin/addDisease2" method="post">
						<div class="col-md-12">
							<h3>填写基本情况</h3>
						</div>

						<div class="myBselect">
							<div class="row">
								<div class="form-group">
									<div class="col-md-2 col-md-offset-3">
										<span>疾病名称：</span>
									</div>
									<div class="col-md-4">
										<input name="diseaseName" type="text" class="form-control" style="width: 220px">
									</div>
								</div>
							</div>
							<br>


							<div class="row">
								<div class="form-group">
									<div class="col-md-2 col-md-offset-3">
										<span>1.体表：</span>
									</div>
									<div class="col-md-4">
										<select name="characterA" class="myAselect">
											<option value="">--请选择--</option>
											<c:forEach items="${behaveList}" var="behave">
												<c:if test="${behave.behavePart=='体表'}">
													<option value="${behave.behaveId}+${behave.behaveDesc}">${behave.behaveDesc}</option>
												</c:if>
											</c:forEach>
										</select>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-2 col-md-offset-3">
									<span>2.头部：</span>
								</div>
								<div class="col-md-4">
									<select name="characterB" class="myAselect">
										<option value="">--请选择--</option>
										<c:forEach items="${behaveList}" var="behave">
											<c:if test="${behave.behavePart=='头部'}">
												<option value="${behave.behaveId}+${behave.behaveDesc}">${behave.behaveDesc}</option>
											</c:if>
										</c:forEach>
									</select>
								</div>
							</div>
							<br>

							<div class="row">
								<div class="form-group">
									<div class="col-md-2 col-md-offset-3">
										<span>3.腮部：</span>
									</div>
									<div class="col-md-4">
										<select name="characterC" class="myAselect">
											<option value="">--请选择--</option>
											<c:forEach items="${behaveList}" var="behave">
												<c:if test="${behave.behavePart=='腮部'}">
													<option value="${behave.behaveId}+${behave.behaveDesc}">${behave.behaveDesc}</option>
												</c:if>
											</c:forEach>
										</select>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<div class="col-md-2 col-md-offset-3">
										<span>4.腹部：</span>
									</div>
									<div class="col-md-4">
										<select name="characterD" class="myAselect">
											<option value="">--请选择--</option>
											<c:forEach items="${behaveList}" var="behave">
												<c:if test="${behave.behavePart=='腹部'}">
													<option value="${behave.behaveId}+${behave.behaveDesc}">${behave.behaveDesc}</option>
												</c:if>
											</c:forEach>
										</select>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<div class="col-md-2 col-md-offset-3">
										<span>5.鳞片：</span>
									</div>
									<div class="col-md-4">
										<select name="characterE" class="myAselect">
											<option value="">--请选择--</option>
											<c:forEach items="${behaveList}" var="behave">
												<c:if test="${behave.behavePart=='鳞片'}">
													<option value="${behave.behaveId}+${behave.behaveDesc}">${behave.behaveDesc}</option>
												</c:if>
											</c:forEach>
										</select>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<div class="col-md-2 col-md-offset-3">
										<span>6.鱼鳍：</span>
									</div>
									<div class="col-md-4">
										<select name="characterF" class="myAselect">
										<option value="">--请选择--</option>
										<c:forEach items="${behaveList}" var="behave">
											<c:if test="${behave.behavePart=='鱼鳍'}">
												<option value="${behave.behaveId}+${behave.behaveDesc}">${behave.behaveDesc}</option>
											</c:if>
										</c:forEach>
									</select>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<div class="col-md-2 col-md-offset-3">
										<span>7.肌肉：</span>
									</div>
									<div class="col-md-4">
										<select name="characterG" class="myAselect">
										<option value="">--请选择--</option>
										<c:forEach items="${behaveList}" var="behave">
											<c:if test="${behave.behavePart=='肌肉'}">
												<option value="${behave.behaveId}+${behave.behaveDesc}">${behave.behaveDesc}</option>
											</c:if>
										</c:forEach>
									</select>
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group">
									<div class="col-md-2 col-md-offset-3">
										<span>8.肠道：</span>
									</div>
									<div class="col-md-4">
										<select name="characterH" class="myAselect">
											<option value="">--请选择--</option>
											<c:forEach items="${behaveList}" var="behave">
												<c:if test="${behave.behavePart=='肠道'}">
													<option value="${behave.behaveId}+${behave.behaveDesc}">${behave.behaveDesc}</option>
												</c:if>
											</c:forEach>
										</select>
									</div>
								</div>
							</div>
							<br>

							<div class="row">
								<div class="form-group">
									<div class="col-md-2 col-md-offset-3">
										<span>9.疾病原因：</span>
									</div>
									<div class="col-md-4">
										<div class="input-group">
											<textarea class="form-control" name="diseaseReason"
												style="resize: none; font-size: 14px; width: 300px; height: 100px; border-radius: 5px;"></textarea>
										</div>
									</div>
								</div>
							</div>
							<br>

						</div>
						</br>




						<div class="row">
							<div class="col-md-3 col-md-offset-5" style="padding-left: 15px;">
								<button type="submit" class="btn btn-default">提交</button>
							</div>
						</div>
					</form>


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
						<a class="list-group-item text-center active dropdown-toggle" data-toggle="dropdown"
							role="button" aria-haspopup="true" aria-expanded="false">
							管理疾病种类 <span class="caret"></span>
						</a>
						<ul class="dropdown-menu" style="width: 100%">
							<li class="text-center"><a href="/graProject/admin/findDisease?page=1&pageSize=10">查看疾病种类</a></li>
							<li class="text-center"><a href="/graProject/admin/addDisease">添加疾病种类</a></li>
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
						<a class="list-group-item text-center dropdown-toggle" data-toggle="dropdown" role="button"
							aria-haspopup="true" aria-expanded="false">
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
