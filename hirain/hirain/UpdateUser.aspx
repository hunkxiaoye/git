<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateUser.aspx.cs" Inherits="hirain.UpdateUser" %>
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
        .register_content {
    width: 800px;
    height: 350px;
    margin-top: 20px;
    margin-left: auto;
    margin-right: auto;
}
.d {
    width: 700px;
    height: 300px;
    margin-top: 20px;
    margin-left: auto;
    margin-right: auto;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="register_content">
                <div class="d">
            <form id="Form1"  runat="server">
                <ul>
                    <li><span class="name">用 户 名：<b>*</b></span><span class="wenben">
                        <asp:Label ID="UserName" runat="server" Text=""></asp:Label>
                    </span></li>
                    <li><span class="name">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 码：<b>*</b></span><span class="wenben">
                        <asp:TextBox ID="PassWord" runat="server"  TextMode="Password"></asp:TextBox>
                    </span></li>
                    <li><span class="name">昵&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 称：<b>*</b></span><span class="wenben">
                        <asp:TextBox ID="NickName"
                        runat="server" ></asp:TextBox>
                    </span></li>                
                    <li><span class="name">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 箱：<b>*</b></span><span class="wenben">
                        <asp:TextBox ID="Email"
                        runat="server" CssClass="password_box"></asp:TextBox>
                    </span></li>
                    <li><span class="name">手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 机：</span><span class="wenben">
                       <asp:TextBox ID="Tel"
                        runat="server" ></asp:TextBox>
                    </span></li>
                    <li><span class="name">Q&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Q：</span><span class="wenben">
                       <asp:TextBox ID="QQ"
                        runat="server" ></asp:TextBox>
                    </span></li>
                    <li><span class="present">
                        <asp:Button ID="btnSubmit" runat="server" class="submit" Text="提　交" OnClick="btnSubmit_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="Button1" runat="server" class="submit" Text="返    回" OnClick="btnSubmit_Click1" />

                    </span></li>
                </ul>
                </form>
                </div>
            </div>
    

</asp:Content>
