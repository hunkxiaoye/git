$(document).ready(function(){
    //$("body").append('<div id="online_qq_layer"> <div id="online_qq_tab"> <a id="floatShow" style="display:block;" href="javascript:void(0);">收缩</a> <a id="floatHide" style="display:none;" href="javascript:void(0);">展开</a> </div> <div id="onlineService"> <div class="onlineMenu"> <h3 class="other">QQ在线客服</h3> <ul><li><img  style="CURSOR: pointer" onclick="javascript:window.open(\'http://b.qq.com/webc.htm?new=0&sid=4006016187&eid=218808P8z8p8p8K8y8y8Q&o=www.hudai.com&q=7&ref=\'+document.location, \'_blank\', \'height=544, width=644,toolbar=no,scrollbars=no,menubar=no,status=no\');"  border="0" SRC="http://im.bizapp.qq.com:8000/zx_qq.gif"></li> <li><img style="cursor:pointer;" onclick="javascript:window.open(\'http://b.qq.com/webc.htm?new=0&sid=4006016187&eid=218808P8z8p8p8K8y8y8Q&o=www.hudai.com&q=1&ref=\'+document.location, \'_blank\', \'height=502,width=644,toolbar=no,scrollbars=no,menubar=no,status=no\');" alt="匿名给我发消息" src="/Public/Home/images/online-zixun.gif"></li> </ul> </div> <div class="onlineMenu"> <h3 class="other">联系电话</h3> <ul> <li class="tli phone">400-6016-187</li> </ul> </div><div class="onlineMenu"><h3 class="other">工作日</h3><ul><li>周一至周五</li></ul></div><div class="onlineMenu"><h3 class="other">工作时间</h3><ul><li>9:00 - 18:00</li></ul></div>  <div class="btmbg"></div> </div> </div>');
    $("body").append('<div id="online_qq_layer" style="margin-top:150px;"><a href="javascript:void" onclick="javascript:window.open(\'http://b.qq.com/webc.htm?new=0&sid=4006016187&eid=218808P8z8p8p8K8y8y8Q&o=www.hudai.com&q=7&ref=\'+document.location, \'_blank\', \'height=544, width=644,toolbar=no,scrollbars=no,menubar=no,status=no\');"><img src="/Public/Home/images/kefu_01.png"/></a></div>');
    
    
    
    $("#online_qq_layer a img").hover(function(){
        $(this).attr({src:'/Public/Home/images/kefu_02.png'});
    },function(){
        $(this).attr({src:'/Public/Home/images/kefu_01.png'});
    });
    
    $("#floatShow").live('click',function(){

        $("#onlineService").show();
        $(this).hide();
        $("#floatHide").show();
           
    });  
    
    $("#floatHide").live('click',function(){
        $("#floatShow").show();
        $("#onlineService").hide();
        $(this).hide();

    });  
});
