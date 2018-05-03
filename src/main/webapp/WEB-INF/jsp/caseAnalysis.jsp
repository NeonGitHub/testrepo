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

		<title>智能水族箱-新闻资讯</title>

		<link href="/graProject/css/private.css" rel="stylesheet">
		<!-- Bootstrap core CSS -->
		<link href="/graProject/css/bootstrap.min.css" rel="stylesheet">
		<!-- Bootstrap theme -->
		<link href="css/bootstrap-theme.min.css" rel="stylesheet">
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
						<li>
							<a href="userhome.html">个人主页</a>
						</li>
						<li class="dropdown active">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">案例功能 <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="caseList.html">查看案例</a></li>
								<li><a href="#">案例分析</a></li>
								<li><a href="caseAdd.html">添加案例</a></li>
							</ul>
						</li>
						<li>
							<a href="newslist.html">社交资讯</a>
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
										<a href="caseAnalysis.html">填写</a>
									</li>
									<li role="presentation">
										<a href="caseAnalysis2.html">分析</a>
									</li>
									<li role="presentation">
										<a href="caseAnalysis3.html">诊断</a>
									</li>
								</ul>
							</div>

							<form action="caseAnalysis2.html" method="post">
								<div class="col-md-12"><h3>填写基本情况</h3></div>

								<div class="myBselect">
									<div class="row">
										<div class="col-md-3 col-md-offset-3"><span>鱼的种类：</span></div>
										<div class="col-md-4">
											<select name="fishType" class="myAselect">
												<option>--请选择--</option>
												<c:forEach items="${fishList} var="fish">
												<option value="${fish.name}">${fish.name}</option>
												</c:forEach>
											</select>
										</div>
									</div><br>
									
									<c:forEach items="${behaveList}" var="behave">
									
									
									
									<c:choose>
									
									<c:when test="${behave.part=='体表'}">
									<div class="row">
										<div class="col-md-3 col-md-offset-3"><span>1.体表：</span></div>
										<div class="col-md-4">
											<select name="characterA" class="myAselect">
												<option>--请选择--</option>
												<option value="${behave.id}">${behave.desc}</option>
											</select>
										</div>
									</div><br>
									</c:when>
									
									<c:when test="${behave.part=='头部'}">
									<div class="row">
										<div class="col-md-3 col-md-offset-3"><span>2.头部：</span></div>
										<div class="col-md-4">
											<select name="characterB" class="myAselect">
												<option>--请选择--</option>
												<option value="${behave.id}">${behave.desc}</option>
											</select>
										</div>
									</div><br>
									</c:when>
									
									<c:when test="${behave.part=='腮部'}">
									<div class="row">
										<div class="col-md-3 col-md-offset-3"><span>3.腮部：</span></div>
										<div class="col-md-4">
											<select name="characterC" class="myAselect">
												<option>--请选择--</option>
												<option value="${behave.id}">${behave.desc}</option>
											</select>
										</div>
									</div><br>
									</c:when>
									
									<c:when test="${behave.part=='腹部'}">
									<div class="row">
										<div class="col-md-3 col-md-offset-3"><span>4.腹部：</span></div>
										<div class="col-md-4">
											<select name="characterD" class="myAselect">
												<option>--请选择--</option>
												<option value="${behave.id}">${behave.desc}</option>
											</select>
										</div>
									</div><br>
									</c:when>
									
									<c:when test="${behave.part=='鳞片'}">
									<div class="row">
										<div class="col-md-3 col-md-offset-3"><span>5.鳞片：</span></div>
										<div class="col-md-4">
											<select name="characterE" class="myAselect">
												<option>--请选择--</option>
												<option value="${behave.id}">${behave.desc}</option>
											</select>
										</div>
									</div><br>
									</c:when>
									
									<c:when test="${behave.part=='鱼鳍'}">
									<div class="row">
										<div class="col-md-3 col-md-offset-3"><span>6.鱼鳍：</span></div>
										<div class="col-md-4">
											<select name="characterF" class="myAselect">
												<option>--请选择--</option>
												<option value="${behave.id}">${behave.desc}</option>
											</select>
										</div>
									</div><br>
									</c:when>
									
									<c:when test="${behave.part=='肌肉'}">
									<div class="row">
										<div class="col-md-3 col-md-offset-3"><span>7.肌肉：</span></div>
										<div class="col-md-4">
											<select name="characterG" class="myAselect">
												<option>--请选择--</option>
												<option value="${behave.id}">${behave.desc}</option>
											</select>
										</div>
									</div><br>
									</c:when>
									
									<c:when test="${behave.part=='肠道'}">
									<div class="row">
										<div class="col-md-3 col-md-offset-3"><span>8.肠道：</span></div>
										<div class="col-md-4">
											<select name="characterH" class="myAselect">
												<option>--请选择--</option>
												<option value="${behave.id}">${behave.desc}</option>
											</select>
										</div>
									</div>
									</c:when>
								
									</c:choose><!-- 对应上面choose标签结束 -->
									</c:forEach><!-- 对应上面choose标签外面foreach标签结束 -->
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
						<img class="img-circle img-thumbnail " src="img/headpic.JPG" />

						<div class="userInfoDiv">
							<!--用户ID-->
							<h4>{sessionScope.user.userId}</h4>
							<div class="btn-group" role="group" aria-label="...">
								<button type="button" class="btn btn-default">个人设置</button>
								<button type="button" class="btn btn-default">注销</button>
							</div>
						</div>
					</div>
					<div class="list-group">
						<a href="userhome.html" class="list-group-item text-center">个人主页</a>
						<a href="#" class="list-group-item text-center">历史数据</a>
						<a href="caseAnalysis.html" class="list-group-item text-center active">案例分析</a>
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
		<script>
			window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
		</script>
		<script src="/graProject/js/bootstrap.min.js"></script>
		<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
		<!-- <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>-->
		<script src="/graProject/js/offcanvas.js"></script>
	</body>

</html>
