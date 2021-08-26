<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master.Master" AutoEventWireup="true" CodeBehind="LoGin.aspx.cs" Inherits="WebNhacCu.Login_D_Ki.LoGin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../css/LoGinCSS.css" rel="stylesheet" />
    <div class="content" style="border:3px solid " >
        <div id="main">
            <h1>Login</h1>
            <p>Username</p>
            <asp:TextBox class="txt" ID="TextBox1" runat="server" Font-Names="Cambria" ForeColor="White"></asp:TextBox>
            <p>Password</p>
            <asp:TextBox class="txt" ID="TextBox2" runat="server" TextMode="Password" ForeColor="White"></asp:TextBox>
            <br>
            <div id="login">
                <asp:Button ID="Button2" CausesValidation="false" runat="server" Text="Login" BackColor="#CC3300" BorderStyle="None" Font-Bold="True" Font-Names="Cambria" Font-Size="18px" Height="36px" Width="122px" OnClick="Button2_Click" />
                
                <div class ="DangKy">
                    <a href="../Login_D_Ki/DangKy.aspx" style="text-decoration: none ; color: black;">
                        <p>Đăng Ký</p>
                    </a>
                </div>
            </div>
            <div class="QMK"><a href="../Login_D_Ki/QuenMatKhau.aspx" style="text-decoration:none"><span class="qmk">Quên mật khẩu</span></a></div>
            <br>
            <div class="title" style="font-weight:bold; color:red">
                <asp:Label ID="Label1" runat="server" Text=" " ></asp:Label>
            </div>
        </div>
   </div>
</asp:Content>
