<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="head.jsp"></jsp:include>
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
	<jsp:include page="foot.jsp"></jsp:include>
	<jsp:include page="modal.jsp"></jsp:include>
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
	<script type="text/javascript">
		$(function(){
			$("#login").click(function(){
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
							show_model("您的验证码不正确，请输入正确的诚意金号码！");
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
</body>
</html>
