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

<title>智能水族箱-个人主页</title>

<link href="/graProject/css/private.css" rel="stylesheet">
<!-- Bootstrap core CSS -->
<link href="/graProject/css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap theme -->
<link href="/graProject/css/bootstrap-theme.min.css" rel="stylesheet">
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="../../assets/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">

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
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">智能水族箱</a>
		</div>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li><a href="home.html">首页</a></li>
				<li class="active"><a href="userhome.html">个人主页</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">案例功能 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="caseList.html">查看案例</a></li>
						<li><a href="caseAnalysis.html">案例分析</a></li>
						<li><a href="addcase.html">添加案例</a></li>
					</ul></li>
				<li><a href="newslist.html">社交资讯</a></li>
			</ul>
		</div>
		<!-- /.nav-collapse -->
	</div>
	<!-- /.container --> </nav>
	<!-- /.navbar -->

	<div class="container">

		<div class="row row-offcanvas row-offcanvas-right">

			<div class="col-xs-12 col-sm-9">
				<p class="pull-right visible-xs">
					<button type="button" class="btn btn-primary btn-xs"
						data-toggle="offcanvas">Toggle nav</button>
				</p>
				<div style="width: 100%; height: 300px;" id="main">
					<script type="text/javascript">
						// 基于准备好的dom，初始化echarts实例
						var myChart = echarts.init(document
								.getElementById('main'),'walden');
						// 初始 option
						option = {
							title : {
								text : '历史数据'
							},
						    tooltip: {
						        trigger:'axis',
						       formatter: function (params) {
						           var res=params[0].name;
						           for(var i=0,l=params.length;i<l;i++){
						             res +='<br/>'+params[i].marker+params[i].seriesName+" : "+params[i].value;
						             if(params[i].seriesName=='temp值'){
						               res+=" °C";
						             }
						             if(params[i].seriesName=='tds值'){
						               res+=" mg/L";
						             }
						           }      
						            return res;
						        }
						    },
							legend : {
								data : [ 'ph值', 'temp值', 'tds值' ]
							},
							xAxis : {
								type : 'category',
								boundaryGap : false,
								data : []
							},
							yAxis : {},
							series : [ {
								name : 'ph值',
								type : 'line',
								data : [],
								
							}, {
								name : 'temp值',
								type : 'line',
								data : [],
							}, {
								name : 'tds值',
								type : 'line',
								data : [],
							} ]
						};

						myChart.showLoading();
						myChart.setOption(option);
						// 异步加载数据
						$.get('/graProject/histroy').done(function(data) {
							// 填入数据
							console.log(data);
							myChart.hideLoading();
							myChart.setOption({
								xAxis : {
									data : data.date
								},
								series : [ {
									// 根据名字对应到相应的系列
									name : 'ph值',
									data : data.ph
								}, {
									// 根据名字对应到相应的系列
									name : 'temp值',
									data : data.temp
								}, {
									// 根据名字对应到相应的系列
									name : 'tds值',
									data : data.tds
								} ]
							});
						});
					</script>
				</div>

				<h3>数据上传时间：${device.uploadTime}</h3>
				<div class="row">
					<div class="col-xs-6 col-lg-4">
						<h2>PH值</h2>
						<p>您的水族箱当前PH值为：
						<h4 style="color: red;">${device.phData}</h4>
						</p>
						<p>氢离子浓度指数（hydrogen ion concentration）是指溶液中氢离子的总数和总物质的量的比。</p>
						<p>
							<a class="btn btn-default" href="#" role="button">View
								details &raquo;</a>
						</p>
					</div>
					<!--/.col-xs-6.col-lg-4-->
					<div class="col-xs-6 col-lg-4">
						<h2>TDS值</h2>
						<p>您的水族箱当前TDS值为：
						<h4 style="color: red;">${device.tdsData}mg/L</h4>
						</p>
						<p>总溶解固体（Total dissolved
							solids）,测量单位为毫克/升（mg/L）,它表明1升水中溶有多少毫克溶解性固体。</p>
						<p>
							<a class="btn btn-default" href="#" role="button">View
								details &raquo;</a>
						</p>
					</div>
					<!--/.col-xs-6.col-lg-4-->
					<div class="col-xs-6 col-lg-4">
						<h2>温度</h2>
						<p>您的水族箱当前温度为：
						<h4 style="color: red;">${device.tempData}°C</h4>
						</p>
						<p>水中的鱼儿依靠皮肤感觉器感觉环境温度的变动，保持恒定水温对水族箱来说至关重要。</p>
						<p>
							<a class="btn btn-default" href="#" role="button">View
								details &raquo;</a>
						</p>
					</div>
					<!--/.col-xs-6.col-lg-4-->

				</div>
				<!--/row-->
			</div>
			<!--/.col-xs-12.col-sm-9-->

			<div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
				<!--小屏幕下是隐藏此部分的-->
				<div class="userHeadDiv">
					<img class="img-circle img-thumbnail "
						src="/graProject/img/headpic.JPG" />
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
					<a href="#" class="list-group-item active text-center">个人主页</a> <a
						href="#" class="list-group-item text-center">历史数据</a> <a
						href="caseAnalysis.html" class="list-group-item text-center">案例分析</a>
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

</body>

</html>