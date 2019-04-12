<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ include file="common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
.tableForm{
	width:99%;
}
.tableForm tr{
	height:45px;
}
 .formLeft{
 	font-family:"微软雅黑";
 	font-size: 16px;
 	width:40%;
 }
.formRight input{
	width:230px;
}
fieldset {  
	width:80%;
    background: rgba(255,255,255,.3);  
    border-style: solid;  
    border-width: 2px;  
    -moz-border-radius: 5px;  
    -webkit-border-radius: 5px;  
    -khtml-border-radius: 5px;  
    border-radius: 5px;  
    line-height: 30px;  
    list-style: none;  
    padding: 5px 10px 25px 10px;  
    margin-bottom: 2px;  
} 
fieldset legend {  
    color:#666;  
    font: bold 16px/2 Verdana, Geneva, sans-serif;  
    font-weight: bold;  
    text-align: left;  
    text-shadow: 2px 2px 2px rgb(88, 126, 156);  
} 
 
</style>
 </head> 
 <body>
<div align="center" style="width:100%">
	<fieldset>
		<legend>创建合同</legend>
		<form id="addForm">
		<input id="id" name="id" type="hidden"></input>
			<table class="tableForm">
				<tr>
					<td class="formLeft">区域:</td>
					<td class="formRight">
						<input class="easyui-validatebox" name="pushtype" id="pushtypeAdd">
					</td>
				</tr>
				<tr>
					<td class="formLeft">甲方名称:</td>
					<td class="formRight">
						<input class="easyui-validatebox" name="pushpositioncode" id="pushpositioncodeAdd"></input>
					</td>
				</tr>
				<tr>
					<td class="formLeft">中标单位:</td>
					<td class="formRight">
						<input class="easyui-validatebox" name="acceptpositioncode" id="acceptpositioncodeAdd">
					</td>
				</tr>
				<tr>
					<td class="formLeft">合同编号:</td>
					<td class="formRight">
						<input class="easyui-validatebox" name="acceptpositioncode" id="acceptpositioncodeAdd">
					</td>
				</tr>
				<tr>
					<td class="formLeft">合同名称:</td>
					<td class="formRight">
						<input class="easyui-validatebox" name="acceptpositioncode" id="acceptpositioncodeAdd">
					</td>
				</tr>
				<tr>
					<td class="formLeft">合同金额:</td>
					<td class="formRight">
						<input class="easyui-validatebox" name="acceptpositioncode" id="acceptpositioncodeAdd">
					</td>
				</tr>
			</table>
			<div>
				<a id="insert" class="easyui-linkbutton" data-options="iconCls:'icon-ccSearch'">保存</a>
				<a id="resetbtn" style="margin-left:40px" onclick="reset()" class="easyui-linkbutton" data-options="iconCls:'icon-ccReload'">重置</a>
			</div>
		</form>
	</fieldset>
</div>
</body>
</html>
<script>
$(function(){
	//点击事件
	clickFunction();
});
function clickFunction(){
		//重置按钮
		$('#resetbtn').click(function(){
			$('#addForm').form('clear');
			$("#acceptpositioncodeAdd").combobox({disabled:true});
		});
		//保存按钮
		$('#insert').click(function(){
			
			addInfo();
		});
	}
		//添加信息
		function addInfo(){
			if($("#addForm").form('validate')){
				$.ajax({
					url:'/punchInfoPush/web/addPunchInfoPush.do',
					type:'POST',
					data:$("#addForm").serialize(),
					error:function(){
						$.messager.alert("提示","数据操作存在异常!");
						
					},
					success:function(data){	
						if(data.success){
							$('#addForm').form('clear');
							$.messager.alert("提示",data.message);
							parent.addTab('打卡信息推送配置','/view/punchInfoPushConfig.jsp');
						}else{
							$.messager.alert("提示",data.message);
						}
						
					}
				});
			}
		}
</script>