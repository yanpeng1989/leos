<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="head.jsp"></jsp:include>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<header class="main-header">
			<!-- Logo -->
			<a href="#" class="logo"> <span class="logo-mini"><b>LE</b>OS</span> <span class="logo-lg"><b>量子货币</b>LEOS</span>
			</a>
			<nav class="navbar navbar-static-top" role="navigation">
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
							<li class="active"><a href="password.do"><i class="fa fa-circle-o"></i>密码变更</a></li>
							<li><a href="binding.do"><i class="fa fa-circle-o"></i>绑定账号</a></li>
						</ul></li>
					<li class="active treeview"><a href="#"> <i class="fa fa-dashboard"></i> <span>业务管理</span> <i
							class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li><a href="update.do"><i class="fa fa-circle-o"></i>账户升级</a></li>
							<li class="active"><a href="recommend-register.do"><i class="fa fa-circle-o"></i>新会员注册列表</a></li>
							<li><a href="recommend.do"><i class="fa fa-circle-o"></i>推荐会员列表</a></li>
						</ul></li>
					<li class="treeview"><a href="#"> <i class="fa fa-dashboard"></i> <span>业务明细</span> <i
							class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li><a href="#"><i class="fa fa-circle-o"></i>奖金明细</a></li>
							<li><a href="#"><i class="fa fa-circle-o"></i>配对报告</a></li>
							<li><a href="#"><i class="fa fa-circle-o"></i>拆分明细</a></li>
						</ul></li>
					<li class="treeview"><a href="#"> <i class="fa fa-dashboard"></i> <span>交易大厅</span> <i
							class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li><a href="#"><i class="fa fa-circle-o"></i>CPM状态</a></li>
							<li><a href="#"><i class="fa fa-circle-o"></i>CPM交易列表</a></li>
							<li><a href="#"><i class="fa fa-circle-o"></i>CPM交易状态</a></li>
							<li><a href="#"><i class="fa fa-circle-o"></i>购买CPM</a></li>
							<li><a href="#"><i class="fa fa-circle-o"></i>出售CPM</a></li>
							<li><a href="#"><i class="fa fa-circle-o"></i>K币交易状态</a></li>
							<li><a href="#"><i class="fa fa-circle-o"></i>K币购买</a></li>
							<li><a href="#"><i class="fa fa-circle-o"></i>K币出售</a></li>
						</ul></li>
					<li class="treeview"><a href="#"> <i class="fa fa-dashboard"></i> <span>货币管理</span> <i
							class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li><a href="#"><i class="fa fa-circle-o"></i>激活币转账</a></li>
							<li><a href="#"><i class="fa fa-circle-o"></i>保管币转换</a></li>
							<li><a href="#"><i class="fa fa-circle-o"></i>K币转激活币</a></li>
						</ul></li>
					<li class="header">新闻中心</li>
					<li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>公告</span></a></li>
					<li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>金额变动日志</span></a></li>
					<li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>投诉建议</span></a></li>
				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>
		<div class="content-wrapper">
			<section class="content-header">
				<h1>
					<small>会员注册</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i>用户资料</a></li>
					<li class="active">会员注册</li>
				</ol>
			</section>

			<section class="content">
				<div class="box">
					<div class="box-header with-border">
						<h3 class="box-title">节点信息</h3>
					</div>
					<div class="box-body">
						<div class="input-group">
							<span class="input-group-addon">会员级别</span> 
							<select class="form-control">
                        		<option>一级会员</option>
                        		<option>二级会员</option>
                        		<option>三级会员</option>
                        		<option>四级会员</option>
                        		<option>五级会员</option>
                      		</select>
						</div>
						<br/>
						<div class="input-group">
							<span class="input-group-addon">推&nbsp;&nbsp;荐&nbsp;&nbsp;人</span> 
							<input type="text" class="form-control" value="xjb1991">
						</div>
						<br/>
						<div class="input-group">
							<span class="input-group-addon">节&nbsp;&nbsp;点&nbsp;&nbsp;人</span> 
							<input type="text" class="form-control" value="xjb1991">
						</div>
						<br/>
						<div class="input-group">
							<span class="input-group-addon">位&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;置</span> 
							<select class="form-control">
                        		<option>左侧</option>
                        		<option>右侧</option>
                      		</select>
						</div>
					</div>
				</div>
				<div class="box">
					<div class="box-header with-border">
						<h3 class="box-title">登陆信息</h3>
					</div>
						<div class="input-group">
							<span class="input-group-addon">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;区</span> 
							<select class="form-control">
                        		<option>亚太</option>
                        		<option>欧洲</option>
                        		<option>阿联酋</option>
                        		<option>南美</option>
                        		<option>北美</option>
                      		</select>
						</div>
						<br/>
						<div class="input-group">
							<span class="input-group-addon">用&nbsp;&nbsp;户&nbsp;&nbsp;名</span> 
							<input type="text" class="form-control">
						</div>
						<br/>
						<div class="input-group">
							<span class="input-group-addon">登陆密码</span> 
							<input type="text" class="form-control">
						</div>
						<br/>
						<div class="input-group">
							<span class="input-group-addon">确认密码</span> 
							<input type="text" class="form-control">
						</div>
						<br/>
						<div class="input-group">
							<span class="input-group-addon">安全密码</span> 
							<input type="text" class="form-control">
						</div>
						<br/>
						<div class="input-group">
							<span class="input-group-addon">确认密码</span> 
							<input type="text" class="form-control">
						</div>
					</div>
					<div class="box">
						<div class="box-header with-border">
							<h3 class="box-title">个人信息</h3>
						</div>
						<div class="input-group">
							<span class="input-group-addon">真实姓名</span> 
							<input type="text" class="form-control">
						</div>
						<br/>
						<div class="input-group">
							<span class="input-group-addon">商务中心</span> 
							<input type="text" class="form-control">
						</div>
						<br/>
						<div class="input-group">
							<span class="input-group-addon">身&nbsp;&nbsp;份&nbsp;&nbsp;证</span> 
							<input type="text" class="form-control">
						</div>
						<br/>
						<div class="input-group">
							<span class="input-group-addon">手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机</span> 
							<input type="text" class="form-control">
						</div>
					</div>
					<div class="box">
						<div class="box-body">
							<button class="btn btn-primary btn-block btn-flat">确认申请</button>
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