borrowid = '';
obj = '';
$("#big").live("click",function(){
   borrowid = $(this).siblings("label").text();
   obj = $(this).parent().parent().parent(".hd_bid_list");
   
});
function ajaxPage(id){   
    var id = id;
    $.get('/index/getBidList', {'p':id,'borrowid':borrowid}, function(data){  
        obj.empty().append(data); 
    });
}
