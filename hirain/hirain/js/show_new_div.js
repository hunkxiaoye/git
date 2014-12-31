$(document).ready(function(){
    //浏览器当前窗口可视区域高度
    var bodyHeight = $(window).height();
    //浏览器当前窗口可视区域宽度
    var bodyWidth = $(window).width();
    
    //点击投标键
    $("input.lktb").click(function(event){

        var borrowid = $(this).siblings("input[name=borrowid]").val();
        var projectid =  $(this).siblings("input[name=projectid]").val();
        var dybprojectid =  $(this).siblings("input[name=dybprojectid]").val();
        //获取当前窗口距离页面顶部高度
        var _scrollHeight = $(window).scrollTop();
        //增加一个iframe
        if(borrowid){
            $("body").append("<iframe scrolling='no' id='base_info_iframe' frameborder='0' style='position: absolute; top:"+((bodyHeight-350)/2+ _scrollHeight)+"px;left:"+(bodyWidth-500)/2+"px;width: 500px; height:350px;z-index:6001' src='/index/baseinfo.html?borrowid="+borrowid+"' target='_top'></iframe>");
        }
        
        if(projectid){
            $("body").append("<iframe scrolling='no' id='base_info_iframe' frameborder='0' style='position: absolute; top:"+((bodyHeight-350)/2+ _scrollHeight)+"px;left:"+(bodyWidth-500)/2+"px;width: 500px; height:350px;z-index:6001' src='/index/baseinfo.html?projectid="+projectid+"' target='_top'></iframe>");
        }
        
        if(dybprojectid){
            $("body").append("<iframe scrolling='no' id='base_info_iframe' frameborder='0' style='position: absolute; top:"+((bodyHeight-350)/2+ _scrollHeight)+"px;left:"+(bodyWidth-500)/2+"px;width: 500px; height:350px;z-index:6001' src='/index/baseinfo.html?dybprojectid="+dybprojectid+"' target='_top'></iframe>");
        }
        
        $("#base_info_iframe").load(function(){   
            if($(this).contents().find(".dengluconx").height()){
                $(this).height($(this).contents().find(".dengluconx").height() + 40);
                $(this).width($(this).contents().find(".dengluconx").width() + 40);  
            }else if($(this).contents().find(".toubiao").height()){
                $(this).height($(this).contents().find(".toubiao").height() + 40);
                $(this).width($(this).contents().find(".toubiao").width() + 40); 
            }
            
        });  
        //增加一个透明覆盖层
        $("body").append("<div id='maskLayer' style='background-color:#9D9D9D;width: 100%; height: 100%;left: 0;top: 0;filter: alpha(opacity=50);opacity: 0.3;z-index: 6000;position: absolute;'></div>");
        $("#maskLayer").height($("body").innerHeight());
        $("#maskLayer").width(bodyWidth);
        event.stopPropagation();    //阻止事件冒泡
    });
    
    //点击查看每月还款明细
    $("a.hd_bid_mingxi").click(function(event){
        var borrowid = $(this).siblings('span').text(); 
        
        //获取当前窗口距离页面顶部高度
        var _scrollHeight = $(window).scrollTop();
        //增加一个iframe
        $("body").append("<iframe scrolling='no' id='base_info_iframe' frameborder='0' style='position: absolute; top:"+((bodyHeight-350)/2+ _scrollHeight)+"px;left:"+(bodyWidth-600)/2+"px;width: 600px; height:350px;z-index:6001'  src='/index/repaymentlist.html?borrowid="+borrowid+"' target='_top'></iframe>");
        $("#base_info_iframe").load(function(){   
            if($(this).contents().find(".dengluconx").height()){
                $(this).height($(this).contents().find(".dengluconx").height() + 40);
                $(this).width($(this).contents().find(".dengluconx").width() + 40);  
            }else if($(this).contents().find(".mingxitc").height()){
                $(this).height($(this).contents().find(".mingxitc").height() + 40);
                $(this).width($(this).contents().find(".mingxitc").width() + 40); 
            }
            
        }); 
        //alert(iframeHeight);
        //增加一个透明覆盖层
        $("body").append("<div id='maskLayer' style='background-color:black;width: 100%; height: 100%;left: 0;top: 0;filter: alpha(opacity=30);opacity: 0.3;z-index: 6000;position: absolute;'></div>");
        $("#maskLayer").height($(document).height());
        $("#maskLayer").width(bodyWidth);
        event.stopPropagation();    //  阻止事件冒泡
    });
    
    //日盈宝点击查看每月还款明细
    $("a.ryb_hd_bid_mingxi").click(function(event){
        var projectid = $(this).siblings('span').text(); 
        
        //获取当前窗口距离页面顶部高度
        var _scrollHeight = $(window).scrollTop();
        //增加一个iframe
        $("body").append("<iframe scrolling='no' id='base_info_iframe' frameborder='0' style='position: absolute; top:"+((bodyHeight-350)/2+ _scrollHeight)+"px;left:"+(bodyWidth-600)/2+"px;width: 600px; height:350px;z-index:6001'  src='/index/repaymentlist.html?projectid="+projectid+"' target='_top'></iframe>");
        $("#base_info_iframe").load(function(){   
            if($(this).contents().find(".dengluconx").height()){
                $(this).height($(this).contents().find(".dengluconx").height() + 40);
                $(this).width($(this).contents().find(".dengluconx").width() + 40);  
            }else if($(this).contents().find(".mingxitc").height()){
                $(this).height($(this).contents().find(".mingxitc").height() + 40);
                $(this).width($(this).contents().find(".mingxitc").width() + 40); 
            }
            
        }); 
        //alert(iframeHeight);
        //增加一个透明覆盖层
        $("body").append("<div id='maskLayer' style='background-color:black;width: 100%; height: 100%;left: 0;top: 0;filter: alpha(opacity=30);opacity: 0.3;z-index: 6000;position: absolute;'></div>");
        $("#maskLayer").height($(document).height());
        $("#maskLayer").width(bodyWidth);
        event.stopPropagation();    //  阻止事件冒泡
    });
    
    //日盈宝点击查看每月还款明细
    $("a.dyb_hd_bid_mingxi").click(function(event){
        var dybprojectid = $(this).siblings('span').text(); 
        
        //获取当前窗口距离页面顶部高度
        var _scrollHeight = $(window).scrollTop();
        //增加一个iframe
        $("body").append("<iframe scrolling='no' id='base_info_iframe' frameborder='0' style='position: absolute; top:"+((bodyHeight-350)/2+ _scrollHeight)+"px;left:"+(bodyWidth-600)/2+"px;width: 600px; height:350px;z-index:6001'  src='/index/repaymentlist.html?dybprojectid="+dybprojectid+"' target='_top'></iframe>");
        $("#base_info_iframe").load(function(){   
            if($(this).contents().find(".dengluconx").height()){
                $(this).height($(this).contents().find(".dengluconx").height() + 40);
                $(this).width($(this).contents().find(".dengluconx").width() + 40);  
            }else if($(this).contents().find(".mingxitc").height()){
                $(this).height($(this).contents().find(".mingxitc").height() + 40);
                $(this).width($(this).contents().find(".mingxitc").width() + 40); 
            }
            
        }); 
        //alert(iframeHeight);
        //增加一个透明覆盖层
        $("body").append("<div id='maskLayer' style='background-color:black;width: 100%; height: 100%;left: 0;top: 0;filter: alpha(opacity=30);opacity: 0.3;z-index: 6000;position: absolute;'></div>");
        $("#maskLayer").height($(document).height());
        $("#maskLayer").width(bodyWidth);
        event.stopPropagation();    //  阻止事件冒泡
    });
    
    //日盈宝 定盈宝 月盈宝  产品页中点击登录链接
    $("a.logintc").click(function(event){
        //获取当前窗口距离页面顶部高度
        var _scrollHeight = $(window).scrollTop();
        //增加一个iframe
        $("body").append("<iframe scrolling='no' id='base_info_iframe' frameborder='0' style='position: absolute; top:"+((bodyHeight-350)/2+ _scrollHeight)+"px;left:"+(bodyWidth-600)/2+"px;width: 600px; height:350px;z-index:6001'  src='/index/logintc.html' target='_top'></iframe>");
        $("#base_info_iframe").load(function(){   
            if($(this).contents().find(".dengluconx").height()){
                $(this).height($(this).contents().find(".dengluconx").height() + 40);
                $(this).width($(this).contents().find(".dengluconx").width() + 40);  
            }else if($(this).contents().find(".mingxitc").height()){
                $(this).height($(this).contents().find(".mingxitc").height() + 40);
                $(this).width($(this).contents().find(".mingxitc").width() + 40); 
            }
            
        }); 
        //alert(iframeHeight);
        //增加一个透明覆盖层
        $("body").append("<div id='maskLayer' style='background-color:black;width: 100%; height: 100%;left: 0;top: 0;filter: alpha(opacity=30);opacity: 0.3;z-index: 6000;position: absolute;'></div>");
        $("#maskLayer").height($(document).height());
        $("#maskLayer").width(bodyWidth);
        event.stopPropagation();    //  阻止事件冒泡
    });
});
