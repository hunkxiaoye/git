///首页menu显示隐藏代码---------------------------------------------------------------------
var timeout = 500;
var closetimer = 0;
var ddmenuitem = 0;

// open hidden layer
function mopen(id) {
    // cancel close timer
    mcancelclosetime();

    // close old layer
    if (ddmenuitem) ddmenuitem.style.visibility = 'hidden';

    // get new layer and show it
    ddmenuitem = document.getElementById(id);
   // ddmenuitem.style.visibility = 'visible';

}
// close showed layer
function mclose() {
    if (ddmenuitem) ddmenuitem.style.visibility = 'hidden';
}

// go close timer
function mclosetime() {
    closetimer = window.setTimeout(mclose, timeout);
}

// cancel close timer
function mcancelclosetime() {
    if (closetimer) {
        window.clearTimeout(closetimer);
        closetimer = null;
    }
}

// close layer when click-out
document.onclick = mclose;
/////首页div横向切换代码-----------------------------------------------------------------------------------------------------
function menuDiv(m, n, o) {
    var menu = document.getElementById(m).getElementsByTagName("li");
    for (i = 0; i < menu.length; i++) {
        var div = document.getElementById("div" + o + i);
        div.style.display = i == n ? "block" : "none";
        $("#" + m + " li:eq(" + i + ") a").removeClass("blues");
        $("#" + m + " li:eq(" + i + ") a").addClass("green");
    }
    $("#" + m + " li:eq(" + n + ") a").removeClass("green");
    $("#" + m + " li:eq(" + n + ") a").addClass("blues");

}
function hideDiv(obj) {
    document.getElementById(obj).style.display = 'none';
}
///首页图片轮换代码-------------------------------------------------------------------------------------------------------------
function imgItem(obj) {
    $(".banner").css("background", "url(images/shili" + obj + ".jpg ) center top no-repeat");
}
var curIndex = 0;
//时间间隔 单位毫秒 
var timeInterval = 5000;
var arr = new Array();
arr[0] = "images/shili1.jpg";
arr[1] = "images/shili2.jpg";
arr[2] = "images/shili3.png";
arr[3] = "images/shili4.png";
arr[4] = "images/shili1.jpg";
setInterval(changeImg, timeInterval);
function changeImg() {
    if (curIndex == arr.length - 1) {
        curIndex = 0;
    }
    else {
        curIndex += 1;
    }
    $(".banner").css("background-image", "url(" + arr[curIndex] + ") center top no-repeat");
}
/////////////////////////////////////////////////////////
$(document).ready(function () {
    $("#b-r").click(function () {
        $(".gain-cont").hide();
        $(".gain-contz").show();
    })
});

$(function () {
    $(".ls1").click(
         function () {
             bgall();
             hideall();
             $(".lson1").show();
             $(".ls1").find("li").addClass("tit");
         }
         );
    $(".ls2").click(
         function () {
             bgall();
             hideall();
             $(".lson2").show();
             $(".ls2").find("li").addClass("tit1");
         }
         );
    $(".ls3").click(
         function () {
             bgall();
             hideall();
             $(".lson3").show();
             $(".ls3").find("li").addClass("tit2");
         }
         );
    $(".ls4").click(
         function () {
             bgall();
             hideall();
             $(".lson4").show();
             $(".ls4").find("li").addClass("tit3");
         }
         );
    $(".ls5").click(
         function () {
             bgall();
             hideall();
             $(".lson5").show();
             $(".ls5").find("li").addClass("tit4");
         }
         );
}
 );
function hideall() {
    $(".lson1").hide();
    $(".lson2").hide();
    $(".lson3").hide();
    $(".lson4").hide();
    $(".lson5").hide();
}
function bgall() {
   
}

$(function () {
    userGain(); slideSwitch();
}
 );

function userGain() {
    var gain = $('#userGain');
    gain.wrap('<div class="gain-items"></div>').css('z-index', 9);
    setTimeout(function ()
    { gain.animate({ top: -740, right: 0 }, 800).animate({ top: -360, right: 0 }, 800) }, 800)
};


