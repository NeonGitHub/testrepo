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
		<link rel="icon" href="img/icon2.jpg">

		<title>智能水族箱-首页</title>

		<!-- Bootstrap core CSS -->
		<link href="css/bootstrap.min.css" rel="stylesheet">


		<!-- Custom styles for this template -->
		<link href="css/carousel.css" rel="stylesheet">
	</head>
	<!-- NAVBAR
================================================== -->

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
								<li  class="active">
									<a href="#">首页</a>
								</li>
								<li>
									<a href="#about">个人主页</a>
								</li>
								<li>
									<a href="#contact">资讯</a>
								</li>
							</ul>
						</div>
						<!-- /.nav-collapse -->
					</div>
					<!-- /.container -->
				</nav>
				<!-- /.navbar -->
		

		<!-- Carousel
    ================================================== -->
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img class="first-slide" src="img/homepicture0.jpg" alt="First slide">
					<div class="container">
						<div class="carousel-caption">
							<h1>智能水族箱</h1>
							<p>轻松养鱼，快乐养鱼。</p>
							<p>
								<a class="btn btn-lg btn-primary" href="login/join" role="button">立刻加入我们</a>
							</p>
						</div>
					</div>
				</div>
				<div class="item">
					<img class="second-slide" src="img/homepicture2.jpg" alt="Second slide">
					<div class="container">
						<div class="carousel-caption">
							<h1>智能水族箱</h1>
							<p>轻松养鱼，快乐养鱼。</p>
							<p>
								<a class="btn btn-lg btn-primary" href="signin.html" role="button">立刻加入我们</a>
							</p>
						</div>
					</div>
				</div>
				<div class="item">
					<img class="third-slide" src="img/homepicture3.jpg" alt="Third slide">
					<div class="container">
						<div class="carousel-caption">
							<h1>智能水族箱</h1>
							<p>轻松养鱼，快乐养鱼。</p>
							<p>
								<a class="btn btn-lg btn-primary" href="signin.html" role="button">立刻加入我们</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		<!-- /.carousel -->

		<!-- Marketing messaging and featurettes
    ================================================== -->
		<!-- Wrap the rest of the page in another container to center all the content. -->

		<div class="container marketing">

			<div class="row featurette">
				<div class="col-md-7">
					<h2 class="featurette-heading"> 实时观测。<span class="text-muted">Real-time observation.</span></h2>
					<p class="lead">通过智能水族箱可以实时得到水质各项数据。</p>
				</div>
				<div class="col-md-5">
					<img class="featurette-image img-responsive center-block" src="img/homepicture5.jpg" alt="Generic placeholder image">
				</div>
			</div>

			<hr class="featurette-divider">

			<div class="row featurette">
				<div class="col-md-7 col-md-push-5">
					<h2 class="featurette-heading">案例分析预警。<span class="text-muted">Case analysis and warning.</span></h2>
					<p class="lead">按需设置个人标准，将水质数据与案例库进行分析对比，通过推送得到预警信息。</p>
				</div>
				<div class="col-md-5 col-md-pull-7">
					<img class="featurette-image img-responsive center-block" src="img/homepicture6.jpg" alt="Generic placeholder image">
				</div>
			</div>

			<hr class="featurette-divider">

			<div class="row featurette">
				<div class="col-md-7">
					<h2 class="featurette-heading">多端同步使用。<span class="text-muted">Multi-end synchronization.</span></h2>
					<p class="lead">提供手机APP端和浏览器端多种选择。</p>
				</div>
				<div class="col-md-5">
					<img class="featurette-image img-responsive center-block" src="img/homepicture4.jpg" alt="Generic placeholder image">
				</div>
			</div>

			<hr class="featurette-divider">

			<!-- /END THE FEATURETTES -->

			<!-- FOOTER -->
			<footer>
				<p>&copy; 2018 Graduation Project by Jingxuan.</p>
			</footer>

		</div>
		<!-- /.container -->

		<!-- Bootstrap core JavaScript
    ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="js/jquery-3.3.1.min.js"></script>
		<script>
			window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
		</script>
		<script src="js/bootstrap.min.js"></script>
		
	</body>

</html>