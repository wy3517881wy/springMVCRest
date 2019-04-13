<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="/static/js/index.js"></script>
<style type="text/css">
.header{
	height:55px;
	padding:10px;
	background-image:url("/static/images/index_bg.png");
	background-repeat:repeat-x;
}
.header img{
	margin-left:10px;
	height:90%;
	float: left;
}
.panel-icon {
    left: 22px;
    width: 16px;
}
.panel-title {
    font-size: 14px;
    font-family:"微软雅黑";
    color: #333;
    height: 18px;
    line-height: 30px;
    margin-left:25px;
    font-weight:normal;
}
.accordion .accordion-header {
    background: #e6e6e6;
}
.panel-header, .panel-body {
    border-color: #dddddd;
}
.accordion-collapse {
    background: url('/static/images/accordion_arrows2.png') no-repeat 0 0;
}
.accordion-expand {
    background: url('/static/images/accordion_arrows1.png') no-repeat 0 0;
}
.accordion .accordion-header{
	height:30px;!important
}
.l-btn-text {
    line-height: 26px;
    font-size: 14px;
    font-family:"微软雅黑";
}
.easyui-accordion .easyui-linkbutton{
	margin-top:10px;
	margin-left:16px;
	matgin-right:16px;
	width: 200px;
    text-align: left;
}
.layout-split-west {
    border-right: 0px;
}
#content{
    background-position: center;
    background-repeat:no-repeat;
	background-image:url("/static/images/welcome.png");
}
.smallCircle {
	width: 50px;
	height: 90%;
	line-height: 55px;
	display: inline-block;
	text-align: center;
	background-color: #dcbe94;
	color: white;
	border: 0px solid #ddd;
	border-radius: 30px;
	background-clip: padding-box;
	margin-left:2%;
	float: left;
}
.userinfo{
	margin-left:50%; 
	float: left;
	height: 90%;
	line-height:55px; 
	width:80px; 
	font-size: 16px;
	color:#333;
	font-family:"微软雅黑";
}
</style>
 </head> 
 <body class="easyui-layout">
 <input id="strName" value="123">
	<div class="header" data-options="region:'north',border:false">
		<img src="/static/images/index_logo.png">
		<div class="userinfo">
			欢迎您登录
		</div>
		<div id="smallCircle" class="smallCircle">
			 <div id="divCount" style="font-size: 16px;">
				<span id="usr"></span>
			</div> 
		</div>
		<div class="userinfo" style="margin-left:1%;width:auto;">
			123
			<a onclick="logOut()" style="margin-bottom:6px;margin-left:15px" class="easyui-linkbutton" data-options="iconCls:'icon-ccOut',plain:true">
				退出登录
			</a>
		</div>
	</div>
	<div id="west" data-options="region:'west',split:true" style="width:250px;padding-top:3px">
		<div id="acco" class="easyui-accordion" >
		    <div title="人员组织配置管理" data-options="iconCls:'icon-accolist',selected:true" >   
	    		<a onClick="addTab('账号管理','/view/userManage.jsp');" class="easyui-linkbutton" data-options="iconCls:'icon-sanjiao',plain:true">账号管理 </a>
	    	</div>
	    	<div title="合同管理" data-options="iconCls:'icon-accolist',selected:true" >   
	        	<a onClick="addTab('合同列表','/view/contractList.jsp');" class="easyui-linkbutton" data-options="iconCls:'icon-sanjiao',plain:true">合同列表 </a><br><br>
	        	<a onClick="addTab('创建合同','/view/contractCreate.jsp');" class="easyui-linkbutton" data-options="iconCls:'icon-sanjiao',plain:true">创建合同 </a> <br><br>
	        	<a onClick="addTab('合同盈亏汇总','/view/contractCollect.jsp');" class="easyui-linkbutton" data-options="iconCls:'icon-sanjiao',plain:true">合同盈亏汇总 </a> <br><br>
	    	</div>
	    	<div title="资源管理" data-options="iconCls:'icon-accolist',selected:true">
	        	<a onClick="addTab('材料列表','/view/.jsp');" class="easyui-linkbutton" data-options="iconCls:'icon-sanjiao',plain:true">材料列表   </a>    
	    		<a onClick="addTab('工具列表','/view/.jsp');" class="easyui-linkbutton" data-options="iconCls:'icon-sanjiao',plain:true">工具列表   </a>    
	    	</div>
		</div>
	</div>
	
	<div id="content" class="easyui-tabs" data-options="region:'center',border:false,plain:true" >
	</div>
	
</body>
</html>