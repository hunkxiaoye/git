<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProjeAdvice.aspx.cs" Inherits="hirain.ProjeAdvice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div id="d1 " style =" text-align :center ">
        <br />
        发起人：&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtUserName" runat="server" ReadOnly="True"  ></asp:TextBox>
       <br />
        项目状态： 
        <asp:TextBox ID="txtStats" runat="server"  ></asp:TextBox>
        
        <br />
        项目名称： 
        <asp:TextBox ID="txtTitle" runat="server"  ></asp:TextBox>
        
        <br />
        起始时间：<asp:TextBox 
            ID="txtStarttime" runat="server"  ></asp:TextBox>
        <br />
        结束时间：<asp:TextBox 
            ID="txtEndtime" runat="server"  ></asp:TextBox>
        <br />
        延迟时间：<asp:TextBox 
            ID="txtdelay" runat="server"  ></asp:TextBox>
        <br />
        项目金额：<asp:TextBox 
            ID="txtMoney" runat="server"  ></asp:TextBox>
        
        <br />
       &nbsp;&nbsp; 项目介绍： 
        <asp:TextBox ID="txtProcedure" runat="server"  TextMode="MultiLine" 
            Height="114px" Width="378px" ></asp:TextBox>
        <br />
       &nbsp;&nbsp;&nbsp; 风控流程：<asp:TextBox ID="txtRisk" runat="server"  TextMode="MultiLine" 
            Height="108px" Width="380px" ></asp:TextBox>
        <br />
        &nbsp;&nbsp;
        偿还流程：&nbsp; <asp:TextBox 
            ID="txtRepay" runat="server"  TextMode="MultiLine" Height="104px" 
            Width="383px" ></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;
        法律条文：<asp:TextBox 
            ID="txtLaw" runat="server" TextMode="MultiLine" Height="110px" 
            Width="388px" ></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        办理流程：<asp:TextBox ID="txtBanli" runat="server"  TextMode="MultiLine" 
            Height="87px" Width="399px" ></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        改进建议：<asp:TextBox ID="txtAdvice" runat="server"  TextMode="MultiLine" 
            Height="87px" Width="399px" ReadOnly="True" ></asp:TextBox>
        <br />
          <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="确认更改" />
        <br /> 
    </div>
    </form>
</asp:Content>
