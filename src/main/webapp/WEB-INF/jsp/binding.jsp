<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="head.jsp"></jsp:include>
<script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<header class="main-header">
			<!-- Logo -->
			<a href="#" class="logo"> <span class="logo-mini"><b>LE</b>OS</span> <span class="logo-lg"><b>量子货币</b>LEOS</span>
			</a>
			<nav class="navbar navbar-static-top" role="navigation">
				<a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button"> <span class="sr-only">Toggle
						navigation</span>
				</a>
				<div class="navbar-custom-menu">
					<div class="navbar-custom-menu">
						<ul class="nav navbar-nav">
							<li class="dropdown user user-menu"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> <img
									src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image"> <span class="hidden-xs">${realname}</span>
							</a>
								<ul class="dropdown-menu">
									<!-- User image -->
									<li class="user-header"><img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
										<p>
											${level}<small>中国</small>
										</p></li>
									<!-- Menu Body -->
									<li class="user-body">
										<div class="col-xs-4 text-center">
											<a href="#">首页</a>
										</div>
										<div class="col-xs-4 text-center">
											<a href="#">密码</a>
										</div>
										<div class="col-xs-4 text-center">
											<a href="#">资料</a>
										</div>
									</li>
									<!-- Menu Footer-->
									<li class="user-footer">
										<div class="pull-left"></div>
										<div class="pull-right">
											<a href="#" class="btn btn-default btn-flat">退出</a>
										</div>
									</li>
								</ul></li>
						</ul>
					</div>
				</div>
			</nav>
		</header>
		<aside class="main-sidebar">
			<section class="sidebar">
				<div class="user-panel">
					<div class="pull-left image">
						<img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
					</div>
					<div class="pull-left info">
						<p>${realname}</p>
						<a href="#"><i class="fa fa-circle text-success"></i>欢迎您！</a>
					</div>
				</div>
				<!-- sidebar menu -->
				<ul class="sidebar-menu">
					<li class="header">用户中心</li>
					<li class="active treeview"><a href="#"> <i class="fa fa-dashboard"></i> <span>用户资料</span> <i
							class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li><a href="index.do"><i class="fa fa-circle-o"></i>首页</a></li>
							<li><a href="user.do"><i class="fa fa-circle-o"></i>个人资料</a></li>
							<li><a href="password.do"><i class="fa fa-circle-o"></i>密码变更</a></li>
							<li class="active"><a href="binding.do"><i class="fa fa-circle-o"></i>绑定账号</a></li>
						</ul></li>
					<li class="treeview"><a href="#"> <i class="fa fa-dashboard"></i> <span>业务管理</span> <i
							class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li><a href="update.do"><i class="fa fa-circle-o"></i>账户升级</a></li>
							<li><a href="recommend-map.do"><i class="fa fa-circle-o"></i>新会员注册列表</a></li>
							<li><a href="recommend.do"><i class="fa fa-circle-o"></i>推荐会员列表</a></li>
						</ul></li>
					<li class="treeview"><a href="#"> <i class="fa fa-dashboard"></i> <span>业务明细</span> <i
							class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li><a href="bonus.do"><i class="fa fa-circle-o"></i>奖金明细</a></li>
							<li><a href="pair.do"><i class="fa fa-circle-o"></i>配对报告</a></li>
							<li><a href="send.do"><i class="fa fa-circle-o"></i>拆分明细</a></li>
						</ul></li>
					<li class="treeview"><a href="#"> <i class="fa fa-dashboard"></i> <span>交易大厅</span> <i
							class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li><a href="coin-status.do"><i class="fa fa-circle-o"></i>CPM状态</a></li>
							<li><a href="coin-trade.do"><i class="fa fa-circle-o"></i>CPM交易列表</a></li>
							<li><a href="coin-trade-status.do"><i class="fa fa-circle-o"></i>CPM交易状态</a></li>
							<li><a href="coin-purchase.do"><i class="fa fa-circle-o"></i>购买CPM</a></li>
							<li><a href="coin-sell.do"><i class="fa fa-circle-o"></i>出售CPM</a></li>
							<li><a href="k-trade-status.do"><i class="fa fa-circle-o"></i>K币交易状态</a></li>
							<li><a href="k-purchase.do"><i class="fa fa-circle-o"></i>K币购买</a></li>
							<li><a href="k-sell.do"><i class="fa fa-circle-o"></i>K币出售</a></li>
						</ul></li>
					<li class="treeview"><a href="#"> <i class="fa fa-dashboard"></i> <span>货币管理</span> <i
							class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li><a href="active-coin-transfer.do"><i class="fa fa-circle-o"></i>激活币转账</a></li>
							<li><a href="custody-coin-transfer.do"><i class="fa fa-circle-o"></i>保管币转换</a></li>
							<li><a href="coin-to-active.do"><i class="fa fa-circle-o"></i>K币转激活币</a></li>
						</ul></li>
					<li class="header">新闻中心</li>
					<li><a href="note.do"><i class="fa fa-circle-o text-red"></i> <span>公告</span></a></li>
					<li><a href="log.do"><i class="fa fa-circle-o text-yellow"></i> <span>金额变动日志</span></a></li>
					<li><a href="faq.do"><i class="fa fa-circle-o text-aqua"></i> <span>投诉建议</span></a></li>
				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>
		<div class="content-wrapper">
			<section class="content-header">
				<h1>
					<small>绑定账号</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i>用户资料</a></li>
					<li class="active">绑定账号</li>
				</ol>
			</section>

			<section class="content">
				<div class="box">
					<div class="box-header with-border">
						<h3 class="box-title">绑定账号</h3>
					</div>
					<div class="box-body">
						<div class="input-group">
							<span class="input-group-addon">需要绑定的账号</span> <input id="username" type="text" class="form-control">
						</div>
						<br />
						<div class="input-group">
							<span class="input-group-addon">绑定账号的密码</span> <input id="password" type="password" class="form-control">
						</div>
						<br />
						<div class="box-body">
							<button id="binding" class="btn btn-primary btn-block btn-flat">确认绑定</button>
						</div>
					</div>
				</div>
				<div class="box">
					<div class="box-body">
						<div class="box">
							<div class="box-header">
								<h3 class="box-title">已绑定账号</h3>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<table id="example1" class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>账号</th>
											<th>级别</th>
											<th>真实姓名</th>
											<th>电话</th>
											<th>注册时间</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										 <c:forEach var="user" items="${binding}">
										 	<tr>
										 		<td>${user.username}</td>
										 		<td>${user.level}</td>
										 		<td>${user.realname}</td>
										 		<td>${user.tel}</td>
										 		<td>${user.temps}</td>
										 		<td><a href="/leos/login.do"><button class="btn btn-primary btn-block btn-flat">切换</button></a></td>
										 	</tr>
										 </c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
	<!-- /.content-wrapper -->
	<footer class="main-footer">
		<div class="pull-right hidden-xs">
			<b>Version</b> 2.3.0
		</div>
		<strong>Copyright &copy; 2014-2015 <a href="#">LEOS—FUND</a>.
		</strong> All rights reserved.
	</footer>
	<!-- 模态框 Begin-->
	<div id="alert_msg" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" style="font-family: 微软雅黑;">提示</h4>
				</div>
				<div class="modal-body">
					<p id="alert_data" style="font-family: 微软雅黑;">&hellip;</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary btn-flat" data-dismiss="modal">关闭</button>
					<button id="confirm" type="button" class="btn btn-primary btn-flat">确定</button>
					<button id="refresh" type="button" class="btn btn-primary btn-flat">查看</button>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function show_model(content) {
			$("#alert_data").html(content);
			$('#alert_msg').modal('show');
		}
	</script>
	<script type="text/javascript">
		$(function() {
			$("#binding").click(function(){
				$("#confirm").show() ;
				$("#refresh").hide() ;
				show_model("确定绑定账户");
			});
			$("#confirm").click(
					function() {
						var username = $("#username").val();
						var password = $("#password").val();
						if (username == '') {
							$("#confirm").hide();
							$("#refresh").hide() ;
							show_model("输入绑定的账号");
							return;
						} else if (password == '') {
							$("#confirm").hide();
							$("#refresh").hide() ;
							show_model("输入绑定账号的密码");
							return;
						} 
						var params = '{"username":"' + username	+ '","password":"' + password + '"}';
						$.ajax({
							type : "POST",
							contentType : "application/json;",
							url : "../leos/binding-ajax.do",
							data : params,
							dataType : 'json',
							success : function(data) {
								if (data.result == 'success') {
									$("#confirm").hide();
									$("#refresh").show() ;
									show_model("绑定成功");
								} else if (data.result == 'error') {
									$("#confirm").hide();
									$("#refresh").hide() ;
									show_model("绑定的账户用户名和密码有误");
								}
							},
							error : function(data) {
								show_model("加载失败");
								$("#confirm").hide();
								$("#refresh").hide() ;
							}
						});
					});
		});
		$("#refresh").click(function(){
			window.location.reload();
		});
	</script>
</body>
</html>