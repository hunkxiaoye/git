<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="qiyejinying.aspx.cs" Inherits="hirain.qiyejinying" %>
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
            width: 1087px;
            height: 1597px;
            margin-top: 20px;
            margin-left: auto;
            margin-right: auto;
        }
        .ds
        {
            width: 797px;
            height: 993px;
            margin-top: 20px;
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
        <ul class="breadcrumb">
            <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
                href="fangchandiya.aspx">房产抵押贷款</a> <span class="divider">/</span> </li>
            <li><a href="gerenxinxi.aspx">个人信用贷款</a> <span class="divider">/</span> </li>
            <li class="active"><a href="qiyejinying.aspx">企业经营贷款</a> <span class="divider">/</span> </li>
            <li><a href="zhumengbao.aspx">筑梦宝</a> <span class="divider">/</span> </li>
            <li><a href="zhumengbao.aspx">银行产品</a> <span class="divider">/</span> </li>
        </ul>
    </div>
    <br/>
    <div class="d">
        <h3>企业经营贷款</h3>
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
        <asp:TextBox ID="LoanName" runat="server"></asp:TextBox>
        <span >
        <br />
        法人年龄：</span>
        <asp:TextBox ID="LoanAge" runat="server"></asp:TextBox>
        <br />
        <span>婚姻状况:<br />
            </span>
           &nbsp;<asp:RadioButton ID="Marry0" runat="server"  Text="已婚" Checked="true" GroupName="marry"/>
            <asp:RadioButton ID="Marry1" runat="server"  Text="未婚"  GroupName="marry"/>
        &nbsp;&nbsp;<br />
        <span>公司成立时间</span>
        <asp:TextBox ID="companystarttime" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
         <span>公司注册资金</span>
        <asp:TextBox ID="zhuceziben" runat="server"></asp:TextBox>
        <br/>
         <span>主营业务</span>
        <asp:TextBox ID="zhuyingyewu" runat="server"></asp:TextBox>
        <br/>
         <span>年流水</span>
        <asp:TextBox ID="nianliushui" runat="server"></asp:TextBox>
        <br/>
        <span>年缴税额</span>
        <asp:TextBox ID="niannashui" runat="server"></asp:TextBox>
        <br/>
        <span>企业股东情况</span>
        <asp:TextBox ID="gudongqingkuang" runat="server"></asp:TextBox>
        <br/>
         <span>企业资产</span>
        <asp:TextBox ID="companyassets" runat="server"></asp:TextBox>
        <br/>
        <span >
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
        <span >小区名称/土地证号</span>
        <asp:TextBox ID="communityName" runat="server"></asp:TextBox>
        <span >
        <br />
        建成年代</span>
        <asp:TextBox ID="buildtime" runat="server"></asp:TextBox>
        <span >
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
           <span> 所有权</span>
        <asp:TextBox ID="ownership" runat="server"></asp:TextBox>
        <br />
           <span>  使用年限</span>
        <asp:TextBox ID="useryear" runat="server"></asp:TextBox>
        <br />
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