function showPer() {
    var tar = $('.progre'); tar.each(function () {
        var self = $(this); var per = self.find('.per');
        var div = per.find('div');
        var num = parseInt(per.attr('data-rel'));
        var interval;
        var count = 0;
        if (num == 100)
        { count = 100 };
        var plus = function () {
            div.css({ width: count + '%' });
            if (count == num || count == 100)
            { clearInterval(interval) };
            count++
        };
        interval = setInterval(plus, 5)
    })
};
function slideSwitch() {
    var stay = 6;
    var fade = 0.7;
    var msec = 1000;
    var timer = 400;
    var timeout;
    var prev = next = 0;
    var slider = $('#slider');
    var slideindex = true;
    var controls = false;
    var html = '';
    var term = slider.children('li');
    var len = term.length; slider.wrap('<div class="slider-items"></div>');
    if (slideindex) {
        if (len > 1) {
            html += '<div class="slider-index">';
            html += '<ol class="items">';
            for (var i = 1; i <= len; i++)
            { html += '<li ' + (i == 1 ? 'class="current"' : '') + '>' + i + '</li>' };
            html += '</ol>'; html += '</div>'
        }
    };
    if (controls) {
        html += '<div class="slider-updown">';
        html += '<a href="#" class="button prev" data-rel="prev">prev</a>';
        html += '<a href="#" class="button next" data-rel="next">next</a>';
        html += '</div>';
    };
    slider.parent('.slider-items').wrap('<div class="slider-wrap"></div>').css({ 'position': 'relative', 'overflow': 'hidden' }).after(html);
    var thumbCont = slider.parent().siblings('.slider-index');
    var thumb = thumbCont.find('li');
    var button = slider.parent().siblings('.slider-updown');
    slider.fadeIn();
    if (len == 1) {
        term.first().fadeIn()
    };
    button.find('.button').bind('click',
                   function () {
                       var self = $(this).attr('data-rel');
                       if (self == 'prev') {
                           if (prev == 0) {
                               next = len - 1
                           }
                           else { next = prev - 1 }
                       }
                       else if (self == 'next') {
                           if (prev == len - 1)
                           { next = 0 } else
                           { next = prev + 1 }
                       };
                       autoPlay(); return false
                   });
    thumb.bind('click', function () {
        next = thumb.index($(this));
        clearTimeout(timeout);
        changePlay(next);
        if (next == len - 1)
        { next = 0 } else { next++ }
    });
    slider.hover(function () {
        clearTimeout(timeout)
    }, function () {
        if (len > 1) {
            timeout = setTimeout(autoPlay, stay * msec)
        }
    }); var changePlay = function (next) {
        term.eq(prev).fadeOut(fade * msec);
        term.eq(next).fadeIn(fade * msec);
        thumb.removeClass('current');
        thumb.eq(next).addClass('current');
        if (typeof ($('#userGain')[0]) != '')
        { $('#userGain').find('.opacity').css({ opacity: term.eq(next).attr('data-opacity') }) };
        prev = next
    };
    var autoPlay = function () {
        clearTimeout(timeout);
        changePlay(next);
        next = prev + 1;
        if (next >= len)
        { next = 0 }; timeout = setTimeout(autoPlay, stay * msec)
    }; if (len > 1) { autoPlay() }
};

/*充值提现*/
$(function () {
    $("#cz").hover(
    function () {
        $(this).addClass("on");
        $("#tx").removeClass("on");
    }
    );
    $("#tx").hover(
    function () {
        $(this).addClass("on");
        $("#cz").removeClass("on");
    }
    );
})

