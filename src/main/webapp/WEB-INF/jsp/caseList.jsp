<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/tag.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="icon" href="img/icon2.jpg">

	<title>智能水族箱-查看案例</title>

	<link href="css/private.css" rel="stylesheet">
	<!-- Bootstrap core CSS -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<!-- Bootstrap theme -->
	<link href="css/bootstrap-theme.min.css" rel="stylesheet">
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

	<!-- Custom styles for this template -->
	<link href="css/offcanvas.css" rel="stylesheet">

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
						<a href="#about">个人主页</a>
					</li>
					<li class="dropdown active">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">案例功能 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="caseList.html">查看案例</a></li>
							<li><a href="caseAnalysis.html">案例分析</a></li>
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
							<a href="caseList.html">查看案例</a>
						</li>
						<li role="presentation">
							<a href="caseAdd.html">申请提交案例</a>
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




				<a class="myAlabel" href="#">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">欢迎来到智能水族箱社区！<span class="label label-danger">置顶 </span></h3>
						</div>
						<div class="panel-body">
							<span class="glyphicon glyphicon-user" aria-hidden="true"></span><span> 张景轩</span>
							<span class='glyphicon glyphicon-time' aria-hidden="true"></span>
							<span>2018-02-17</span>
							<br></br>
							<p>欢迎来到智能水族箱社区！欢迎来到智能水族箱社区！欢迎来到智能水族箱社区！欢迎来到智能水族箱社区！欢迎来到智能水族箱社区！欢迎来到智能水族箱社区！
							</p>
						</div>
					</div>
				</a>

				<a class="myAlabel" href="caseInfo.html">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">案例编号0001</h3>
						</div>
						<div class="panel-body">
							<span class="glyphicon glyphicon-user" aria-hidden="true"></span><span> 张景轩</span>
							<span class='glyphicon glyphicon-time' aria-hidden="true"></span>
							<span>2018-02-17</span>
							<br><br>
							<span>诊断对象编号:</span><span>0001 金鱼</span>
							<br>
							<span>疾病编号:</span><span>0001 多动症</span>
						</div>
					</div>
				</a>
				<a class="myAlabel" href="#">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">案例编号0002</h3>
						</div>
						<div class="panel-body">
							<span class="glyphicon glyphicon-user" aria-hidden="true"></span><span> 张景轩</span>
							<span class='glyphicon glyphicon-time' aria-hidden="true"></span>
							<span>2018-02-17</span>
							<br><br>
							<span>诊断对象编号:</span><span>0002 龙鱼</span>
							<br>
							<span>疾病编号:</span><span>0002 攻击性强</span>
						</div>
					</div>
				</a>



				<div class="col-md-4 col-md-offset-4">
					<nav aria-label="Page navigation">
						<ul class="pagination">
							<li>
								<a href="#" aria-label="Previous">
										<span aria-hidden="true">&laquo;</span>
									</a>
							</li>
							<li>
								<a href="#">1</a>
							</li>
							<li>
								<a href="#">2</a>
							</li>
							<li>
								<a href="#">3</a>
							</li>
							<li>
								<a href="#">4</a>
							</li>
							<li>
								<a href="#">5</a>
							</li>
							<li>
								<a href="#" aria-label="Next">
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
					<img class="img-circle img-thumbnail " src="img/headpic.JPG" />

					<div class="userInfoDiv">
						<!--用户ID-->
						<h4>张景轩</h4>
						<div class="btn-group" role="group" aria-label="...">
							<button type="button" class="btn btn-default">个人设置</button>
							<button type="button" class="btn btn-default">注销</button>
						</div>
					</div>
				</div>
				<div class="list-group">
					<a href="userhome.html" class="list-group-item text-center">个人主页</a>
					<a href="#" class="list-group-item text-center">历史数据</a>
					<a href="caseAnalysis.html" class="list-group-item text-center">案例分析</a>
					<a href="caseList.html" class="list-group-item text-center active">查看案例</a>
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
	<script src="js/jquery-3.3.1.min.js"></script>
	<script>
		window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
	</script>
	<script src="js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<!-- <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>-->
	<script src="offcanvas.js"></script>
</body>

</html>
