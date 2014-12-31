function formatDate(value) {
	
	if (value.length != 14)
		return null;
	var year = value.substring(0, 4);
	var month = value.substring(4, 6);
	var day = value.substring(6, 8);
	var hour = value.substring(8, 10);
	var minute = value.substring(10, 12);
	var second = value.substring(12, 14);
	
	return year + "-" + month + "-" + day + " " + hour + ":" + minute + ":" + second;
}

function getTimes(startTimes, endTimes, id, type) {
	var start = formatDate(startTimes).replace(/-/g,"/");
	var end = formatDate(endTimes).replace(/-/g,"/");
	
	var startDate = new Date(start);
	var endDate = new Date(end);
	
	var milliSecond = 0;
	
	if (endDate.getTime() > startDate.getTime())
		milliSecond = (endDate.getTime() - startDate.getTime()) / 1000;
	
	timer(id, milliSecond, type);
}

function timer(id, times, type){
	var intervalId = setInterval(function(){
		var day=0,
			hour=0,
			minute=0,
			second=0;//时间默认值		
		if(times > 0){
			day = Math.floor(times / (60 * 60 * 24));
			hour = Math.floor(times / (60 * 60)) - (day * 24);
			minute = Math.floor(times / 60) - (day * 24 * 60) - (hour * 60);
			second = Math.floor(times) - (day * 24 * 60 * 60) - (hour * 60 * 60) - (minute * 60);
		}
			
		if (minute <= 9) minute = '0' + minute;
		if (second <= 9) second = '0' + second;
		
		var val = ""; 
		
		if (type == "day") {
			val = '<strong class="tx_cl">' + day + '</strong>' + '天 ' + '<strong class="tx_cl">' + hour + '</strong>' + '小时 : ' + '<strong class="tx_cl">' + minute + '</strong>' + '分 : ' + '<strong class="tx_cl">' + second + '</strong>' + '秒';
		} else {
			val = val + '<strong class="tx_cl">' + hour + '</strong>' + '小时 : ' + '<strong class="tx_cl">' + minute + '</strong>' + '分 : ' + '<strong class="tx_cl">' + second + '</strong>' + '秒';
		}
		
		$('#' + id).html(val);
		
		if (times == 0) {
			clearInterval(intervalId);
			//window.location.reload();
		}
		
		times--;
	}, 1000);
} 

//function waitSms(){
//	console.log('@waitSms');
//	duration = parseInt("59");
//	if(timing.is(":hidden")){
//		timing.show();//显示计时区域
//	}
//	timing.text('(59秒后)重新获取');//计时区域文字初始化
////	console.log('sms=='+sms);
////	sms.hide();
//	intervalId = setInterval("setTime()",1000);
//	console.log('intervalId=='+intervalId);
////	intervalId = setInterval(function(){
////		var text = "秒后)重新获取";
////		duration -= 1;//每一秒减一
////		timing.text('('+duration+text);//计时区域显示文字设置
////		if(duration<=0){
////			clearInterval(intervalId);//倒计时完成后取消定时器
////			
////			if(!timing.is(":hidden")){
////				timing.hide();//取消计时区域
////			}
////			if(!icon.is(":hidden")){
////				icon.hide();//取消'发送成功'图标
////			}
////	
////			sms.show();//显示'重获验证码'按钮
////		}
////	},1000);	
//}
//function setTime() {
//	console.log('@ setTime method');
//	var text = "秒后)重新获取";
//	duration -= 1;//每一秒减一
//	console.log('duration=='+duration + ',timing=='+timing.html);
//	timing.text('('+duration+text);//计时区域显示文字设置
//	if(duration<=0){
//		clearInterval(intervalId);//倒计时完成后取消定时器
//		
//		if(!timing.is(":hidden")){
//			timing.hide();//取消计时区域
//		}
//		if(!icon.is(":hidden")){
//			icon.hide();//取消'发送成功'图标
//		}
//	
////		sms.show();//显示'重获验证码'按钮 
//	}
//}