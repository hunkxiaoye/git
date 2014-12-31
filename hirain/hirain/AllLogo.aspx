<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AllLogo.aspx.cs" Inherits="hirain.AllLogo" %>
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
      width: 600px;
     margin-top: 20px;
     margin-left: auto;
     margin-right: auto;
     text-align :center 
    
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
    <form id ="f1" runat = "Server">
    <div class="d">
        <h4>最新日志</h4>
    <asp:GridView ID="GridView1" runat="server" Width="595px" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" 
            BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
            GridLines="Horizontal" onrowcommand="GridView1_RowCommand">
        <Columns>
            <asp:BoundField DataField="UserName" HeaderText="用户名" />
            <asp:BoundField DataField="Details" HeaderText="日志内容" />
            <asp:BoundField DataField="DianZan" HeaderText="点赞次数" />
           
            <asp:TemplateField HeaderText="点赞">
                 <ItemTemplate> 
                <asp:Button runat="server" Text="点赞"  CommandName="zan"  CommandArgument ='<%#Eval("LogoId") %>'  /> 
                 </ItemTemplate>
            </asp:TemplateField>
            </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
    
    </div>
    
    </form>
</asp:Content>
