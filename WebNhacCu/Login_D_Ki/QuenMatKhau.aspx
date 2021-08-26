<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master.Master" AutoEventWireup="true" CodeBehind="QuenMatKhau.aspx.cs" Inherits="WebNhacCu.Login_D_Ki.QuenMatKhau" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../css/QuenMatKhau.css" rel="stylesheet" />
    <div id="container">
        <div class="content" style="border-top: 1px solid #FFFF00">
            <div id="main">
                <h1>Quên Mật Khẩu</h1>
                <p>Username</p>
                <asp:TextBox class="txt" ID="TextBox1" runat="server" Font-Names="Cambria"></asp:TextBox>
                <p>Số điện thoại</p>
                <asp:TextBox class="txt" ID="TextBox2" runat="server" Font-Names="Cambria" onkeypress="return isNumberKey(event)"></asp:TextBox>
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
                <div id="QMK">
                    <asp:Button ID="Button1" runat="server" Text="Kiểm Tra" BackColor="#CC3300" BorderStyle="None" Font-Bold="True" Font-Names="Cambria" Font-Size="18px" Height="36px" Width="244px" OnClick="Button1_Click"  />
                </div>
                <br />
                <div class="title" style="font-weight:bold; color:red">
                    <asp:Label ID="Label1" runat="server" Text=" " ></asp:Label>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
