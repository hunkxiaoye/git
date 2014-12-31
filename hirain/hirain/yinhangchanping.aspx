<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="yinhangchanping.aspx.cs" Inherits="hirain.yinhangchanping" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
    width: 1207px;
    height: 512px;
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="span12">
			<ul class="breadcrumb">
				<li >
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="fangchandiya.aspx">房产抵押贷款</a> <span class="divider">/</span>
				</li>
				<li>
					<a href="gerenxinxi.aspx">个人信用贷款</a> <span class="divider">/</span>
				</li>
                <li >
					<a href="qiyejinying.aspx">企业经营贷款</a> <span class="divider">/</span>
				</li>
                <li>
					<a href="zhumengbao.aspx">筑梦宝</a> <span class="divider">/</span>
				</li>
				<li class="active">
					<a href="zhumengbao.aspx">银行产品</a> <span class="divider">/</span>
				</li>
			</ul>
		</div>
</asp:Content>
