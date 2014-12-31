<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InvestShow.aspx.cs" Inherits="hirain.InvestShow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
           .d {
      width: 600px;
     margin-top: 20px;
     margin-left: auto;
     margin-right: auto;
     text-align :center 
}
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d">
        <form runat="server">
    <asp:GridView ID="GridView1" runat="server" Width="595px" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" 
            BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
            GridLines="Horizontal" >
        <Columns>
            <asp:BoundField DataField="Project_Title" HeaderText="项目标题" />
            <asp:BoundField DataField="LoanName" HeaderText="项目发起人" />
            <asp:BoundField DataField="praise" HeaderText="项目金额" />
            <asp:BoundField DataField="shengyumoney" HeaderText="项目剩余金额" />
            <asp:TemplateField HeaderText="投资">
                 <ItemTemplate> 
                <a href ='ProjectInfo.aspx?id=<%#Eval("Id")%>' class="btn  btn-primary"> 投资</a>
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
    </form>
    </div>
</asp:Content>

