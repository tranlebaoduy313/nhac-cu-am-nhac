<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master.Master" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="WebNhacCu.KhachHang.ChiTietSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" Width="100%">
        <ItemTemplate>
                <div class="image" style="width:49.25% ; float: left; margin-top:10px" >
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/images/" +  Eval("HinhAnh") %>' Height="700px"  Width="100%" />
                </div>

                <div class="info" style="width:50% ; float: right; margin-top:100px ; height: 200px">
                    <asp:Label ID="Label1" runat="server" Text="Tên sản phẩm: " Font-Bold="False" Font-Size="30px"></asp:Label>
                    <asp:Label ID="lbl_tenMH" runat="server" Text='<%# Eval("TenMH") %>' Font-Bold="True" Font-Size="30px"></asp:Label>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("MoTa") %>' Font-Size="30px"></asp:Label>
                    <br />
                    <b style="color: red; font-size : 30px">
                        <asp:Label ID="Label2" runat="server" Text="Giá : "></asp:Label>
                        <asp:Label ID="lbl_gia" runat="server" Text='<%# Eval("Gia") + " VNĐ"  %>'></asp:Label>
                    </b>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Số Lượng : " Font-Size="30px"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="56px"></asp:TextBox>
                    <asp:Button ID="Button_mua" runat="server" Text="ĐẶT MUA" CommandArgument='<%# Eval("MaMH") %>' OnClick="Button_mua_Click" />
                    <asp:Button ID="Button_xem" runat="server" Text="XEM GIỎ HÀNG" />
                </div>
                
                <div class="sp" style="width:50% ; float: right ">
                    <asp:Label ID="Label5" runat="server" Text="Đánh Giá" Font-Bold="False" Font-Size="30px"></asp:Label>
                    
                </div>

        </ItemTemplate>
    </asp:DataList>
   
</asp:Content>
