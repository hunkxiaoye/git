﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logins.aspx.cs" Inherits="hirain.Logins" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>数贷熊-最安全的P2P网贷平台,P2P理财融资专家</title>
    <meta property="qc:admins" content="15473546726054116375">
    <meta property="wb:webmaster" content="911772c174d64d90">
    <meta content="P2P理财,P2P网贷,互贷,P2P平台" name="keywords">
    <meta content="数贷熊官网,中国领先的严谨型P2P理财融资平台,唯一以抵押模式为主的P2P网贷平台.100%本息保障+随时可赎回=最具竞争力的P2P理财平台!P2P网贷专家,当然互贷!"
        name="description">
    <link href="css/hdcoinpublic.css"
        rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/hd_supply_style.css">
    <link href="css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/newcss20140507.css"
        rel="stylesheet" type="text/css">
    <script src="js/mv.js" async=""
        type="text/javascript"></script>
    <script src="js/mba.js" async=""
        type="text/javascript"></script>
    <script src="js/mvl.js" async=""
        type="text/javascript"></script>
    <script src="js/hm.js"></script>
    <script type="text/javascript" src="js/jquery-1.js"></script>
    <script type="text/javascript" src="js/menu.js"></script>
    <script type="text/javascript" src="js/ajax_bid_list.js"></script>
    <script type="text/javascript" src="js/show_new_div.js"></script>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script>        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?67ac57173ff1e28d2240afc0d4134f16";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
    <script>        function loancookieset(id) {
            var cookietime = new Date();
            cookietime.setTime(cookietime.getTime() + (60 * 60 * 1000)); //coockie保存一小时 
            switch (id) {
                case 1:
                    $.cookie("hdw_pro", "ryb", { expires: cookietime, path: "/" });
                    break;
                case 2:
                    $.cookie("hdw_pro", "dyb", { expires: cookietime, path: "/" });
                    break;
                case 3:
                    $.cookie("hdw_pro", "yxb", { expires: cookietime, path: "/" });
                    break;
                default:
                    $.cookie("hdw_pro", "ryb", { expires: cookietime, path: "/" });
                    break;
            }
        }
        $(function () {
            $("#mla1").hover(
            function () {
                $("#mla1").removeClass("off").addClass("on");
                $("#mlb2").removeClass("on").addClass("off");
                $("#mxa1").show();
                $("#mxa2").hide();

            });
            $("#mlb2").hover(
            function () {
                $("#mlb2").removeClass("off").addClass("on");
                $("#mla1").removeClass("on").addClass("off");
                $("#mxa2").show();
                $("#mxa1").hide();

            });
            $("#mxa2 .mx").last().css("border-bottom", "none");
            $("#mxa1 .mx").last().css("border-bottom", "none");
        });
    </script>
     <style type="text/css">
        body
        {
            text-align: center;
        }

        .div
        {
            margin: 0 auto;
        }

        #it1
        {
            margin-left: 0px;
        }
        .d {
    width: 500px;
    height: 350px;
    margin-top: 20px;
    margin-left: auto;
    margin-right: auto;
}
.ds {
    width: 400px;
    height: 250px;
    margin-top: 20px;
    margin-left: auto;
    margin-right: auto;
}
    </style>
