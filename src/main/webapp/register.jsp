<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="icon" href="img/icon2.jp">

<title>智能水族箱-注册用户</title>

<!-- Bootstrap core CSS -->
<link href="/graProject/css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap theme -->
<link href="/graProject/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="/graProject/css/signin.css" rel="stylesheet">

</head>

<body>

	<div class="container">

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
						<li class="active"><a href="#about">个人主页</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"
								role="button" aria-haspopup="true" aria-expanded="false">
								案例功能 <span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li><a href="#">查看案例</a></li>
								<li><a href="#">案例分析</a></li>
								<li><a href="#">添加案例</a></li>
							</ul></li>
						<li><a href="#">社交资讯</a></li>
					</ul>
				</div>
				<!-- /.nav-collapse -->
			</div>
			<!-- /.container -->
		</nav>
		<!-- /.navbar -->

		<form class="form-signin" enctype="multipart/form-data" action="/graProject/register" method="post">
			<h2 class="form-signin-heading">欢迎注册</h2>
			<br>
			<h3 class="form-signin-heading">
				上传头像
				</h3>
				<input class="form-control" type="file" name="file" />
				<input id="Name" name="userId" class="form-control" placeholder="姓名" required autofocus>
				<input id="equipID" name="userDev" class="form-control" placeholder="设备ID" required>
				<input type="email" name="userEmail" id="Email" class="form-control" placeholder="电子邮箱地址" required>
				<input type="password" name="userPwd" id="Password" class="form-control" placeholder="密码" required>
				<button class="btn btn-lg btn-primary btn-block" type="submit">注册</button>
				<button class="btn btn-lg btn-primary btn-block" type="button" onclick="location.reload()">重置</button>
		</form>

	</div>
	<!-- /container -->

	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<!--<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>-->
</body>

</html>
