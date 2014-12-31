<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowLogo.aspx.cs" Inherits="hirain.ShowLogo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
     #d1 {
     width: 600px;
     margin-top: 20px;
     margin-left: auto;
     margin-right: auto;
     text-align :center 
         }  
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <br/>
   <div  id="d1">
   <h4>我发表的日志：</h4>
        <asp:GridView ID="GridView1" runat="server" Width="627px" 
           AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
           BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
           Height="250px" >
            <Columns>
                <asp:BoundField DataField="details" HeaderText="说说内容" />
                <asp:BoundField DataField="dianzan" HeaderText="点赞数" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
   </div>
    </form>
</asp:Content>
