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

<title>智能水族箱-添加案例</title>

<link href="/graProject/css/private.css" rel="stylesheet">
<!-- Bootstrap core CSS -->
<link href="/graProject/css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap theme -->
<link href="/graProject/css/bootstrap-theme.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/graProject/css/offcanvas.css" rel="stylesheet">


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
				<li><a href="/graProject/personal/${sessionScope.user.userId}">个人主页</a></li>
				<li class="dropdown activex"><a href="#" class="dropdown-toggle" data-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false">
						案例功能 <span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="/graProject/caseList?page=1&pageSize=10">查看案例</a></li>
						<li><a href="/graProject/caseAnalysis">案例分析</a></li>
						<li><a href="#">添加案例</a></li>
					</ul></li>
				<li><a href="/graProject/newslist">通知及资讯</a></li>
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
						<li role="presentation"><a href="/graProject/caseList?page=1&pageSize=10">查看案例</a></li>
						<li role="presentation" class="active"><a href="#">申请提交案例</a></li>
					</ul>
				</div>

				<div class="col-md-12">
					<h3>添加案例</h3>
				</div>
				<div class="myAtreat">
					<form action="/graProject/caseSubmit">
						 <input type="hidden" name="caseAuthor" value="${sessionScope.user.userId}"/>

						<br>
						<div class="form-group">
							<div class="col-md-3">
								<span>诊断对象</span>
							</div>
							<div class="col-md-3">
								<select id="fishType" name="fishName" class="myAselect">
									<option value="">--请选择--</option>

								</select>
							</div>
						</div>
						<div class="col-md-12">
							<br>
						</div>
						<br>

						<div class="form-group">
							<div class="col-md-3">
								<span>环境值</span>
							</div>
							<div class="col-md-2">
								<input type="text" name="phData" placeholder="ph值" class="form-control">
							</div>
							<div class="col-md-2">
								<input type="text" name="tdsData" placeholder="tds值" class="form-control">
							</div>
							<div class="col-md-2">
								<input type="text" name="tempData" placeholder="温度值" class="form-control">
							</div>
						</div>
						<div class="col-md-12">
							<br>
						</div>
						<br>

						<div class="form-group">
							<div class="col-md-3">
								<span>疾病选择</span>
							</div>
							<div class="col-md-3">
								<select id="diseaseType" name="diseaseId" class="myAselect">
									<option value="">--请选择--</option>

								</select>
								<input type="hidden" id="diseaseName" name="diseaseName" value=""/>
							</div>
						</div>
						<!--form-group-->
						<div class="col-md-12">
							<br>
						</div>
						<br>


						<div class="form-group">
							<div class="col-md-3">
								<span>疾病表现</span>
							</div>
							<div class="col-md-9">
								<div class="input-group">
									<textarea id="show" class="form-control" readonly="readonly" 
										style="resize: none; font-size: 14px; width: 600px; height: 100px; border-radius: 5px;"></textarea>
								</div>
							</div>
						</div>
						<!-- form-group-->
						<div class="col-md-12">
							<br>
						</div>


						<br>
						<div class="form-group">
							<div class="col-md-3">
								<span>疾病原因</span>
							</div>
							<div class="col-md-9">
								<div class="input-group">
									<textarea id="reason" class="form-control" readonly="readonly" 
										style="resize: none; font-size: 14px; width: 600px; height: 100px; border-radius: 5px;"></textarea>
								</div>
							</div>
						</div>
						<div class="col-md-12">
							<br>
						</div>

						<br>
						<div class="form-group">
							<div class="col-md-3">
								<span>治疗方案</span>
							</div>
							<div class="col-md-9">
								<div class="input-group">
									<textarea class="form-control" name="treatment"
										style="resize: none; font-size: 14px; width: 600px; height: 100px; border-radius: 5px;"></textarea>
								</div>
							</div>
						</div>
						<div class="col-md-12">
							<br>
						</div>

						<br>

						<div class="col-md-3 col-md-offset-5">
							<button type="submit" class="btn btn-default">提交</button>
							<button type="reset" class="btn btn-default">重置</button>
						</div>

					</form>
				</div>
				<!--mytreat-->
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
					<a href="/graProject/persional/{sessionScope.user.userId}" class="list-group-item text-center">个人主页</a>
					<a href="/graProject/historyList?page=1&pageSize=30" class="list-group-item text-center">历史数据</a>
					<a href="/graProject/caseAnalysis" class="list-group-item text-center">案例分析</a>
					<a href="/graProject/caseList?page=1&pageSize=10" class="list-group-item text-center">查看案例</a>
					<a href="/graProject/caseAdd" class="list-group-item text-center active">添加案例</a>
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
	<script type="text/javascript">
		$(document).ready(
				function() {
					var fishList = $.parseJSON('${fishList}');
					var diseaseList = $.parseJSON('${diseaseList}');
					$.each(fishList, function(i, item) {
						$('#fishType').append(
								'<option value='+item.fishName+'>'
										+ item.fishName + '</option>')
					})
					$.each(diseaseList, function(i, item) {
						$('#diseaseType').append(
								'<option value='+item.diseaseId+'>'
										+ item.diseaseName + '</option>')
					})
					$(document).on("change", 'select#diseaseType', function() {
						var id = $(this).val();
						if (id == 0) {
							$('#show').val("");
							$('#reason').val("");
						} else {
							$.each(diseaseList, function(index, value) {
								if (id == value.diseaseId) {
									$('#diseaseName').val(value.diseaseName);
									$('#show').val(value.diseaseShow);
									$('#reason').val(value.diseaseReason);
								}
							});
						}
					});
				});
	</script>
	<script src="/graProject/js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<!-- <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>-->
	<script src="/graProject/js/offcanvas.js"></script>
</body>

</html>
