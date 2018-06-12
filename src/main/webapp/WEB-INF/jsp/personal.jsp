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
<script src="/graProject/js/offcanvas.js"></script>
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
				<li><a href="/graProject">首页</a></li>
				<li class="active"><a href="#">个人主页</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">案例功能 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="/graProject/caseList?page=1&pageSize=10">查看案例</a></li>
						<li><a href="/graProject/caseAnalysis">案例分析</a></li>
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
				<p class="pull-right visible-xs">
					<button type="button" class="btn btn-primary btn-xs"
						data-toggle="offcanvas">Toggle nav</button>
				</p>
				<div style="width: 100%; height: 300px;" id="main">
				<script src="/graProject/js/history.js"></script>
				</div>

				<h3 id="newTime">数据上传时间:<fmt:formatDate value="${device.uploadTime}" pattern="yyyy-MM-dd HH:mm:ss" /> </h3>
				<div class="row">
					<div class="col-xs-6 col-lg-4">
						<h2>PH值</h2>
						<p>您的水族箱当前PH值为：
						<h4 id="phWarn" style="color: green;">${device.phData}</h4>
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
						<h4 id="tdsWarn" style="color: green;">${device.tdsData}mg/L</h4>
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
						<h4 id="tempWarn" style="color: green;">${device.tempData}°C</h4>
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
							<button type="button" onclick="window.location.href = '/graProject/warning/${sessionScope.user.userDev}'" class="btn btn-default">个人设置</button>
							<button type="button" class="btn btn-default">注销</button>
						</div>
					</div>
				</div>
				<div class="list-group">
					<a href="#" class="list-group-item active text-center">个人主页</a>
					<a href="/graProject/historyList?page=1&pageSize=30" class="list-group-item text-center">历史数据</a>
					<a href="/graProject/caseList?page=1&pageSize=10" class="list-group-item text-center">查看案例</a>
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
	<script type="text/javascript">
	$(document).ready(
			function() {
				var ph=Number('${device.phData}');
				var tds=Number('${device.tdsData}');
				var temp=Number('${device.tempData}');
				var phMax=Number('${sessionScope.dw.phMax}');
				var phMin=Number('${sessionScope.dw.phMin}');
				var tdsMax=Number('${sessionScope.dw.tdsMax}');
				var tdsMin=Number('${sessionScope.dw.tdsMin}');
				var tempMax=Number('${sessionScope.dw.tempMax}');				
				var tempMin=Number('${sessionScope.dw.tempMin}');
				if(phMax!=0||phMin!=0){
					if(ph>phMax||ph<phMin){
						alert("警告:ph值超出预设范围！");
						$("#phWarn").css("color","red");
					}else{
						$("#phWarn").css("color","green");
					}	
				}
				if(tdsMax!=0||tdsMin!=0){
					if(tds>tdsMax||tds<tdsMin){
						alert("警告:tds值超出预设范围！");
						$("#tdsWarn").css("color","red");
					}else{
						$("#tdsWarn").css("color","green");
					}	
				}
				if(tempMax!=0||tempMin!=0){
					if(temp>tempMax||temp<tempMin){
						alert("警告:temp值超出预设范围！");
						$("#tempWarn").css("color","red");
					}else{
						$("#tempWarn").css("color","green");
					}		
				}
				setInterval("startAjax()",10000);
			});
		function timestampToTime(timestamp) {
			var date = new Date(timestamp);//时间戳为10位需*1000，时间戳为13位的话不需乘1000
			var Y = date.getFullYear() + '-';
			var M = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : date.getMonth()+1) + '-';
			var D = (date.getDate() < 10 ? '0'+(date.getDate()) : date.getDate()) + ' ';
			var h = (date.getHours() < 10 ? '0'+(date.getHours()) : date.getHours()) + ':';
			var m = (date.getMinutes() < 10 ? '0'+(date.getMinutes()) : date.getMinutes()) + ':'
			var s = (date.getSeconds() < 10 ? '0'+(date.getSeconds()) : date.getSeconds()) ;
			return Y+M+D+h+m+s;
		}
		function startAjax(){
		// 异步加载数据
		$.get('/graProject/history').done(function(data) {
			  // 填入数据
			  console.log(data);
			  console.log(data.newData.phData);
			    var ph=Number(data.newData.phData);
				var tds=Number(data.newData.tdsData);
				var temp=Number(data.newData.tempData);
				var phMax=Number('${sessionScope.dw.phMax}');
				var phMin=Number('${sessionScope.dw.phMin}');
				var tdsMax=Number('${sessionScope.dw.tdsMax}');
				var tdsMin=Number('${sessionScope.dw.tdsMin}');
				var tempMax=Number('${sessionScope.dw.tempMax}');				
				var tempMin=Number('${sessionScope.dw.tempMin}');
			  $("#phWarn").text(ph.toFixed(2));
			  $("#tdsWarn").text(tds.toFixed(2)+"mg/L");
			  $("#tempWarn").text(temp.toFixed(2)+"°C");
			  $("#newTime").text("数据上传时间:"+timestampToTime(data.newData.uploadTime));

			  if(phMax!=0||phMin!=0){
					if(Number(data.newData.phData)>phMax||Number(data.newData.phData)<phMin){
						alert("警告:ph值超出预设范围！");
						$("#phWarn").css("color","red");
					}else{
						$("#phWarn").css("color","green");
					}		
				}
				if(tdsMax!=0||tdsMin!=0){
					if(Number(data.newData.tdsData)>tdsMax||Number(data.newData.tdsData)<tdsMin){
						alert("警告:tds值超出预设范围！");
						$("#tdsWarn").css("color","red");
					}else{
						$("#tdsWarn").css("color","green");
					}		
				}
				if(tempMax!=0||tempMin!=0){
					if(Number(data.newData.tempData)>tempMax||Number(data.newData.tempData)<tempMin){
						alert("警告:temp值超出预设范围！");
						$("#tempWarn").css("color","red");
					}else{
						$("#tempWarn").css("color","green");
					}		
				}
			  myChart.hideLoading();
			  myChart.setOption({
			    xAxis: {
			      data: data.date
			    },
			    series: [{
			      // 根据名字对应到相应的系列
			      name: 'ph值',
			      data: data.ph
			    }, {
			      // 根据名字对应到相应的系列
			      name: 'temp值',
			      data: data.temp
			    }, {
			      // 根据名字对应到相应的系列
			      name: 'tds值',
			      data: data.tds
			    }]
			  });
			})
		}
	</script>
	
</body>

</html>