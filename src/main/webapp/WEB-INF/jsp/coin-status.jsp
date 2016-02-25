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
									src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image"> <span class="hidden-xs">杜涛</span>
							</a>
								<ul class="dropdown-menu">
									<!-- User image -->
									<li class="user-header"><img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
										<p>
											一级会员 <small>中国</small>
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
						<p>杜涛</p>
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
					<li class="treeview"><a href="#"> <i class="fa fa-dashboard"></i> <span>业务管理</span> <i
							class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li><a href="update.do"><i class="fa fa-circle-o"></i>账户升级</a></li>
							<li><a href="recommend-register.do"><i class="fa fa-circle-o"></i>新会员注册列表</a></li>
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
					<li class="active treeview"><a href="#"> <i class="fa fa-dashboard"></i> <span>交易大厅</span> <i
							class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li class="active"><a href="coin-status.do"><i class="fa fa-circle-o"></i>CPM状态</a></li>
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
					<small>CPM状态</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i>用户资料</a></li>
					<li class="active">CPM状态</li>
				</ol>
			</section>

			<section class="content">
				<div class="box">
					<div class="box-header">
						<h3 class="box-title">CPM状态</h3>
					</div>
					<div class="box-body">
						<div class="chart" id="line-chart" style="height: 300px;"></div>
					</div>
				</div>
				<div class="box">
					<div class="box-header">
						<h3 class="box-title">CPM数据</h3>
					</div>
					<div class="box-body">
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>上次市价</th>
									<th>今天市价</th>
									<th>最高价</th>
									<th>最低价</th>
									<th>现价</th>
									<th>用户CPM</th>
									<th>今日CPM交易量</th>
									<th>距离下次上涨剩余</th>
									<th>日期</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>3.50</td>
									<td>3.60</td>
									<td>4.00</td>
									<td>2.00</td>
									<td>3.60</td>
									<td>200000</td>
									<td>4123</td>
									<td>24%</td>
									<td>2016-02-24</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="box">
					<div class="box-header">
						<h3 class="box-title">我的CPM</h3>
					</div>
					<div class="box-body">
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>买入价</th>
									<th>当前总CPM</th>
									<th>CPM现价</th>
									<th>总市值</th>
									<th>日期</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>0.00</td>
									<td>0.00</td>
									<td>3.60</td>
									<td>0.00</td>
									<td>2016-02-24</td>
								</tr>
							</tbody>
						</table>
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
	
    
    <!-- jQuery 2.1.4 -->
    <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!-- Morris.js charts -->
    <script src="plugins/morris/raphael-min.js"></script>
    <script src="plugins/morris/morris.min.js"></script>
    <!-- FastClick -->
    <script src="plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../../dist/js/demo.js"></script>
	<script>
      $(function () {
        "use strict";
        // LINE CHART
        var line = new Morris.Line({
          element: 'line-chart',
          resize: true,
          data: [
            {y: '2016-02-01', price: 2.10},
            {y: '2016-02-02', price: 2.20},
            {y: '2016-02-03', price: 2.30},
            {y: '2016-02-04', price: 2.40},
            {y: '2016-02-05', price: 2.50},
            {y: '2016-02-06', price: 2.60},
            {y: '2016-02-07', price: 2.70},
            {y: '2016-02-08', price: 2.80},
            {y: '2016-02-09', price: 2.90},
            {y: '2016-02-10', price: 3.00},
            {y: '2016-02-11', price: 3.10},
            {y: '2016-02-12', price: 3.20},
            {y: '2016-02-13', price: 3.30},
            {y: '2016-02-14', price: 3.40},
            {y: '2016-02-15', price: 3.50},
            {y: '2016-02-16', price: 3.60}
          ],
          xkey: 'y',
          ykeys: ['price'],
          labels: ['price'],
          lineColors: ['#E51D1D'],
          hideHover: 'auto'
        });
      });
    </script>
</body>
</html>