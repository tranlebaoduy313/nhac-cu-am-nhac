<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master.Master" AutoEventWireup="true" CodeBehind="DoiMK.aspx.cs" Inherits="WebNhacCu.Login_D_Ki.DoiMK" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../css/DoiMKCSS.css" rel="stylesheet" />
    <div id="container">
        <div class="content" style="border-top: 1px solid #FFFF00">
            <div id="main">
                <h1>Quên Mật Khẩu</h1>
                <p>Username</p>
                <asp:Label ID="Label2" runat="server" ForeColor="#003300"></asp:Label>
                <p>Tạo Mật Khẩu Mới</p>
                <asp:TextBox class="txt" ID="TextBox3" runat="server" TextMode="Password" ForeColor="Black"></asp:TextBox>
                <p>Nhập Lại Mật Khẩu</p>
                <asp:TextBox class="txt" ID="TextBox4" runat="server" TextMode="Password" ForeColor="Black"></asp:TextBox>
                
                
                <script>
                    function isNumberKey(evt) {
                        var charCode = (evt.which) ? evt.which : evt.keyCode;
                        if (charCode > 31 && (charCode < 48 || charCode > 57))
                            return false;
                        return true;
                    }
                </script>
                <br />
                <div id="QMK">
                    <asp:Button ID="Button1" runat="server" Text="Thay Đổi" BackColor="#CC3300" BorderStyle="None" Font-Bold="True" Font-Names="Cambria" Font-Size="18px" Height="36px" Width="244px" OnClick="Button1_Click"   />
                </div>
                <br />
                <div class="title" style="font-weight:bold; color:red">
                    <asp:Label ID="Label1" runat="server" Text=" " ></asp:Label>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
