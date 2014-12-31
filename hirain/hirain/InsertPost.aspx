<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InsertPost.aspx.cs" Inherits="hirain.InsertPost" %>
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
    
    <form id="form1" runat="server">
    
    <div class="d">
        <h3>&nbsp;&nbsp; 项目发布</h3>
        <br/>
            		 <div class="span12">
			<ul class="breadcrumb">
				<li class="active">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="xiangmu/fangchandiya.aspx">房产抵押贷款</a> <span class="divider">/</span>
				</li>
				<li>
					<a href="xiangmu/gerenxinyong.aspx">个人信用贷款</a> <span class="divider">/</span>
				</li>
                <li>
					<a href="xiangmu/qiyejinying.aspx">企业经营贷款</a> <span class="divider">/</span>
				</li>
                <li >
					<a href="xiangmu/zhumengbao.aspx">筑梦宝</a> <span class="divider">/</span>
				</li>
				<li >
					<a href="xiangmu/zhumengbao.aspx">银行产品</a> <span class="divider">/</span>
				</li>
			</ul>
		</div>
        <span>项目名称&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> 
        &nbsp;<br/>

       <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 项目介绍&nbsp; </span> &nbsp;<asp:TextBox ID="jieshao" runat="server" Height="163px" TextMode="MultiLine" 
            Width="410px"></asp:TextBox>
            <br />
        <asp:Label ID="Label1" runat="server" Text="项目金额 ："></asp:Label> &nbsp;<asp:TextBox ID="jine" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <br/>
            <span>债券转让及还款流程&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox2" runat="server" Height="160px" TextMode="MultiLine" 
            Width="310px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
       
    
        <br />
       
    
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="审核" 
            onclick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="重置" 
            onclick="Button2_Click" />
        <br />
       
    
    </div>
    

    </form>
    

</asp:Content>
