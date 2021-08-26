<%@ Page Title="" Language="C#" MasterPageFile="~/Master/AdminMaster.Master" AutoEventWireup="true" CodeBehind="TrangChuAD.aspx.cs" Inherits="WebNhacCu.Admin.TrangChuAD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-top: 50px; margin-left: 50px; width: 50%; height: 200px">
        <asp:Label ID="Label1" runat="server" Text="Chưa Có Đơn Hàng Nào Chờ Xác Nhận" Font-Size="50px" ForeColor="Red"></asp:Label>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Mã Đơn Hàng" Width="200px" Height="40px" Font-Size="30px"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br />
            <asp:Button ID="Button1" runat="server" Text="Xác Nhận Đơn Hàng" Width="175px" Height="40px" /><br /><br />
            <asp:Button ID="Button2" runat="server" Text="Xác Nhận Tất Cả"  Width="175px" Height="40px"/>
        </div>
    </div>
    <div></div>
</asp:Content>
