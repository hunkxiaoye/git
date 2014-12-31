<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Project_Info.aspx.cs" Inherits="hirain.Project_Info" %>
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
    width: 1048px;
  <%-- height: 446px;--%>
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
     <form id="form1" runat="server">
     <div class="d">
     <br/>
     <span>已审核项目投资</span>  <br/>
     <asp:GridView ID="GridView1" runat="server" Height="137px" Width="1046px" 
             AutoGenerateColumns="False" ForeColor="#333333" 
             GridLines="None" AllowPaging="True" 
             onpageindexchanging="GridView1_PageIndexChanging" PageSize="8" 
             CellPadding="4" 
             onselectedindexchanged="GridView1_SelectedIndexChanged">
         <AlternatingRowStyle BackColor="White" />
         <Columns>
             <asp:TemplateField HeaderText="项目名称">
             <ItemTemplate> <a href ='ProjectDetails.aspx?id=<%#Eval("Id")%>'>  <%#Eval("Project_Title")%> </a></ItemTemplate>
             </asp:TemplateField>
             <asp:BoundField DataField="Project_Procedures" HeaderText="项目介绍" />
             <asp:BoundField DataField="praise" HeaderText="项目金额" />
             <asp:BoundField DataField="Repayment" HeaderText="还款流程" />
             <asp:BoundField DataField="State" HeaderText="审核状态" />
             <asp:BoundField DataField="StartTime" HeaderText="起始时间" />
             <asp:BoundField DataField="EndTime" HeaderText="结束时间" />
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
         <br />
         <span>未通过审核的发起项目</span>  <br/>
         <asp:GridView ID="GridView3" runat="server" CellPadding="4" ForeColor="#333333" 
             GridLines="None" Height="123px" Width="1045px" AutoGenerateColumns="False" 
             PageSize="5">
             <AlternatingRowStyle BackColor="White" />
             <Columns>
                 <asp:TemplateField HeaderText="项目名称">
                 <ItemTemplate> <a href ='ProjeAdvice.aspx?id=<%#Eval("Id")%>'> <%#Eval("Project_Title")%> </a></ItemTemplate>
                 </asp:TemplateField>
                 <asp:BoundField DataField="Project_Procedures" HeaderText="项目介绍" />
                 <asp:BoundField DataField="praise" HeaderText="项目金额" />
                 <asp:BoundField DataField="Repayment" HeaderText="还款流程" />
                 <asp:BoundField DataField="StartTime" HeaderText="起始时间" />
                 <asp:BoundField DataField="EndTime" HeaderText="结束时间" />
                 <asp:BoundField DataField="NewEndTime" HeaderText="延迟时间" />
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
         <br />
         <br />
         <br/>
        <span>我投过的项目</span>   <br/>
         <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
             CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" 
             onpageindexchanging="GridView2_PageIndexChanging" PageSize="8" 
             Width="1045px">
             <AlternatingRowStyle BackColor="White" />
             <Columns>
                 <asp:TemplateField HeaderText="项目名称">
                     <ItemTemplate> <a href ='ProjectDetails.aspx?id=<%#Eval("Id")%>'>  <%#Eval("Project_Title")%> </a></ItemTemplate>
                 </asp:TemplateField>
                 <asp:BoundField DataField="Project_Procedures" HeaderText="项目介绍" />
                 <asp:BoundField DataField="praise" HeaderText="项目金额" />
                 <asp:BoundField DataField="Repayment" HeaderText="还款流程" />
                 <asp:BoundField DataField="StartTime" HeaderText="起始时间" />
                 <asp:BoundField DataField="EndTime" HeaderText="结束时间" />
                 <asp:BoundField DataField="NewEndTime" HeaderText="延迟时间" /> 
                 <asp:BoundField DataField="UserName" HeaderText="发起人" />
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
         <br/>
       <a href="fangchandiya.aspx"class="btn btn-primary">我要发布</a>
         <br />
     </div>
     </form>
</asp:Content>
