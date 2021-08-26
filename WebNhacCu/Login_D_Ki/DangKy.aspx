<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master.Master" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="WebNhacCu.Login_D_Ki.DangKy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../css/DangKyCSS.css" rel="stylesheet" />
    <div id="container">
        <div class="content" style="border-top: 0.1px solid #FFFF00">
            <div id="main">
            <h1>Đăng Ký</h1>
            <p>Username</p>
            <asp:TextBox class="txt" ID="TextBox1" runat="server" Font-Names="Cambria" ForeColor="White"></asp:TextBox>
            <p>Password</p>
            <asp:TextBox class="txt" ID="TextBox2" runat="server" TextMode="Password" ForeColor="White"></asp:TextBox>
             <p>Họ và Tên</p>
            <asp:TextBox class="txt" ID="TextBox3" runat="server" Font-Names="Cambria" ForeColor="White"></asp:TextBox>
            <p>Số Điện Thoại</p>
            <asp:TextBox class="txt" ID="TextBox4" runat="server" Font-Names="Cambria" onkeypress="return isNumberKey(event)" ForeColor="White"></asp:TextBox>
            <p>Địa Chỉ</p>
            <asp:TextBox class="txt" ID="TextBox5" runat="server" Font-Names="Cambria" ForeColor="White"></asp:TextBox>

            <!--script-->
                <script>
                    function isNumberKey(evt)
                    {
                        var charCode = (evt.which) ? evt.which : evt.keyCode;
                        if (charCode > 31 && (charCode < 48 || charCode > 57))
                            return false;
                        return true;
                    }
                </script>

            <br />
            <div id="DangKy">
                <asp:Button ID="Button1" runat="server" Text="Đăng Ký" BackColor="#CC3300" BorderStyle="None" Font-Bold="True" Font-Names="Cambria" Font-Size="18px" Height="36px" Width="244px" OnClick="Button1_Click"   />
            </div>
            <br>
            <div class="title" style="font-weight:bold; color:red">
                <asp:Label ID="Label1" runat="server" Text=" " ></asp:Label>
            </div>
        </div>
        </div>
    </div>
</asp:Content>
