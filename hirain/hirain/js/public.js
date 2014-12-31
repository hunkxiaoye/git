
$(function(){


$(".tier_box").find(".close_bt").each(function(index, element) {
	$(element).click(function(){
		$(this).parent().hide();
	})
});













		var topDiv = $(".topDiv");
		var classify = $(".classify");
		var classifyShow = $(".classifyShow");
		var classifyTable = $(".classifyTable");
		var credit = $(".credit");
		var ma = $(".ma");
		var bodyy = $("body");
		var cityShow = $(".cityShow");
		var xcity = $("#xcitytd");
		var selecttype = $(".selecttype");
		var selectshow = $(".slelectTpeshow");
		
		/*
		classify start
		金融导航鼠标事件,隐藏或显示分类
		*/
		classify.click(function(){
			$(".city").css('background-color','#15ECFF');
			$(".city").css('color','#FFF');
			ma.slideUp(450);
			cityShow.slideUp(450);
			selectshow.slideUp(450);
			classifyShow.slideDown(450);
			$(this).css("background-color","#2F2F2F");
		})
		
		classifyShow.mouseleave(function(){
			classifyShow.slideUp(450);
			setTimeout(function(){
				classify.css("background-color","#0BA29B");					
			},500);
		})
		
		/*classify end*/
		
		selecttype.click(function(){
			ma.slideUp(450);
			cityShow.slideUp(450);
			classifyShow.slideUp(450);
			selectshow.slideDown();
		})
				
		selectshow.mouseleave(function(){
			selectshow.slideUp();	
		})
			
		selectshow.find(".select").find(".setype").each(function(index, element) {
			$(element).click(function(){
				selectshow.find(".select").find(".setype").each(function(inde, elemen) {
					$(elemen).css('background-color','#545652');
				});
						
				var site = $("#hi_site");
				site.val($(this).attr('id'));
				$(this).css('background-color','#136FB8');
			})
					
        });
		
		$("#header_city_select_close").click(function(){
				$.fn.close_div($("#header_city_select_close"));	
			})
			
			$("#header_select_city").click(function(){
				var cityListDiv = $("#header_city_list_div");
				var cityList    = cityListDiv.find('#header_city_list');
				
				if(cityList.html().length==0){
					var getcityurl = '?m=City&a=getCitys';
					$.getJSON(getcityurl, function(redata){
						if(redata.status == 1){
							var htmlStr = '';
							$.each(redata.data,function(index,value){
								htmlStr += '<li style="cursor:pointer" class="cityarea" cyid='+value.id+'>'+value.name+'</li>';
							})
							cityList.html(htmlStr);
							setting_city(".cityarea");
							cityListDiv.fadeIn(800);
						}else{
							$.fn.prompt('error',redata.data);
						}
					})
				}else{
					cityListDiv.fadeIn(800);
				}
			})
			
			
			function setting_city(clas){
				
				$("#header_city_list_div").find("#header_city_list").find(clas).each(function(index, element) {
                    $(element).click(function(){
						var cityid = $(this).attr('cyid');
						var settingurl = '?m=City&a=settingCity';
						var data = {
							'id' : cityid
						};
						$.getJSON(settingurl,data,function(redata){
							
							if(redata.status==1){
								$("#header_select_city").html(redata.data.name);
								$("#header_now_city").html(redata.data.name);
								$.fn.prompt('success',redata.info);
							}else{
								$.fn.prompt('error',redata.info);
							}
						})
						
					})
					
                });
				
			}
			
			
			$("#header_client_manager_login").click(function(){
				var cdiv = $("#header_client_manage_div");
				cdiv.fadeIn(500);
			})
			$("#header_client_manage_div").mouseleave(function(){
				$("#header_client_manage_div").hide();
			})
		
		
		
		
})




	