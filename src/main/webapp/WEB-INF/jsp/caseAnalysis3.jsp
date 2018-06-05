<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<link rel="icon" href="/graProject/img/icon2.jpg">

<title>智能水族箱-案例分析</title>


<link href="/graProject/css/private.css" rel="stylesheet">
<link href="/graProject/css/bootstrap.min.css" rel="stylesheet">
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
				<li><a href="#">首页</a></li>
				<li><a href="/graProject/personal/${sessionScope.user.userId}">个人主页</a></li>
				<li class="dropdown active"><a href="#" class="dropdown-toggle" data-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false">
						案例功能 <span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="/graProject/caseList?page=1&pageSize=10">查看案例</a></li>
						<li><a href="#">案例分析</a></li>
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

				<div class="discuss">
					<ul class="nav nav-tabs">
						<li role="presentation"><a href="#">填写</a></li>
						<li role="presentation"><a href="#">分析</a></li>
						<li role="presentation" class="active"><a href="#">诊断</a></li>
					</ul>
				</div>
				<div class="col-md-12">
					<h3>诊断情况</h3>
				</div>
				<div class="myAtreat">

					<div class="col-md-3">
						<span>案例编号</span>
					</div>
					<div class="col-md-9">
						<p>${treatmentCase.caseId}</p>
					</div>
					<br>
					<div class="col-md-3">
						<span>案例作者</span>
					</div>
					<div class="col-md-9">
						<p>${treatmentCase.caseAuthor}</p>
					</div>
					<br>
					<div class="col-md-3">
						<span>诊断对象</span>
					</div>
					<div class="col-md-9">
						<p>${treatmentCase.fishName}</p>
					</div>
					<br>
					<div class="col-md-3">
						<span>环境值</span>
					</div>
					<div class="col-md-9">
						<p>ph值:${treatmentCase.phData} || tds值:${treatmentCase.tdsData}(ml/g) ||
							温度:${treatmentCase.tempData}°C</p>
					</div>
					<br>
					<div class="col-md-3">
						<span>疾病编号</span>
					</div>
					<div class="col-md-9">
						<p>${diseaseCase.diseaseId}</p>
					</div>
					<br>
					<div class="col-md-3">
						<span>疾病名称</span>
					</div>
					<div class="col-md-9">
						<p>${diseaseCase.diseaseName}</p>
					</div>
					<br>
					<div class="col-md-3">
						<span>疾病表现</span>
					</div>
					<div class="col-md-9">
						<p>${diseaseCase.diseaseShow}</p>
					</div>
					<br>
					<div class="col-md-3">
						<span>疾病原因</span>
					</div>
					<div class="col-md-9">
						<p>${diseaseCase.diseaseReason}</p>
					</div>
					<br>
					<div class="col-md-3">
						<span>治愈方案</span>
					</div>
					<div class="col-md-9">
						<p id="treatment1">${treatmentCase.treatment}</p>
					</div>
					<br>
					<div class="col-md-12">
						<br>
					</div>
					<br>
					<form action="/graProject/caseReview">

						<div class="form-group">
							<div class="col-md-3">
								<span>本次诊断对象</span>
							</div>
							<div class="col-md-3">
								<input type="hidden" name="caseAuthor" value="${sessionScope.user.userId}" />
								<input type="text" readonly="readonly" name="fishName" value="${sessionScope.caseDto.fishName}"
									class="form-control">
							</div>
						</div>
						<div class="col-md-12">
							<br>
						</div>

						<div class="form-group">
							<div class="col-md-3">
								<span>本次环境值</span>
							</div>
							<div class="col-md-2">
								<input type="text" name="phData" readonly="readonly" class="form-control"
									value="${sessionScope.caseDto.phData}">
							</div>
							<div class="col-md-2">
								<input type="text" name="tdsData" readonly="readonly" class="form-control"
									value="${sessionScope.caseDto.tdsData}">
							</div>
							<div class="col-md-2">
								<input type="text" name="tempData" readonly="readonly" class="form-control"
									value="${sessionScope.caseDto.tempData}">
							</div>
						</div>
						<div class="col-md-12">
							<br>
						</div>
						<br>

						<div class="form-group">
							<div class="col-md-3">
								<span>本次疾病</span>
							</div>
							<div class="col-md-3">
								<input type="text" readonly="readonly" name="diseaseName" value="${diseaseCase.diseaseName}"
									class="form-control">
							</div>
							<input type="hidden" name="diseaseId" value="${diseaseCase.diseaseId}" />
						</div>
						<div class="col-md-12">
							<br>
						</div>


						<br>
						<div class="form-group">
							<div class="col-md-3">
								<span>治疗方案补充</span>
							</div>
							<div class="col-md-9">
								<div class="input-group">
									<textarea class="form-control" name="treatment" id="treatment2"
										style="resize: none; font-size: 14px; width: 600px; height: 100px; border-radius: 5px;">${treatmentCase.treatment}</textarea>
								</div>
							</div>
						</div>
						<br>
						<div class="col-md-12">
							<br>
						</div>
						<br>
						<div class="col-md-12 col-md-offset-3">
							<p>治愈案例是否有用?(有用将被提交到后台进行完善)</p>
						</div>
				</div>


				<div class="col-md-6 col-md-offset-4">
					<button id="submitCase" type="submit" class="btn btn-success">是的,有用</button>
					<button type="button" onclick="javascript:window.history.back(-1);"
						class="btn btn-danger">没有,再看看</button>
				</div>
				<form>
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
					<a href="/graProject/personal/${sessionScope.user.userId}" class="list-group-item text-center">个人主页</a>
					<a href="/graProject/historyList?page=1&pageSize=30" class="list-group-item text-center">历史数据</a>
					<a href="/graProject/caseList?page=1&pageSize=10" class="list-group-item text-center">查看案例</a>
					<a href="/graProject/caseAnalysis" class="list-group-item text-center active">案例分析</a>
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

</body>
<!-- javascript -->
<script type="text/javascript">
window.onload = function(){
	var d1='${d1}';
	var d3='${d3}';
	var fish1='${treatmentCase.fishName}';
	var fish2='${sessionScope.caseDto.fishName}';
	var mysubmit = document.getElementById("submitCase");
		mysubmit.onclick = function(event) {
			var treatment1=$("#treatment1").text();
			var treatment2=$("#treatment2").val();
			if (d1==100&&d3==0&&fish1==fish2&&treatment1==treatment2) {
				alert("完全相同，不用添加！");
				 event.preventDefault();
			} else  {
				alert("提交成功！");
			}
		}
	}
</script>
</html>
