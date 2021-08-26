<%@ Page Title="" Language="C#" MasterPageFile="~/Master/AdminMaster.Master" AutoEventWireup="true" CodeBehind="SanPhamAD.aspx.cs" Inherits="WebNhacCu.Admin.SanPhamAD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="sanpham" style="width: 100%"></div>
    <div class="mainsp" style="width: 35%; background-color: aliceblue; padding-top: 50px; float: left; padding-left: 50px; padding-bottom: 50px" >
        <asp:Table ID="Table1" runat="server">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"><asp:Label ID="Label1" runat="server" Text="Mã Loại Hàng"  Width="200px" Font-Size="25px"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server"><asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="350px"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"><asp:Label ID="Label2" runat="server" Text="Tên Loại Hàng" Width="200px" Font-Size="25px"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server"><asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="350px"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"><asp:Label ID="Label3" runat="server" Text="Mã Mặt Hàng" Width="200px" Font-Size="25px"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server"><asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="350px"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"><asp:Label ID="Label4" runat="server" Text="Ten Mặt Hàng" Width="200px" Font-Size="25px"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server"><asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="350px"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"><asp:Label ID="Label5" runat="server" Text="Mô Tả" Width="200px" Font-Size="25px"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server"><asp:TextBox ID="TextBox4" runat="server" Height="200px" TextMode="MultiLine" Width="350px"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"><asp:Label ID="Label6" runat="server" Text="Giá" Width="200px" Font-Size="25px"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server"><asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="350px"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"><asp:Label ID="Label7" runat="server" Text="Hình Ảnh" Width="200px" Font-Size="25px"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server"><asp:Button ID="Button1" runat="server" Text="Chọn file" Font-Size="25px" /></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
    <div class="hienthi" style="border: #808080 solid 2px; width: 62%; float: right; height: 550px">
        <div style="text-align: center ; margin-top: 20px;"><asp:Label ID="Label8" runat="server" Text="Label" Font-Size="30px" ForeColor="Red"></asp:Label></div>
        <div class="ima" style="border: #000000 solid 2px; width: 300px; height: 400px ; margin-top: 25px; margin-left: 50px; background-color:aliceblue ; float: left"></div>
        <div style="float: left; border: #000000 solid 2px; width: 730px; height: 400px ; margin-top: 25px; margin-left: 50px">
            <div style="margin-left: 50px; margin-top: 25px">
                <asp:Table ID="Table2" runat="server">
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server"><p style="margin-right: 50px">Mã Loại</p></asp:TableCell>
                        <asp:TableCell runat="server"><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server"><p style="margin-right: 50px">Tên Loại</p></asp:TableCell>
                        <asp:TableCell runat="server"><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server"><p style="margin-right: 50px">Mã Sản Phẩm</p></asp:TableCell>
                        <asp:TableCell runat="server"><asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server"><p style="margin-right: 50px">Tên Sản Phẩm</p></asp:TableCell>
                        <asp:TableCell runat="server"><asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server"><p style="margin-right: 50px">Mô Tả Sản Phẩm</p></asp:TableCell>
                        <asp:TableCell runat="server"><asp:TextBox ID="TextBox11" runat="server" TextMode="MultiLine"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server"><p style="margin-right: 50px">Đơn Giá Sản Phẩm</p></asp:TableCell>
                        <asp:TableCell runat="server"><asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </div>
    </div>
    <div class="button" style="width: 100%; padding-top: 580px; text-align: center">
        <asp:Button ID="Button2" runat="server" Text="Thêm" Width="80px" Height="30px" BackColor="#3399FF" OnClick="Button2_Click"  />&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
        <asp:Button ID="Button3" runat="server" Text="Sửa" Width="80px" Height="30px" BackColor="#3399FF"  />&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
        <asp:Button ID="Button4" runat="server" Text="Xóa" Width="80px" Height="30px"  BackColor="#3399FF" OnClick="Button4_Click" />
    </div>
</asp:Content>
