<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProjectInfo.aspx.cs" Inherits="hirain.ProjectInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
            <div id="d1 " style =" text-align :center ">
        <br />
        发起人：&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtUserName" runat="server" ReadOnly ></asp:TextBox>
       <br />
        项目状态： 
        <asp:TextBox ID="txtStats" runat="server" ReadOnly ></asp:TextBox>
        <br />
        项目名称： 
        <asp:TextBox ID="txtTitle" runat="server" ReadOnly ></asp:TextBox>
        <br />
        起始时间：<asp:TextBox 
            ID="txtStarttime" runat="server" ReadOnly ></asp:TextBox>
        <br />
        结束时间：<asp:TextBox 
            ID="txtEndtime" runat="server" ReadOnly ></asp:TextBox>
        <br />
        项目金额：<asp:TextBox 
            ID="txtMoney" runat="server" ReadOnly ></asp:TextBox>
        <br />
          项目剩余投资额：<asp:TextBox 
            ID="Surplusmoney" runat="server" ReadOnly ></asp:TextBox>
        <br />
       &nbsp;&nbsp; 项目介绍： 
        <asp:TextBox ID="txtProcedure" runat="server" ReadOnly TextMode="MultiLine" 
            Height="114px" Width="378px" ></asp:TextBox>
        <br />
       &nbsp;&nbsp;&nbsp; 风控流程：<asp:TextBox ID="txtRisk" runat="server" ReadOnly TextMode="MultiLine" 
            Height="108px" Width="380px" ></asp:TextBox>
        <br />
        &nbsp;&nbsp;
        偿还流程：&nbsp; <asp:TextBox 
            ID="txtRepay" runat="server" ReadOnly TextMode="MultiLine" Height="104px" 
            Width="383px" ></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;
        法律条文：<asp:TextBox 
            ID="txtLaw" runat="server" ReadOnly TextMode="MultiLine" Height="110px" 
            Width="388px" ></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        办理流程：<asp:TextBox ID="txtBanli" runat="server" ReadOnly TextMode="MultiLine" 
            Height="87px" Width="399px" ></asp:TextBox>
        <br />
        投资金额<asp:TextBox ID="money" runat="server"></asp:TextBox>
        <br/>
        <asp:Button ID="Button1" runat="server"
            Text="确认投资" onclick="Button1_Click" />
    </div>
    </form>
</asp:Content>
