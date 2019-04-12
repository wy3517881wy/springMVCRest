/**
 * 公共js
 */
//清空文件域
function fileClear(file){
	file.after(file.clone().val(""));  
	file.remove(); 
}
//加载蒙版层
function showMask() {
    $(".datagrid-mask").css({ display: "block",width:$(window).width()});
    $(".datagrid-mask-msg").css({ display: "block", left: ($(window).outerWidth(true) - 190) / 2, top: $(window).height() / 2 });
}
function hiddenMask() {
    $(".datagrid-mask").hide();
    $(".datagrid-mask-msg").hide();
}
//根据毫秒转成日期
function CurentDateBySS(ss){
    var now = new Date(ss);
    var year = now.getFullYear();       //年
    var month = now.getMonth() + 1;     //月
    var day = now.getDate();            //日
    var clock = year + "-";
    if(month < 10)
        clock += "0";
    clock += month + "-";
    if(day < 10)
        clock += "0";
    clock += day;
    return(clock); 
}
//根据毫秒转成日期+时间
function CurentDateTimeBySS(ss){
    var now = new Date(ss);
    var year = now.getFullYear();       //年
    var month = now.getMonth() + 1;     //月
    var day = now.getDate();            //日
    var hh = now.getHours();            //时
    var mm = now.getMinutes();          //分
    var ss = now.getSeconds();			//秒
    var clock = year + "-";
    if(month < 10)
        clock += "0";
    clock += month + "-";
    if(day < 10)
        clock += "0";
    clock += day+" ";
    
    if(hh < 10)
        clock += "0";
    clock += hh + ":";
    if (mm < 10) clock += '0'; 
    clock += mm + ":"; 
    if (ss < 10) clock += '0'; 
    clock += ss;
    return(clock); 
} 

//根据毫秒转成时间
function CurentTimeBySS(ss){
    var now = new Date(ss);
    var hh = now.getHours();            //时
    var mm = now.getMinutes();          //分
    var ss = now.getSeconds();
    var clock = "";
    if(hh < 10)
        clock += "0";
    clock += hh + ":";
    if (mm < 10) clock += '0'; 
    clock += mm + ":"; 
    if (ss < 10) clock += '0'; 
    clock += ss;
    return(clock); 
}
//获取对象参数
function GetQueryString(name){
	var reg = new RegExp( "(^|&)" + name + "=([^&]*)(&|$)" );
	var r = window.location.search.substr(1).match(reg);
    if (r!= null ) return unescape(r[2]); return null ;
} 
function initTitleCombobox(title){
	$("#"+title).combobox({
		valueField: 'positioncode',
	    textField: 'positionname',
	    url:'/positionType/web/getAllpositionType.json'
	});
}