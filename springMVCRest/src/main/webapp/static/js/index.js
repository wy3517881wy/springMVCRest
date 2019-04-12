/**
 * 
 */
$(function(){
	$('#acco').accordion({
		border:false,
		fit:true,
		selected:false,
	});
	
	var strName = $('#strName').val();
	var str = strName.substr(strName.length-2);
	$('#usr').text(str);
});

/* 增加标签 */
function addTab(title, url){
	var content = '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>';
	if ($('#content').tabs('exists', title)){
		$('#content').tabs('close', title);	
	}
	$('#content').tabs('add',{
		title:title,
		content:content,
		closable:true,
		selected : true
	});
}
//退出登录
function logOut() {
	$.ajax({
		async : false,
		url : '/user/logout',
		type : 'post',
		dataType : 'text',
		success : function(data) {
			if (data == "null") {
				window.location.href = "/view/login.jsp"
			}
		}
	});
}
