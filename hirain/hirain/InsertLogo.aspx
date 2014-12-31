<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InsertLogo.aspx.cs" Inherits="hirain.InsertLogo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <br/>
    <div id="dd1" style ="text-align :center">
     <span>日志内容</span> 
        <asp:TextBox ID="txtDetails" runat="server" 
            TextMode="MultiLine" Height="112px" Width="469px"></asp:TextBox>
     
        <br />
        <br />
     
        <br />
        <asp:Button ID="btnInsert" runat="server" BackColor="#FFCC66" 
            ForeColor="#0033CC" onclick="btnInsert_Click" Text="发表" Width="94px" />
        <br />
     
    </div>
    

    </form>
    

</asp:Content>
