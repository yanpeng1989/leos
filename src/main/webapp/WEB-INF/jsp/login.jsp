<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>量子货币</title>
    <!-- Tell the browser to be responsive to screen width -->
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
	<!-- jQuery 2.1.4 -->
    <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
<body class="hold-transition login-page" style="background-color: #3C8DBC;height: 100%;">
	<div class="login-box">
		<div class="login-logo">LEOS</div>
		<div class="login-box-body">
			<p class="login-box-msg">电子货币交易系统</p>
			<div class="form-group has-feedback">
				<input id="user" type="text" class="form-control" placeholder="账号"> <span
					class="glyphicon glyphicon-user form-control-feedback"></span>
			</div>
			<div class="form-group has-feedback">
				<input id="password" type="password" class="form-control" placeholder="密码"> <span
					class="glyphicon glyphicon-lock form-control-feedback"></span>
			</div>
			<div class="form-group has-feedback">
				<input id="captcha" type="text" class="form-control" placeholder="输入下方验证码"> 
				<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
			</div>
			<div class="row">
				<div class="col-xs-8">
					<div class="checkbox icheck">
						<img src="${base}/leos/captcha-image.do" id="kaptchaImage"  style="margin-bottom: -3px"/>
     					<a href="#" onclick="changeCode()">看不清?换一张</a>
					</div>
				</div>
				<div class="col-xs-4">
					<button id="login" type="button" class="btn btn-primary btn-block btn-flat">登陆</button>
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
	<!-- 模态框 Begin-->
	<div id="alert_msg" class="modal fade" >
  		<div class="modal-dialog">
   			<div class="modal-content">
      			<div class="modal-header">
        			<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
       				<h4 class="modal-title" style="font-family: 微软雅黑;">登陆提示</h4>
      			</div>
      		<div class="modal-body">
        		<p id="alert_data" style="font-family: 微软雅黑;">&hellip;</p>
      		</div>
      		<div class="modal-footer">
        		<button id="login" type="button" class="btn btn-primary btn-flat" data-dismiss="modal">关闭</button>
      		</div>
    		</div>
  		</div>
	</div>
	<script type="text/javascript">
		$(function(){
			$('#login').click(function(){
				var user=$("#user").val();
				var password=$("#password").val();
				var captcha=$("#captcha").val();
				if(user==''){
					show_model("请输入用户名");
					return;
				}else if(password==''){
					show_model("请输入密码");
					return;
				}else if(captcha==''){
					show_model("请输入验证码");
					return;
				}
				var params='{"user":"'+user+'","password":"'+password+'","captcha":"'+captcha+'"}';
				$.ajax({
					type : "POST",
					contentType : "application/json;",
					url : "../leos/login-ajax.do",
					data : params,
					dataType : 'json',
					success : function(data) {
						if(data.result=='success'){
							window.location.href = "../leos/index.do";
						}else if(data.result=='captcha_invalid'){
							show_model("您的验证码不正确，请输入正确验证码！");
						}else if(data.result=='user_invalid'){
							show_model("账户非法，请联系管理员！");
						}else if(data.result=='user_error'){
							show_model("账户用户名或密码不正确！");
						}
					},
					error : function(data) {
						show_model("加载失败");
					}
				});
			});
		});
	</script>
	<script type="text/javascript">
		$(function() {
			$('#kaptchaImage').click(function() {//生成验证码  
				$(this).hide().attr('src','${base}/leos/captcha-image.do?'+Math.floor(Math.random() * 100)).fadeIn();
			});
		});

		function changeCode() {
			$('#kaptchaImage').hide().attr('src','${base}/leos/captcha-image.do?' + Math.floor(Math.random() * 100)).fadeIn();
		}
	</script>
</body>
</html>
