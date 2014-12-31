<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="fangchandiya.aspx.cs" Inherits="hirain.fangchandiya" %>

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
        .d
        {
            width: 1127px;
            height: 1270px;
            margin-top: 20px;
            margin-left: auto;
            margin-right: auto;
        }
        .ds
        {
            width: 673px;
            height: 788px;
            margin-top: 20px;
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <ul class="breadcrumb">
            <li class="active">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
                href="fangchandiya.aspx">房产抵押贷款</a> <span class="divider">/</span> </li>
            <li><a href="gerenxinxi.aspx">个人信用贷款</a> <span class="divider">/</span> </li>
            <li><a href="qiyejinying.aspx">企业经营贷款</a> <span class="divider">/</span> </li>
            <li><a href="zhumengbao.aspx">筑梦宝</a> <span class="divider">/</span> </li>
            <li><a href="zhumengbao.aspx">银行产品</a> <span class="divider">/</span> </li>
        </ul>
    </div>
    <br/>
    <div class="d">
        <h3>房产抵押贷款</h3>
        <form id="Form1" runat="server" enctype="multipart/form-data">
        <div class="ds">
        项目名称&nbsp;&nbsp;
        <asp:TextBox ID="postTitle" runat="server"></asp:TextBox>
        <br />
        项目金额&nbsp;&nbsp;
        <asp:TextBox ID="praise" runat="server"></asp:TextBox>
        <span >
        <br />
        借款人：</span>
        <asp:TextBox ID="LoanName" runat="server" CssClass="text_box"></asp:TextBox>
        <span >
        <br />
        年&nbsp; 龄：</span>
        <asp:TextBox ID="LoanAge" runat="server"></asp:TextBox>
        <br />
        <span>婚姻状况:<br />
            </span>
           &nbsp;<asp:RadioButton ID="Marry0" runat="server"  Text="已婚" Checked="true" GroupName="marry"/>
            <asp:RadioButton ID="Marry1" runat="server"  Text="未婚"  GroupName="marry"/>
        &nbsp;&nbsp;<br />
&nbsp;<span>是否是法人：<br />
            </span>
            &nbsp;<asp:RadioButton ID="faren0" runat="server"  Text="是" Checked="true" GroupName="faren"/>
            <asp:RadioButton ID="faren1" runat="server"  Text="否"  GroupName="faren"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp; 工作收入情况<asp:TextBox ID="income" runat="server"></asp:TextBox>
        <span class="name">
        <br />
        负债情况</span>
        <asp:TextBox ID="fuzhai" runat="server"></asp:TextBox>
        <br />
        <span>&nbsp; 项目介绍</span>：<asp:TextBox ID="Project_Procedure" runat="server" Height="87px"
            TextMode="MultiLine" Width="399px"></asp:TextBox>
        <br />
        <span>&nbsp; 还款流程</span>：<asp:TextBox ID="repayment" runat="server" Height="87px"
            TextMode="MultiLine" Width="399px"></asp:TextBox>
        <br />
        
        <p>
            抵押物品信息</p>
        <span class="name">小区名称</span>
        <asp:TextBox ID="communityName" runat="server"></asp:TextBox>
        <span >
        <br />
        建成年代</span>
        <asp:TextBox ID="buildtime" runat="server"></asp:TextBox>
        <span>
        <br />
        楼&nbsp;&nbsp; 层</span>
        <asp:TextBox ID="floor" runat="server"></asp:TextBox>
        <span >
        <br />
        朝&nbsp;&nbsp; 向</span>
        <asp:TextBox ID="direction" runat="server"></asp:TextBox>
        <span >
        <br />
        面&nbsp;&nbsp; 积</span>
        <asp:TextBox ID="area" runat="server"></asp:TextBox>
        <br />
        <span>是否全款：</span>&nbsp;<br />
            &nbsp;&nbsp;
            <asp:RadioButton ID="fullmoney0" runat="server"  Text="是" Checked="true" GroupName="fullmoney"/>
            <asp:RadioButton ID="fullmoney1" runat="server"  Text="否"  GroupName="fullmoney"/>
      
        &nbsp;&nbsp;<br />
&nbsp;<span >用&nbsp;&nbsp; 途</span>
        <asp:TextBox ID="purpose" runat="server"></asp:TextBox>
        <span >
        <br />
        还款来源:</span>
        <asp:TextBox ID="moneysource" runat="server" TextMode="MultiLine" Height="87px" 
            Width="386px"></asp:TextBox>
        <br />
        <p>
            材料清单上传</p>
        <p>
            <asp:FileUpload ID="File1" runat="server" />&nbsp;
        </p>
        <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="提　交" OnClick="btnSubmit_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="返    回" OnClick="btnSubmit_Click1" />
             </div>
        </form>
       
    </div>
</asp:Content>
