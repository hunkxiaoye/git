
$(function(){

//关闭父窗口
jQuery.fn.close_div= function(closeBt){
	closeBt.parent().fadeOut();
}
$(".glo_closebt").click(function(){
	$(this).parent().fadeOut();
})


jQuery.fn.redirect = function(url){
	if (/MSIE (\d+\.\d+);/.test(navigator.userAgent) || /MSIE(\d+\.\d+);/.test(navigator.userAgent)){
		var referLink = document.createElement('a');
		referLink.href = url;
		document.body.appendChild(referLink);
		referLink.click();
	} else {
		window.location.href = url;
	}
}

/**               
  * 日期 转换为 Unix时间戳 
  *  <string> 2014-01-01 20:20:20  日期格式               
  *  <int>        unix时间戳(秒)               
  */
jQuery.fn.strToUnix = function(string){
	var f = string.split(' ', 2);
	var d = (f[0] ? f[0] : '').split('-', 3);
	var t = (f[1] ? f[1] : '').split(':', 3);
	return (new Date(
	  parseInt(d[0], 10) || null,
	  (parseInt(d[1], 10) || 1) - 1,
	  parseInt(d[2], 10) || null,
	  parseInt(t[0], 10) || null,
	  parseInt(t[1], 10) || null,
	  parseInt(t[2], 10) || null
	)).getTime() / 1000;
}


//ajax提交，并创建提示层
jQuery.fn.ajax_post = function(url,data,reurl){
	$.post(url,data,function(redata){
			if(redata.status==1){
				$.fn.prompt('success',redata.info);
				if(reurl==2){
					setTimeout('location.reload();',4000);
				}else if(reurl==3){
					//不做跳转
				}else{
					setTimeout('location.href="'+reurl+'";',4000);
				}
			}else{
				$.fn.prompt('error',redata.info);
			}
		},'json')
}

//jqeury div拖动
jQuery.fn.move_div2 = function(mobject){

	var mdiv = mobject.parent();

		mdiv.mousedown(function(e)//e鼠标事件  
        {  
            $(this).css("cursor","move");//改变鼠标指针的形状  
              
            var offset = $(this).offset();//DIV在页面的位置  
            var x = e.pageX - offset.left;//获得鼠标指针离DIV元素左边界的距离  
            var y = e.pageY - offset.top;//获得鼠标指针离DIV元素上边界的距离  
            $(document).bind("mousemove",function(ev)//绑定鼠标的移动事件，因为光标在DIV元素外面也要有效果，所以要用doucment的事件，而不用DIV元素的事件  
            {  
                mdiv.stop();//加上这个之后  
                  
                var _x = ev.pageX - x;//获得X轴方向移动的值  
                var _y = ev.pageY - y;//获得Y轴方向移动的值  
                  
                mdiv.animate({left:_x+"px",top:_y+"px"},10);  
            });  
              
        });  
          
        $(document).mouseup(function()  
        {  
            mdiv.css("cursor","default");  
            $(this).unbind("mousemove");  
        })  
    

}





//DIV可拖动 此div需使用如：position:fixed;样式属性。parameter1:id或class 字符串 如 #ids
jQuery.fn.move_div= function(mobject){  
			var _move = false;					//移动标记
			var moDiv = mobject.parent();
			var _x, _y;							//鼠标离控件左上角的相对位置
			mobject.click(function() {
												//alert("click");//点击（松开后触发）
			}).mousedown(function(e) {
				$(this).css('cursor', 'move');
				_move = true;
				_x = e.pageX - parseInt(moDiv.css("left"));
				_y = e.pageY - parseInt(moDiv.css("top"));
				moDiv.fadeTo(20, 0.8);			//点击后开始拖动并透明显示
			});
			
			$(document).mousemove(function(e) {
				if (_move) {
					var x = e.pageX - _x;//移动时根据鼠标位置计算控件左上角的绝对位置
					var y = e.pageY - _y;
					moDiv.css({
						top : y,
						left : x
					});//控件新位置
				}
			}).mouseup(function() {
				if(!moDiv.is(':hidden')){
					_move = false;
					moDiv.fadeTo("fast", 1);//松开鼠标后停止移动并恢复成不透明
					moDiv.css('cursor', 'default');
				}
			});
} 


//交互提示 parameter1: 提示类型 success,error,plaint,loding。parameter2:提示信息
jQuery.fn.prompt= function(doId,doInfo,isclose){
	var success = $("#prosuccess");
	var plaint = $("#proplaint");
	var error = $("#proerror");
	var loding = $("#proloading");
	switch(doId){
		case 'success':
			success.find("#prosuccessval").html(doInfo);
			success.slideDown();
			setTimeout('$("#prosuccess").slideUp();',4000);
			break;
		case 'plaint':
			plaint.find("#proplaintval").html(doInfo);
			plaint.slideDown();
			setTimeout('$("#proplaint").slideUp();',4000);
			break;
		case 'error':
			error.find("#proerrorval").html(doInfo);
			error.slideDown();
			setTimeout('$("#proerror").slideUp();',4000);
			break;
		case 'loding':
			if(isclose==2){
				loding.slideUp();
			}else{
				loding.find("#proloadingval").html(doInfo);
				loding.slideDown();
			}
			break;
		default:
			alert('提示类型无定义');
	}
	

}
		
})




	