$(function () {
    $("#dx").click(
    function () {
        $(this).addClass("on");

        $(".list1 li").each(function () {
            $(this).find("a").removeClass("on");
        });
        $(".list1 li a").eq(0).addClass("on");

        $(".list2 li").each(function () {
            $(this).find("a").removeClass("on");
        });
        $(".list2 li a").eq(0).addClass("on");

        $(".list3 li").each(function () {
            $(this).find("a").removeClass("on");
        });
        $(".list3 li a").eq(0).addClass("on");
    }
    );
 

    $(".list1 li").each(function () {
        $(this).click(function () {
            $(this).find("a").toggleClass("on");
            var i = $(".list1 li a.on").length;
            $(".list1 li a").eq(0).removeClass("on");
            if (i == 0) {
                $(".list1 li a").eq(0).addClass("on");
            }
            $(".list1 li a").eq(0).click(
            function()
            {
             $(".list1 li").each(function () {
             $(this).find("a").removeClass("on"); 
             });
             $(this).addClass("on");
              } );
        });
    });

 $(".list2 li").each(function () {
     $(this).click(function () {
         $(this).find("a").toggleClass("on");
         var i = $(".list2 li a.on").length;
         $(".list2 li a").eq(0).removeClass("on");
         if (i == 0) {
             $(".list2 li a").eq(0).addClass("on");
         }
         $(".list2 li a").eq(0).click(
            function () {
                $(".list2 li").each(function () {
                    $(this).find("a").removeClass("on");
                });
                $(this).addClass("on");
            });
     });
    });


    $(".list3 li").each(function () {
        $(this).click(function () {
            $(this).find("a").toggleClass("on");
            var i = $(".list3 li a.on").length;
            $(".list3 li a").eq(0).removeClass("on");
            if (i == 0) {
                $(".list3 li a").eq(0).addClass("on");
            }
            $(".list3 li a").eq(0).click(
            function () {
                $(".list3 li").each(function () {
                    $(this).find("a").removeClass("on");
                });
                $(this).addClass("on");
            });
        });
    });

})

$(function () {
    $("#xssj").click(
    function () {
        $(".xsyc").toggleClass("xianshi");
    }
    );
}
)
$(function () {
    $(".wx").click(
    function () {
        $("#weixinDialog").show();
        $("#overlayModal").show();
    }
    );
    $(".icons").click(
    function () {
        $("#weixinDialog").hide();
        $("#overlayModal").hide();
    }
    );
}
);
$(function () {
$("#mobel").click(
function(){

$(".duanxin").show();

});
$(".iconc").click(
function(){

$(".duanxin").hide();

});
$("#mail").click(
function(){
$(".duanxin").show();
}

);

});

/*本金保障*/
$(function () {
$("#li0").hover(
function(){
cc();
$("#li0").addClass("on");
$("#div0").show();
});

$("#li1").hover(
function(){
cc();
$("#li1").addClass("on");
$("#div1").show();
});

$("#li2").hover(
function(){
cc();
$("#li2").addClass("on");
$("#div2").show();
});

$("#li3").hover(
function(){
cc();
$("#li3").addClass("on");
$("#div3").show();
}
);
});

function cc(){
$("#li0").removeClass("on");
$("#li1").removeClass("on");
$("#li2").removeClass("on");
$("#li3").removeClass("on");
$("#div0").hide();
$("#div1").hide();
$("#div2").hide();
$("#div3").hide();
}

$(function () {
    $("#addcard").click(
    function () {
        $(".adcar").show();

    }
    );
})

/*投标弹窗star*/
$(function () {
    $(".nu.on").click(
function () {
    $("#overlayModal").show();
    $(".toubiao").show();
}
);
$(".toubiaotop img").click(
function () {
    $("#overlayModal").hide();
    $(".toubiao").hide();
}
);
});
/*投标弹窗end*/
/*登录弹窗star*/
$(function () {
    $("ul.ul li.on").click(
function () {
    $("#overlayModal").show();
    $(".dengluconx").show();
}
);
$(".dengluconxs img").click(
function () {
    $("#overlayModal").hide();
    $(".dengluconx").hide();
}
);
});
/*登录弹窗end*/
/*明细弹窗star*/
$(function () {
    $(".mxxz").click(
function () {
    $("#overlayModal").show();
    $(".mingxitc").show();
}
);
$(".mingxitctop img").click(
function () {
    $("#overlayModal").hide();
    $(".mingxitc").hide();
}
);
});
/*明细弹窗end*/
/*wodezhaiquan5*/
$(function(){
$("#zttc").click(
function(){
$(".tancu").show();
}
);
$(".tancutit").click(
function(){
$(".tancu").hide();
});
$(".tancucon ul li").click(
function(){
$(".tancu").hide();

}

);

})

