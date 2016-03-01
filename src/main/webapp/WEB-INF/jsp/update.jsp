<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="head.jsp"></jsp:include>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<header class="main-header">
			<a href="#" class="logo"> <span class="logo-mini"><b>LE</b>OS</span> <span class="logo-lg"><b>量子货币</b>LEOS</span>
			</a>
			<nav class="navbar navbar-static-top" role="navigation">
				<a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            		<span class="sr-only">Toggle navigation</span>
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
											${level} <small>中国</small>
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
					<li class="treeview"><a href="#"> <i class="fa fa-dashboard"></i> <span>用户资料</span> <i
							class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li><a href="index.do"><i class="fa fa-circle-o"></i>首页</a></li>
							<li><a href="user.do"><i class="fa fa-circle-o"></i>个人资料</a></li>
							<li><a href="password.do"><i class="fa fa-circle-o"></i>密码变更</a></li>
							<li><a href="binding.do"><i class="fa fa-circle-o"></i>绑定账号</a></li>
						</ul></li>
					<li class="active treeview"><a href="#"> <i class="fa fa-dashboard"></i> <span>业务管理</span> <i
							class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li class="active"><a href="update.do"><i class="fa fa-circle-o"></i>账户升级</a></li>
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
					<small>升级账号</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i>用户资料</a></li>
					<li class="active">升级账号</li>
				</ol>
			</section>

			<section class="content">
				<div class="box">
					<div class="box-body">
						<div class="box box-widget widget-user">
							<div class="widget-user-header bg-aqua-active">
								<h3 class="widget-user-username">一级会员</h3>
								<h5 class="widget-user-desc">中国区</h5>
							</div>
							<div class="widget-user-image">
								<img class="img-circle" src="/leos/dist/img/user1-128x128.jpg" alt="User Avatar">
							</div>
							<div class="box-footer">
								<div class="row">
									<div class="col-sm-2 border-right">
										<div class="description-block">
											<h5 class="description-header">总奖金($)</h5>
											<span class="description-text">3200</span>
										</div>
									</div>
									<div class="col-sm-2 border-right">
										<div class="description-block">
											<h5 class="description-header">K币($)</h5>
											<span class="description-text">200</span>
										</div>
									</div>
									<div class="col-sm-2 border-right">
										<div class="description-block">
											<h5 class="description-header">激活币($)</h5>
											<span class="description-text">100</span>
										</div>
									</div>
									<div class="col-sm-2 border-right">
										<div class="description-block">
											<h5 class="description-header">电子币($)</h5>
											<span class="description-text">500</span>
										</div>
									</div>
									<div class="col-sm-2 border-right">
										<div class="description-block">
											<h5 class="description-header">保管金($)</h5>
											<span class="description-text">20</span>
										</div>
									</div>
									<div class="col-sm-2">
										<div class="description-block">
											<h5 class="description-header">CPM</h5>
											<span class="description-text">100</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="box-body">
					<div class="box">
						<div class="box-header">
							<h3 class="box-title">升级账户</h3>
						</div>
						<div class="box-body">
							<table id="example1" class="table table-bordered table-striped">
								<thead>
									<tr>
										<th>配套名称</th>
										<th>价格</th>
										<th>升级价格</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>一级会员</td>
										<td>100$</td>
										<td>0$</td>
										<td>已升级</td>
									</tr>
									<tr>
										<td>二级会员</td>
										<td>200$</td>
										<td>100$</td>
										<td><a href="#">升级</a></td>
									</tr>
									<tr>
										<td>三级会员</td>
										<td>500$</td>
										<td>400$</td>
										<td><a href="#">升级</a></td>
									</tr>
									<tr>
										<td>四级会员</td>
										<td>1000$</td>
										<td>900$</td>
										<td><a href="#">升级</a></td>
									</tr>
									<tr>
										<td>五级会员</td>
										<td>2000$</td>
										<td>1900$</td>
										<td><a href="#">升级</a></td>
									</tr>
									<tr>
										<td>六级会员</td>
										<td>3000$</td>
										<td>2900$</td>
										<td><a href="#">升级</a></td>
									</tr>
								</tbody>
							</table>
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
	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>