</head>
<body>
    <div class="top">
        <div class="t-mediate">
            <div class="t-content">
                <div class="t-phone">
                    咨询热线：123456789</div>
                <a href="http://weibo.com/huxinjinrong" target="_blank" class="wx">
                   <img src="images/sina.png"></a><a class="wx"><img
                        src="images/weixin.png"></a></div>
            <ul class="ul">
                <li>
                    <!--a href="javascript:void(0);">新手奖励</a-->
                </li>
                <li><a href="Register.aspx">免费注册</a></li><li><a href="Logins.aspx">
                    立即登录</a></li></ul>
            <div id="weixinDialog" class="dialog-main" style="z-index: 9999; position: absolute;">
                <div class="dialog-head">
                    <h2>
                        关注数贷熊官方微信</h2>
                    <span class="icons">关闭</span></div>
                <div id="weixinEntry">
                    <p style="text-align: center; padding: 8px 45px">
                        <img style="display: block; margin: 0 auto; width: 196px; height: 193px" src="images/weixin-code.jpg"></p>
                    <div class="dialog-foot">
                        <p>
                            打开微信，点击底部的″发现″，<br>
                            使用″扫一扫″即可关注互贷网官方微信。</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="nav nava">
        <div class="nav-con">
            <div class="logo">
                <a href="#">
                    <img src="images/tubiao1.jpg" alt="" height="49" width="172"></a></div>
            <ul id="sddm">
                <li><a href="Index.aspx" target="_blank">首&nbsp;&nbsp;页</a></li><li><a href="javascript:void(0);"
                    onmouseover="mopen('m1')" onmouseout="mclosetime()">我要贷款</a><div style="visibility: hidden;"
                        id="m1" onmouseover="mcancelclosetime()" onmouseout="mclosetime()">
                        <a href="#">P2P</a><a href="#"> 即将推出</a><a href="#">即将推出</a><a href="#">即将推出</a></div>
                </li>
                <li><a href="javascript:void(0);" onmouseover="mopen('m2')" onmouseout="mclosetime()">
                    我要投资</a><div id="m2" onmouseover="mcancelclosetime()" onmouseout="mclosetime()">
                        <a href="#">P2B</a><a href="#">P2C</a></div>
                </li>
                <li><a href="javascript:void(0);" onmouseover="mopen('m3')" onmouseout="mclosetime()">
                    理财端口</a><div id="m3" onmouseover="mcancelclosetime()" onmouseout="mclosetime()">
                        <a href="#">即将推出 </a><a href="#">即将推出</a><a href="#">即将推出</a><a href="#">即将推出</a><a
                            href="#">即将推出</a><a href="#">即将推出</a></div>
                </li>
                <li><a href="#">众筹</a></li><li><a href="javascript:void(0);" onmouseover="mopen('m5')"
                    onmouseout="mclosetime()">POS贷</a><div id="m5" onmouseover="mcancelclosetime()" onmouseout="mclosetime()">
                        <a href="#">即将推出</a><a href="#">即将推出</a><a href="#">即将推出 </a><a href="#">即将推出 </a>
                        <a href="#">即将推出 </a><a href="#">即将推出 </a><a href="#">即将推出</a></div>
                </li>
            </ul>
        </div>
    </div>
        <div class ="d">
         <form id="Form1" runat="server">
                <ul>
                    <li><span class="name">用 户 名：<b>*</b></span><span class="wenben">
                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                    </span></li>
                    <li><span >密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 码：<b>*</b></span><span class="wenben">
                        <asp:TextBox ID="PassWord" runat="server" TextMode="Password" ></asp:TextBox>
                    </span></li>
                    <li><span >
                        <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary"  Text="提　交" OnClick="btnSubmit_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="返    回" OnClick="btnSubmit_Click" />
                    </span></li>
                    </ul>
                    </form>
                    </div>
    <!--友情链接开始-->
    <div class="friendship_link">
        <strong>友情链接：</strong><a href="https://www.weicaifu.com/" target="_blank">新浪微财富</a><a
            href="http://www.wangdaibang.com/" target="_blank">网贷帮</a><a href="http://www.yhxw.cn/"
                target="_blank">银行存款利率</a><a href="http://www.banklilv.com/" target="_blank">银行利率</a><a
                    href="http://www.wangdaibaike.com/" target="_blank">网贷百科</a><a href="http://www.wangdai.org.cn/"
                        target="_blank">网贷点评</a><a href="http://dai.makepolo.com/" target="_blank">企业贷款</a><a
                            href="http://www.yhxw.cn/" target="_blank">银行利率</a><a href="http://www.fx121.com/"
                                target="_blank">财经资讯</a><a href="http://zhengzhou.roadoor.com/" target="_blank">郑州贷款</a><a
                                    href="http://www.qedai.com/" target="_blank">杭州贷款</a><a href="http://www.hudai.com/article/"
                                        target="_blank">新闻中心</a><a href="http://www.newunion.cn/" target="_blank">网络借贷</a><a
                                            href="http://www.jueduishouyi.com/" target="_blank">固定收益</a><a href="https://www.p2peye.com/"
                                                target="_blank">网贷天眼</a><a href="http://www.cqrzw.cn/" target="_blank">重庆贷款网</a><a
                                                    href="http://www.baiyin8.cn/" target="_blank">武汉白银</a><a href="http://www.wangdaizhijia.com/"
                                                        target="_blank">网贷之家</a><a href="http://finance.qq.com/a/20140429/011824.htm" target="_blank">互贷</a></div>
    <!--友情链接结束-->
    <!--包含页脚文件开始-->
    <div class="ht">
    </div>
    <div class="PT">
        北京有限公司 版权所有 2011-2014<br>
        Copyright Reserved 2011-2013 © 数贷熊（www.shudx）| 京ICP备13031150号
    </div>
    <div class="db-f">
        <ul style="width: 580px;">
            <li><a href="https://ss.knet.cn/verifyseal.dll?sn=e13102511010043055ctbz000000&amp;ct=df&amp;a=1&amp;pa=0.4563455229813702"
                target="_blank">
                <img src="images/kexin.png"></a></li><li><a href="http://www.miibeian.gov.cn/" target="_blank">
                    <img src="images/beian.png"></a></li><li><a href="http://www.zx110.org/" target="_blank">
                        <img src="images/wangluo.png"></a></li><li><a href="http://www.sgs.gov.cn/lz/licenseLink.do?method=licenceView&amp;entyId=20131017141114973"
                            target="_blank">
                            <img src="images/hui.png"></a></li><li><a id="_pingansec_bottomimagesmall_p2p">
                                <iframe style="border: 0px none; z-index: 9999; background-color: transparent;" bottom="0"
                                    border="0" allowtransparency="true" marginheight="0" marginwidth="0" scrolling="no"
                                    src="index_files/p2p_bottomimagesmall.htm" id="_pingansec_bottomimagesmall_p2p_iframe"
                                    frameborder="0" height="50px" width="120px"></iframe>
                            </a>
                                <script src="js/cert.js"></script>
                                <script type="text/javascript" src="js/certShow.js"></script>
                            </li>
        </ul>
    </div>
    <script type="text/javascript" src="js/kefu.js"></script>
    <script type="text/javascript" src="js/mediav.js"></script>
    <!--包含页脚文件结束-->
    <div class="appma">
        <a href="http://www.hudai.com/index/appldy.html" target="_blank">
            <img src="images/Appma.png" alt="APP二维码"></a></div>
    <div id="online_qq_layer" style="margin-top: 150px;">
        <a href="javascript:void" onclick="javascript:window.open('ref='+document.location, '_blank', 'height=544, width=644,toolbar=no,scrollbars=no,menubar=no,status=no');">
            <img src="images/kefu_01.png"></a></div>
</body>
</html>
