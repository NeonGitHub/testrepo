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

<title>智能水族箱-个人主页</title>

<link href="/graProject/css/private.css" rel="stylesheet">
<link href="/graProject/css/bootstrap.min.css" rel="stylesheet">
<link href="/graProject/css/bootstrap-theme.min.css" rel="stylesheet">
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
				<li class="active"><a href="userhome.html">个人主页</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false">
						案例功能 <span class="caret"></span>
					</a>
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
					<button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle
						nav</button>
				</p>
				<div style="width: 100%; height: 300px;" id="main">
					<script src="/graProject/js/history.js"></script>
					
					<script type="text/javascript">
					$.get('/graProject/history').done(function(data) {
						  // 填入数据
						  console.log(data);
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
						});
					</script>
					
				</div>
		
				<div class="row" style="padding:15px">
					<table class="table">
						<tr>
							<th>数据编号</th>
							<th>设备id</th>
							<th>ph值</th>
							<th>tds值</th>
							<th>温度值</th>
							<th>上传时间</th>
						</tr>
						<c:forEach items="${historyList}" var="historyData" varStatus="status">
						<tr>
							<td>${historyData.dataId}</td>
							<td>${historyData.deviceId}</td>
							<td>${historyData.phData}</td>
							<td>${historyData.tdsData} mg/L</td>
							<td>${historyData.tempData} °C </td>
							<td><fmt:formatDate value="${historyData.uploadTime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
						</tr>
						</c:forEach>
					</table>
					
					<div class="col-md-4 col-md-offset-4">
					<nav aria-label="Page navigation">
						<ul class="pagination">
							<li>
								<a href="/graProject/historyList?page=1&pageSize=${pageSize}" aria-label="First">
										<span aria-hidden="true">&laquo;</span>
									</a>
							</li>
							<c:forEach var="i" begin="1" end="${totalPage}">
							<li>
								<a href="/graProject/historyList?page=${i}&pageSize=${pageSize}"><c:out value="${i}"/></a>
							</li>
							</c:forEach>
							
							<li>
								<a href="/graProject/historyList?page=${totalPage}&pageSize=${pageSize}" aria-label="Last">
										<span aria-hidden="true">&raquo;</span>
									</a>
							</li>
						</ul>
					</nav>
				</div>
					
					
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
					<a href="/graProject/personal/${sessionScope.user.userId}"
						class="list-group-item text-center">个人主页</a>
					<a href="#" class="list-group-item text-center active">历史数据</a>
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

	<!-- Bootstrap core JavaScript
    ================================================== -->

</body>

</html>