<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ include file="common.jsp"%>
<%-- <%@include file="/common/meta.jsp"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
*{
	margin: 0px;
	padding: 0px;
}
body {
	width:100%;
	height:100%;
	background-image: url(static/images/back.jpg);
	background-size:100%;
	background-repeat:no-repeat;
}
.denglu{
	z-index:2;
	display:block;
	width:362px;
	height:423px;
	position:absolute;
	top:102px;
	left:50%;
	background-image: url(static/images/denglu.png);
	background-size:100%;
	background-repeat:no-repeat;
}
.header{
    width:100%;
	height:116px;
	background-image: url(static/images/header.jpg);
	background-size:100%;
	background-repeat:no-repeat;
	background-color:white;
}
.footer{
	width:100%;
	font-size:14px;
	font-family:"微软雅黑";
	position:absolute;
	bottom:12px;
}
.name{
	height:34px;
	width:228px;
	font-family:"微软雅黑";
	font-size:16px;
	line-height:40px;
	position:relative;
	top:117px;
	left:93px;
	border:0;
	outline:none;
}
.password{
	height:34px;
	width:228px;
	font-size:16px;
	line-height:40px;
	position:relative;
	top:146px;
	left:93px;
	border:0;
	outline:none;
}
.btn{
	width: 320px;
	height: 60px;
	border-radius: 10px;
    position:relative;
	top:190px;
	left:24px;
	cursor:pointer;
}
</style>
</head>
<body>
	<div class="header">
	</div>
	<div class="denglu">
		<input class="name" type="text" id="username" name="username" />
		<input class="password" type="password" id="password" name="password" />
		<div class="btn" id="loginbtn"></div>
	</div>
<script type="text/javascript">
var host = "http://124.239.148.161:18080";
	$('#loginbtn').click(function() {
			var username = $('#username').val();
			var password = $('#password').val();
			if (username != null && username != "" && password != null && password != "") {						
					$.ajax({
						url : host+"/user/login",
						type : "post",
						data : {
							username : username,
							password : password
							}, 										
						async : false,
						dataType : "json",
						contentType: 'application/json',
						success : function(data) {
							if (data.code==200) {
								/* $.messager.alert("提示",data.message); */
								$.messager.alert("提示","用户名密码错误");
								$('#username').focus();
								$('#password').focus();
							} else{
								window.location.href = "<%=basePath%>view/index.jsp";
							}
						}
						});
		} else {  							
			$.messager.alert("提示","请输入账号密码！");
			$('#username').focus();
			$('#password').focus();
			}
});
	$(document).keydown(function(event){ 
		var keyCode = event.keyCode ? event.keyCode : event.which ? event.which : event.charCode;
		if(keyCode==13){
			$("#loginbtn").click(); 
		}
	});

</script>
</body>
</html>