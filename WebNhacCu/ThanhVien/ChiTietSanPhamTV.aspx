<%@ Page Title="" Language="C#" MasterPageFile="~/Master/ThanhVienMaster.Master" AutoEventWireup="true" CodeBehind="ChiTietSanPhamTV.aspx.cs" Inherits="WebNhacCu.ThanhVien.ChiTietSanPhamTV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" Width="100%">
        <ItemTemplate>
                <div class="image" style="width:49.25% ; float: left; margin-top:10px" >
                    <asp:Image ID="img_hinh" runat="server" ImageUrl='<%# "~/images/" +  Eval("HinhAnh") %>' Height="700px"  Width="100%" />
                </div>

                <div class="info" style="width:50% ; float: right; margin-top:100px ; height: 200px">
                    <asp:Label ID="Label1" runat="server" Text="Tên sản phẩm: " Font-Bold="False" Font-Size="30px"></asp:Label>
                    <asp:Label ID="lbl_tenMH" runat="server" Text='<%# Eval("TenMH") %>' Font-Bold="True" Font-Size="30px"></asp:Label>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("MoTa") %>' Font-Size="30px"></asp:Label>
                    <br />
                    <b style="color: red; font-size : 30px">
                        <asp:Label ID="Label2" runat="server" Text="Giá : "></asp:Label>
                        <asp:Label ID="lbl_dongia" runat="server" Text='<%# Eval("Gia")%>'></asp:Label>&ensp;VNĐ
                    </b>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Số Lượng : " Font-Size="30px"></asp:Label>&emsp;
                    <asp:TextBox ID="txt_soluong" runat="server" Height="18px" Width="56px"></asp:TextBox>&emsp;
                    <asp:Button ID="Button_mua" runat="server" Text="ĐẶT MUA" CommandArgument='<%# Eval("MaMH") %>' OnClick="Button_mua_Click" />&emsp;
                    <asp:Button ID="Button_xem" runat="server" Text="XEM GIỎ HÀNG" />
                </div>
                
                <div class="sp" style="width:50% ; float: right ">
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Đánh Giá" Font-Bold="False" Font-Size="30px"></asp:Label>
                </div>

        </ItemTemplate>
    </asp:DataList>
</asp:Content>
