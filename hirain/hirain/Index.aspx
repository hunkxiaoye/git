﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="hirain.Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
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
</head>
<body>
    <!--包含头部导航开始-->
    <!--顶部-->
    <div class="top">
        <div class="t-mediate">
            <div class="t-content">
                <div class="t-phone">
                    咨询热线：400-6016-187</div>
                <!--a href="javascript:window.external.addFavorite('Index.aspx','数贷熊-低门槛，高收益，安全高效');" class="sc">收藏我们</a-->
                <a href="#" target="_blank" class="wx">
                    <img src="images/sina.png"></a><a class="wx"><img
                        src="images/weixin.png"></a></div>
          <ul class="ul">
                <li>
                   欢迎登陆<asp:Label ID="NickName" runat="server" Text=""></asp:Label>
                </li>
                <li><a href="UserInfo.aspx">
                    我的账户</a>
                </li></ul>
            <div id="Div1" class="dialog-main" style="z-index: 9999; position: absolute;">
                <div class="dialog-head">
                    <h2>
                        关注数贷熊官方微信</h2>
                    <span class="icons">关闭</span></div>
                <div id="Div2">
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
    <!--顶部-->
    <!--导航-->
    <div class="nav nava">
        <div class="nav-con">
            <div class="logo">
                <a href="indexs.htm">
                    <img src="images/tubiao1.jpg" alt="" height="49"
                        width="172"></a></div>
            <ul id="Ul1">
                <li><a href="Index.aspx" target="_blank">首&nbsp;&nbsp;页</a></li><li><a
                    href="javascript:void(0);" onmouseover="mopen('m1')" onmouseout="mclosetime()">我要贷款</a><div
                        id="Div3" onmouseover="mcancelclosetime()" onmouseout="mclosetime()">
                        <a href="#">P2P</a><a href="#">即将推出
                            </a><a href="#">即将推出</a><a href="#">
                               即将推出</a></div>
                </li>
                <li><a href="InvestShow.aspx">
                    我要投资</a><div id="Div4" onmouseover="mcancelclosetime()" onmouseout="mclosetime()">
                        <a href="#">P2B</a><a href="#">P2C</a></div>
                </li>
                <li><a href="javascript:void(0);" onmouseover="mopen('m3')" onmouseout="mclosetime()">
                    理财端口</a><div id="Div5" onmouseover="mcancelclosetime()" onmouseout="mclosetime()">
                        <a href="#">即将推出 </a><a href="#">
                            即将推出</a><a href="#">即将推出</a><a href="#">即将推出</a><a
                                href="#">即将推出</a><a href="#">即将推出</a></div>
                </li>
                <li><a href="#">众筹</a></li><li><a href="javascript:void(0);"
                    onmouseover="mopen('m5')" onmouseout="mclosetime()">POS贷</a><div id="Div6" onmouseover="mcancelclosetime()"
                        onmouseout="mclosetime()">
                        <a href="#">即将推出</a><a href="#">即将推出</a><a
                            href="#">即将推出 </a><a href="#">
                                即将推出 </a><a href="http://www.hudai.com/about/reportlist.html">即将推出 </a><a href="#">
                                    即将推出 </a><a href="#">即将推出</a></div>
                </li>
            </ul>
        </div>
    </div>
    <!--导航-->
    <!--包含头部导航结束-->
    <!--banner-->
    <div class="feat-area">
        <div class="slider-items" style="position: relative; overflow: hidden;">
            <div class="slider-wrap">
                <div style="position: relative; overflow: hidden;" class="slider-items">
                    <ul style="display: block;" class="slider" id="Ul2">
                        <li data-opacity="0.5" style="background: url( '../images/shili1.jpg') no-repeat scroll center center rgb(187, 55, 40);
                            display: none;"><a href="#"></a></li><li
                                data-opacity="0.5" style="background: url('../images/shili2.jpg') no-repeat scroll center center rgb(2, 69, 147);
                                display: none;"><a href="#"></a></li><li
                                    data-opacity="0.5" style="background: url('../images/shili3.png') no-repeat scroll center center rgb(1, 46, 89);
                                    display: none;"><a href="#"></a></li><li
                                        data-opacity="0.5" style="background: url('../images/shili4.png') no-repeat scroll center center rgb(94, 5, 0);
                                        display: list-item;"><a href="javascript:void(0);"></a></li><li data-opacity="0.5"
                                            style="background: #6322b0 url('../images/shili4.png') no-repeat center center">
                                            <a href="javascript:void(0);"></a></li><li data-opacity="0.5" style="background: #bbc3dd url('../images/shili4.png') no-repeat center center">
                                                <a href="#"></a></li></ul>
                </div>
                <div class="slider-index">
                    <ol class="items">
                        <li class="">1</li><li class="">2</li><li class="">3</li><li class="current">4</li><li>
                            5</li><li>6</li></ol>
                </div>
            </div>
        </div>
        <div class="b-con">
            <div class="gain-items">
                <div class="gain-items">
                    <div id="Div7" class="gain" style="z-index: 9; top: -360px; right: 0px;">
                        <div class="gain-cont">
                            <h2>
                                数贷熊平均年化收益</h2>
                            <p class="f">
                                <em></em>18%
                            </p>
                            <p class="wz">
                                <em></em><span class="b-cu">50倍</span>活期存款收益， <span class="light-fc"></span><span
                                    class="b-cu">6倍</span>定期存款收益
                            </p>
                            <p class="reg">
                                <a href="Register.aspx">免费注册 </a>
                            </p>
                            <p class="tar">
                                已有账号? <a id="A1" href="Login.aspx">立即登录 </a>
                            </p>
                        </div>
                        <div style="opacity: 0.5;" class="opacity">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--banner-->
    <div class="main">
        <!--灰色-->
        <div class="grey greynew">
            <ul>
                <li><a href="http://www.hudai.com/loan/loan.html" class="area"><span class="img1"></span>
                    <div class="g-b">
                        我要投资</div>
                    <p class="p1">
                        低门槛</p>
                    <p>
                        高收益</p>
                    <p class="p3">
                        瞬时赎回</p>
                </a></li>
                <li><a href="http://www.hudai.com/borrow/borrow.html" class="area"><span class="img2">
                </span>
                    <div class="g-b">
                        我要融资</div>
                    <p class="p1">
                        额度高</p>
                    <p>
                        利率低</p>
                    <p class="p3">
                        快速便捷</p>
                </a></li>
                <li><a href="http://www.hudai.com/safety/guarantee.html" class="area"><span class="img3">
                </span>
                    <div class="g-b">
                        安全保障</div>
                    <p class="p1">
                        100%线下审核</p>
                    <p>
                        100%面签</p>
                    <p class="p3">
                        100%本息保障</p>
                </a></li>
            </ul>
        </div>
        <!--灰色-->
        <div class="m-left">
            <div class="sy_pzlistz left">
                <!--日盈宝开始-->
                <div class="sy_pzlistz1">
                    <div class="sy_pzlistz1z left">
                        <div class="sy_pzlistz1zs">
                            <img src="images/ryb_list.jpg"><p class="font20">
                                日盈宝</p>
                            <p>
                                隔日计息；瞬时赎回。</p>
                        </div>
                        <div class="sy_pzlistz1zx">
                            <a href="http://www.hudai.com/loan/loan.html" onclick="loancookieset(1)">更多</a></div>
                    </div>
                    <div class="sy_pzlistz1y left">
                        <ul>
                            <li>
                                <img src="images/home.png"></li><li
                                    class="width_200">
                                    <p>
                                        <a href="http://www.hudai.com/index/bid/ryb34.html" target="_blank" title="房产抵押 经营贷款">
                                            房产抵押 经营贷款</a></p>
                                    <p class="lvs font14">
                                        日盈宝编号：20034</p>
                                </li>
                            <li class="padtop12  margin_left width_100">
                                <p class="font16 sl">
                                    ￥1,200,000</p>
                            </li>
                            <li class="padtop12  margin_left">
                                <p class="font16 lvs">
                                    14%</p>
                            </li>
                            <li class="margin_left">
                                <div class="jd" style="margin-top: 13px;">
                                    <span class="aqdj"><span class="fudong" title="83%" style="width: 83%;"></span></span>
                                    <span class="green">83%
                                        <br>
                                    </span>
                                </div>
                            </li>
                            <li class="margin_left">
                                <input class="lktb margin_0" type="button"><input name="projectid" value="34" type="hidden"></li></ul>
                    </div>
                    <div class="sy_pzlistz1y left">
                        <ul>
                            <li>
                                <img src="images/home.png"></li><li
                                    class="width_200">
                                    <p>
                                        <a href="http://www.hudai.com/index/bid/ryb29.html" target="_blank" title="房产抵押 经营贷款">
                                            房产抵押 经营贷款</a></p>
                                    <p class="lvs font14">
                                        日盈宝编号：20029</p>
                                </li>
                            <li class="padtop12  margin_left width_100">
                                <p class="font16 sl">
                                    ￥550,000</p>
                            </li>
                            <li class="padtop12  margin_left">
                                <p class="font16 lvs">
                                    14%</p>
                            </li>
                            <li class="margin_left">
                                <div class="jd" style="margin-top: 13px;">
                                    <span class="aqdj"><span class="fudong" title="99%" style="width: 99%;"></span></span>
                                    <span class="green">99%
                                        <br>
                                    </span>
                                </div>
                            </li>
                            <li class="margin_left">
                                <input class="lktb margin_0" type="button"><input name="projectid" value="29" type="hidden"></li></ul>
                    </div>
                </div>
                <!--日盈宝结束-->
                <!--定盈宝开始-->
                <div class="sy_pzlistz1">
                    <div class="sy_pzlistz1z2 left">
                        <div class="sy_pzlistz1zs2">
                            <img src="images/dyb_list.jpg"><p class="font20">
                                定盈宝</p>
                            <p>
                                隔日计息；到期赎回。</p>
                        </div>
                        <div class="sy_pzlistz1zx2">
                            <a href="http://www.hudai.com/loan/loan.html" onclick="loancookieset(2);">更多</a></div>
                    </div>
                    <div class="sy_pzlistz1y left">
                        <ul>
                            <li>
                                <img src="images/zhi.png"></li><li class="width_200">
                                    <p>
                                        <a href="http://www.hudai.com/index/bid/dyb30021.html" target="_blank" title="股票质押 融资借款">
                                            股票质押 融资借款</a></p>
                                    <p class="lvs font14">
                                        定盈宝编号：30021</p>
                                </li>
                            <li class="margin_left width_100 padtop12">
                                <p class="font16 sl">
                                    ￥1,500,000</p>
                            </li>
                            <li class="margin_left padtop12">
                                <p class="font16 lvs">
                                    16%</p>
                            </li>
                            <li class="margin_left">
                                <div class="jd" style="margin-top: 13px;">
                                    <span class="aqdj"><span class="fudong" title="51%" style="width: 51%;"></span></span>
                                    <span class="green">51%
                                        <br>
                                    </span>
                                </div>
                            </li>
                            <li class="margin_left">
                                <input class="lktb margin_0" type="button"><input name="dybprojectid" value="30021"
                                    type="hidden"></li></ul>
                    </div>
                    <div class="sy_pzlistz1y left">
                        <ul>
                            <li>
                                <img src="%E7%90%86%E8%B4%A2%E4%B8%93%E5%AE%B6%EF%BC%81_files/home.png"></li><li
                                    class="width_200">
                                    <p>
                                        <a href="http://www.hudai.com/index/bid/dyb30020.html" target="_blank" title="房产抵押 经营贷款">
                                            房产抵押 经营贷款</a></p>
                                    <p class="lvs font14">
                                        定盈宝编号：30020</p>
                                </li>
                            <li class="margin_left width_100 padtop12">
                                <p class="font16 sl">
                                    ￥1,300,000</p>
                            </li>
                            <li class="margin_left padtop12">
                                <p class="font16 lvs">
                                    16%</p>
                            </li>
                            <li class="margin_left">
                                <div class="jd" style="margin-top: 13px;">
                                    <span class="aqdj"><span class="fudong" title="100%" style="width: 100%;"></span>
                                    </span><span class="green">100%
                                        <br>
                                    </span>
                                </div>
                            </li>
                            <li class="margin_left">
                                <input class="sw margin_0" type="button"></li></ul>
                    </div>
                </div>
                <!--定盈宝结束-->
                <!--月盈宝开始-->
                <div class="sy_pzlistz1">
                    <div class="sy_pzlistz1z left">
                        <div class="sy_pzlistz1zs">
                            <img src="images/yyb_list.jpg"><p class="font20">
                                月盈宝</p>
                            <p>
                                满标计息；等额本息。</p>
                        </div>
                        <div class="sy_pzlistz1zx">
                            <a href="http://www.hudai.com/loan/loan.html" onclick="loancookieset(3);">更多</a></div>
                    </div>
                    <div class="sy_pzlistz1y left">
                        <ul>
                            <li>
                                <img src="%E7%90%86%E8%B4%A2%E4%B8%93%E5%AE%B6%EF%BC%81_files/hand.png"></li><li
                                    class="width_200">
                                    <p>
                                        <a href="http://www.hudai.com/index/bid/yxb1071.html" target="_blank" title="公司经营 诚信借款">
                                            公司经营 诚信借款</a></p>
                                    <p class="lvs font14">
                                        月盈宝编号：1071</p>
                                </li>
                            <li class="margin_left width_100 padtop12">
                                <p class="font16 sl">
                                    ￥120,000</p>
                            </li>
                            <li class="margin_left padtop12">
                                <p class="font16 lvs">
                                    17%</p>
                            </li>
                            <li class="margin_left">
                                <div class="jd" style="margin-top: 13px;">
                                    <span class="aqdj"><span class="fudong" title="100%" style="width: 100%;"></span>
                                    </span><span class="green">100%
                                        <br>
                                    </span>
                                </div>
                            </li>
                            <li class="margin_left">
                                <input class="hkz margin_0" type="button"></li></ul>
                    </div>
                    <div class="sy_pzlistz1y left">
                        <ul>
                            <li>
                                <img src="%E7%90%86%E8%B4%A2%E4%B8%93%E5%AE%B6%EF%BC%81_files/home.png"></li><li
                                    class="width_200">
                                    <p>
                                        <a href="http://www.hudai.com/index/bid/yxb1069.html" target="_blank" title="房产抵押 消费借款">
                                            房产抵押 消费借款</a></p>
                                    <p class="lvs font14">
                                        月盈宝编号：1069</p>
                                </li>
                            <li class="margin_left width_100 padtop12">
                                <p class="font16 sl">
                                    ￥200,000</p>
                            </li>
                            <li class="margin_left padtop12">
                                <p class="font16 lvs">
                                    17%</p>
                            </li>
                            <li class="margin_left">
                                <div class="jd" style="margin-top: 13px;">
                                    <span class="aqdj"><span class="fudong" title="100%" style="width: 100%;"></span>
                                    </span><span class="green">100%
                                        <br>
                                    </span>
                                </div>
                            </li>
                            <li class="margin_left">
                                <input class="hkz margin_0" type="button"></li></ul>
                    </div>
                </div>
                <!--月盈宝结束-->
                <div class="index_lzx">
                </div>
                <div class="index_lzx2">
                </div>
                <div style="height: 6px;">
                </div>
            </div>
            <div class="gongg">
                <div class="g-fs">
                    <div class="btt">
                        <div class="apo">
                            投资资讯</div>
                        <div class="agd">
                            <a href="http://www.hudai.com/information/index.html" target="_blank">更多&gt;&gt;</a></div>
                        <div class="lvg">
                            <a href="http://www.hudai.com/information/lists/751.html" target="_blank" title="保障p2p投资理财安全的3个要点">
                                ·保障p2p投资理财安全的3个要点</a></div>
                        <ul>
                            <li><a href="http://www.hudai.com/information/lists/750.html" target="_blank" title="互贷谈P2P：从保障模式看网贷风险">
                                ·互贷谈P2P：从保障模式看网贷风险</a></li><li><a href="http://www.hudai.com/information/lists/749.html"
                                    target="_blank" title="投资互联网金融理财产品的要点">·投资互联网金融理财产品的要点</a></li><li><a href="http://www.hudai.com/information/lists/748.html"
                                        target="_blank" title="适合年末理财的投资理财产品有哪些">·适合年末理财的投资理财产品有哪些</a></li><li><a href="http://www.hudai.com/information/lists/747.html"
                                            target="_blank" title="招商银行年底理财产品再起波澜">·招商银行年底理财产品再起波澜</a></li></ul>
                    </div>
                </div>
                <div class="g-sf">
                    <div class="btt">
                        <div class="apo">
                            行业新闻</div>
                        <div class="agd">
                            <a href="http://www.hudai.com/news/index.html" target="_blank">更多&gt;&gt;</a></div>
                        <div class="lvg">
                            <a href="http://www.hudai.com/news/lists/673.html" target="_blank" title="理财必知：家庭理财五大定律">
                                ·理财必知：家庭理财五大定律</a></div>
                        <ul>
                            <li><a href="http://www.hudai.com/news/lists/669.html" target="_blank" title="银行理财不保本 市场改革看今朝">
                                ·银行理财不保本 市场改革看今朝</a></li><li><a href="http://www.hudai.com/news/lists/674.html" target="_blank"
                                    title="网贷市场的现状与未来发展方向">·网贷市场的现状与未来发展方向</a></li><li><a href="http://www.hudai.com/news/lists/672.html"
                                        target="_blank" title="对p2p网贷监管政策内容展开的猜测">·对p2p网贷监管政策内容展开的猜测</a></li><li><a href="http://www.hudai.com/news/lists/671.html"
                                            target="_blank" title="p2p网贷理财助阵小微企业发展">·p2p网贷理财助阵小微企业发展</a></li></ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="m-right">
            <a href="http://www.hudai.com/index/xszy.html">
                <img src="%E7%90%86%E8%B4%A2%E4%B8%93%E5%AE%B6%EF%BC%81_files/xs_07.jpg"></a><div
                    id="Div8">
                    <div class="index_tzphs">
                        <div class="index_tzphsz">
                            每月净投资排行榜</div>
                        <div class="index_tzphsy">
                            <a href="http://www.hudai.com/index/investrank.html" target="_blank">更多&gt;&gt;</a></div>
                    </div>
                    <div class="index_tzphx">
                        <ul>
                            <li class="tzphx1">排行</li>
                            <li class="tzphx2">姓名</li>
                            <li class="tzphx3">投资金额</li>
                        </ul>
                        <ul>
                            <li class="tzphx1 ph_bj">1</li>
                            <li class="tzphx2 tzphx2_1">j***8</li>
                            <li class="tzphx3">￥290,000.00</li>
                        </ul>
                        <ul>
                            <li class="tzphx1 ph_bj">2</li>
                            <li class="tzphx2 tzphx2_1">平***0</li>
                            <li class="tzphx3">￥190,002.00</li>
                        </ul>
                        <ul>
                            <li class="tzphx1 ph_bj">3</li>
                            <li class="tzphx2 tzphx2_1">豆***豆</li>
                            <li class="tzphx3">￥175,500.00</li>
                        </ul>
                        <ul>
                            <li class="tzphx1">4</li>
                            <li class="tzphx2 tzphx2_1">T***8</li>
                            <li class="tzphx3">￥108,600.00</li>
                        </ul>
                    </div>
                </div>
            <div class="hd-g">
                <div class="btf">
                    <div class="apo">
                        互贷公告</div>
                    <div class="agd">
                        <a href="http://www.hudai.com/notice/index.html" target="_blank">更多&gt;&gt;</a></div>
                </div>
                <div class="lvgf">
                    <a href="http://www.hudai.com/notice/lists/36.html" target="_blank" title="iOS手机用户在APP上也可以充值啦！">
                        ·iOS手机用户在APP上也...</a></div>
                <ul>
                    <li><a href="http://www.hudai.com/notice/lists/35.html" target="_blank" title="【互贷活动】朋友圈晒收益就送感恩大礼包！别问为什么，有钱就是这么任性~">
                        ·【互贷活动】朋友圈晒收益...</a></li><li><a href="http://www.hudai.com/notice/lists/34.html"
                            target="_blank" title="互贷活动：后双11，如何满血复活？">·互贷活动：后双11，如何满...</a></li><li><a href="http://www.hudai.com/notice/lists/33.html"
                                target="_blank" title="身份认证系统停机维护升级的通知">·身份认证系统停机维护升级...</a></li><li><a href="http://www.hudai.com/notice/lists/32.html"
                                    target="_blank" title="关于使用平安银行借记卡无法充值的公告">·关于使用平安银行借记卡无...</a></li></ul>
            </div>
            <div class="hd-g">
                <div class="btf">
                    <div class="apo">
                        公司动态</div>
                    <div class="agd">
                        <a href="http://www.hudai.com/dynamic/index.html" target="_blank">更多&gt;&gt;</a></div>
                </div>
                <div class="lvgf">
                    <a href="http://www.hudai.com/dynamic/lists/6.html" target="_blank" title="互贷网荣获“年度P2P平台创新奖”">
                        ·互贷网荣获“年度P2P平台...</a></div>
                <ul>
                    <li><a href="http://www.hudai.com/dynamic/lists/5.html" target="_blank" title="互贷网与上海资信有限公司正式达成战略合作协议">
                        ·互贷网与上海资信有限公司...</a></li><li><a href="http://www.hudai.com/dynamic/lists/4.html"
                            target="_blank" title="互贷网正式成为上海市信息服务业行业协会会员">·互贷网正式成为上海市信息...</a></li><li><a href="http://www.hudai.com/dynamic/lists/3.html"
                                target="_blank" title="互贷网成为可信网站验证单位">·互贷网成为可信网站验证单...</a></li><li><a href="http://www.hudai.com/dynamic/lists/2.html"
                                    target="_blank" title="恭贺互贷网第一次展会圆满落幕">·恭贺互贷网第一次展会圆满...</a></li></ul>
            </div>
        </div>
        <!--包含子导航文件开始-->
        <!--底部微信-->
        <div class="fotwq">
            <ul>
                <li><a href="http://www.hudai.com/">首&nbsp;&nbsp;&nbsp; 页</a></li><li><a href="http://www.hudai.com/loan/loan.html">
                    我要投资</a></li><li><a href="http://www.hudai.com/borrow/borrow.html">我要融资</a></li><li>
                        <a href="http://www.hudai.com/user/index.html">我的账户</a></li></ul>
            <div class="wangz">
                <a href="http://weibo.com/huxinjinrong" target="_blank">http://weib.com/huxinjinrong</a></div>
        </div>
        <!--底部微信-->
        <!--安全保障-->
        <div class="aqdb">
            <dl>
                <dt>安全保障</dt><dd><a href="http://www.hudai.com/safety/guarantee.html" target="_blank">本息保障</a></dd><dd><a
                    href="http://www.hudai.com/safety/transaction.html" target="_blank">服务协议</a></dd><dd><a
                        href="http://www.hudai.com/safety/privacy.html" target="_blank">隐私协议</a></dd><dd><a
                            href="http://www.hudai.com/safety/agreement.html" target="_blank">借款协议</a></dd></dl>
            <dl>
                <dt>平台原理</dt><dd><a href="http://www.hudai.com/theory/policy.html" target="_blank">法律政策</a></dd><dd><a
                    href="http://www.hudai.com/theory/principle.html" target="_blank">运营模式</a></dd><dd><a
                        href="http://www.hudai.com/theory/lifei.html" target="_blank">资费介绍</a></dd><dd><a
                            href="http://www.hudai.com/theory/principle.html" target="_blank">平台原理</a></dd></dl>
            <dl>
                <dt>帮助中心</dt><dd><a href="http://www.hudai.com/faq/index.html" target="_blank">常见问题</a></dd><dd><a
                    href="http://www.hudai.com/help/service.html" target="_blank">客服中心</a></dd><dd><a
                        href="http://www.hudai.com/help/calculator.html" target="_blank">利息计算器</a></dd><dd><a
                            href="javascript:void(0);" target="_blank">网站地图</a></dd></dl>
            <dl>
                <dt>关于互贷</dt><dd><a href="http://www.hudai.com/about/intro.html" target="_blank">公司简介</a></dd><dd><a
                    href="http://www.hudai.com/about/license.html" target="_blank">公司证照</a></dd><dd><a
                        href="http://www.hudai.com/about/contact.html" target="_blank">联系我们</a></dd><dd><a
                            href="http://www.hudai.com/about/hezuo.html" target="_blank">市场合作</a></dd></dl>
            <dl class="ave">
                <dt class="cu">全国投资热线</dt><dd class="cus">
                    400-6016-187</dd><dd class="cuu">
                        周一到周五9:00-18:00</dd><dd class="cuu">
                            投诉建议</dd><dd class="cuu">
                                hirain@16.com</dd></dl>
        </div>
        <!--安全保障-->
        <!--包含子导航文件结束-->
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
        上海互信金融信息服务有限公司 版权所有 2011-2014<br>
        Copyright Reserved 2011-2013 © 互贷网（www.hudai.com）| 沪ICP备13031150号
    </div>
    <div class="db-f">
        <ul style="width: 580px;">
            <li><a href="https://ss.knet.cn/verifyseal.dll?sn=e13102511010043055ctbz000000&amp;ct=df&amp;a=1&amp;pa=0.4563455229813702"
                target="_blank">
                <img src="images/kexin.png"></a></li><li>
                    <a href="http://www.miibeian.gov.cn/" target="_blank">
                        <img src="images/beian.png"></a></li><li>
                            <a href="http://www.zx110.org/" target="_blank">
                                <img src="images/wangluo.png"></a></li><li>
                                    <a href="http://www.sgs.gov.cn/lz/licenseLink.do?method=licenceView&amp;entyId=20131017141114973"
                                        target="_blank">
                                        <img src="images/hui.png"></a></li><li>
                                            <a id="A2">
                                                <iframe style="border: 0px none; z-index: 9999; background-color: transparent;" bottom="0"
                                                    border="0" allowtransparency="true" marginheight="0" marginwidth="0" scrolling="no"
                                                    src="%E7%90%86%E8%B4%A2%E4%B8%93%E5%AE%B6%EF%BC%81_files/p2p_bottomimagesmall.htm"
                                                    id="Iframe1" frameborder="0" height="50px" width="120px">
                                                </iframe>
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
        <a href="#" target="_blank">
            <img src="images/Appma.png" alt="APP二维码"></a></div>
    <div id="Div9" style="margin-top: 150px;">
        <a href="javascript:void" onclick="javascript:window.open('http://b.qq.com/webc.htm?new=0&amp;sid=4006016187&amp;eid=218808P8z8p8p8K8y8y8Q&amp;o=www.hudai.com&amp;q=7&amp;ref='+document.location, '_blank', 'height=544, width=644,toolbar=no,scrollbars=no,menubar=no,status=no');">
            <img src="images/kefu_01.png"></a></div>
</body>
</html>


