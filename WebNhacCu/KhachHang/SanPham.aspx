<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="WebNhacCu.KhachHang.SanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:DataList ID="DataList1" runat="server"  Text-aline="center" RepeatColumns="4" BackColor="white" BorderStyle="None" CellPadding="20" Height="100px" Style="margin-right: 0px; margin-top: 2px" Width="100px" ForeColor="Black" justify-content="center" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" CellSpacing="20" BorderWidth="1px">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" BorderStyle="Solid" />
            <ItemTemplate>
                <!--Phan hinh anh san pham-->
                <div class="image">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/images/" + Eval("HinhAnh") %>' Width="300px" Height="250px"/>
                </div>
                <!--Phan ten san pham-->
                <div class="Ten" style="text-align:center">
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenMH") %>' Font-Bold="True"></asp:Label>
                </div>
                <!--Phan gia san pham-->
                <div class="gia" style="text-align:center; color: orangered; font-size: 18px">
                    <asp:Label ID="Label2" runat="server" Text='<%# "Giá: " +  Eval("Gia") %>'></asp:Label>
                </div>
                <!--Phan ;ink chi tiet san pham-->
                <div class="link" style="text-align:center">
                    <asp:LinkButton ID="LinkButton1" runat="server" style="text-decoration: none; font-size:20px" CommandArgument='<%# Eval("TenMH") %>' OnClick="LinkButton1_Click" Text='<%# Eval("TenMH") %>'></asp:LinkButton>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
