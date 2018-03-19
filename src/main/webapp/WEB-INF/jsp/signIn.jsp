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

		<title>智能水族箱-登录个人设备</title>

		<!-- Bootstrap core CSS -->
		<link href="/graProject/css/bootstrap.min.css" rel="stylesheet">
		<!-- Bootstrap theme -->
		<link href="/graProject/css/bootstrap-theme.min.css" rel="stylesheet">
		<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
		<!-- <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
-->
		<!-- Custom styles for this template -->
		<link href="/graProject/css/signin.css" rel="stylesheet">

		<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
		<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
		<!--<script src="../../assets/js/ie-emulation-modes-warning.js"></script>-->

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	</head>

	<body>

		<div class="container">

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
								<a href="userhome.html">个人主页</a>
							</li>
							<li>
								<a href="news.html">资讯</a>
							</li>
						</ul>
					</div>
					<!-- /.nav-collapse -->
				</div>
				<!-- /.container -->
			</nav>
			<!-- /.navbar -->

			<form class="form-signin" action="signin" method="post">
				<h2 class="form-signin-heading">登录</h2>
				<label for="inputEmail" class="sr-only">Email address</label>
				<input name="userEmail" type="email" id="inputEmail" class="form-control" placeholder="电子邮箱地址" required autofocus>
				<label for="inputPassword" class="sr-only">Password</label>
				<input name="userPwd" type="password" id="inputPassword" class="form-control" placeholder="密码" required>
				<div class="checkbox">
					<label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
				</div>
				<button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
				<button class="btn btn-lg btn-primary btn-block" type="button" onclick="top.location='img/headpic.JPG'">注册</button>
			</form>

		</div>
		<!-- /container -->

		<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
		<!--<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>-->
	</body>

</html>