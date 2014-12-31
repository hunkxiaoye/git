<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProjectDetails.aspx.cs" Inherits="hirain.ProjectDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
     #d2 {
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
        延迟时间：<asp:TextBox 
            ID="txtdelay" runat="server" ReadOnly ></asp:TextBox>
        <br />
        项目金额：<asp:TextBox 
            ID="txtMoney" runat="server" ReadOnly ></asp:TextBox>
        
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
        <br /> 
    </div>

    <div id="d2">
        <asp:Label ID="Label1" runat="server" Text="投资人："></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" Width="593px" CellPadding="4" 
            ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="owner" HeaderText="投资人" />
                <asp:BoundField DataField="Praise" HeaderText="金额" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        
    </div>

    
    

    </form>
    

 
    

</asp:Content>
