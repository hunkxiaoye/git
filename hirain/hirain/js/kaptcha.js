$(function(){       
    $('#kaptchaImage').click(function (e) {//生成验证码   
    	$(this).hide().attr('src', '/kaptcha/getKaptchaImage.bl?' + Math.floor(Math.random()*100) ).fadeIn();  
     	e.cancelBubble=true;  
    }); 
});
function changeCode() {  
    $('#kaptchaImage').hide().attr('src', '/kaptcha/getKaptchaImage.bl?' + Math.floor(Math.random()*100) ).fadeIn();  
    $.event.cancelBubble=true;  
}
