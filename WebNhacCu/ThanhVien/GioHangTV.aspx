<%@ Page Title="" Language="C#" MasterPageFile="~/Master/ThanhVienMaster.Master" AutoEventWireup="true" CodeBehind="GioHangTV.aspx.cs" Inherits="WebNhacCu.ThanhVien.GioHangTV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div class="sp" style="width: 50%; margin-top: 30px; margin-left: 30px; margin-bottom: 50px; float: left">
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="Black" GridLines="None" ShowFooter="True" Width="100%" AutoGenerateColumns="False" BackColor="Yellow">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Ảnh mặt hàng" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("HinhAnh") %>' Width="200px" Height="200px" />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:TemplateField>
                    <asp:BoundField DataField="MaMH" HeaderText="Mã mặt hàng" ItemStyle-HorizontalAlign="Center">
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="TenMH" HeaderText="Tên mặt hàng" ItemStyle-HorizontalAlign="Center">
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Gia" HeaderText="Đơn Giá" ItemStyle-HorizontalAlign="Center">
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" ItemStyle-HorizontalAlign="Center" >
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="Chọn" ItemStyle-HorizontalAlign="Center">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:Button ID="btn_trahang" runat="server" Text="Xóa khỏi giỏ hàng" OnClick="btn_trahang_Click" BorderStyle="None" BackColor="#FFCC00" Font-Bold="true" Font-Size="20px" Font-Names="Cambaria"/>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </ItemTemplate>

                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#FFCC00" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#FFFF99" Font-Bold="True" ForeColor="Black" />
                <PagerStyle BackColor="#3399FF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
        <div class="hoadon" style="width: 30%; float: left; height: 300px; border: #808080 solid 2px ; margin-top: 30px; margin-left: 30px; margin-right: 30px">
            <h1 style="text-align: center; font-size: 50px">TỔNG HÓA ĐƠN</h1>
            <div style="font-size: 30px; color: brown; margin-left: 50px">Thành Tiền : <asp:Label ID="Label1" runat="server" Text=""></asp:Label> VNĐ</div>
            <div style="float: right; margin-right: 100px; margin-top: 50px"><asp:Button ID="Button1" runat="server" Text="Mua Hàng" BackColor="#0099FF" Font-Bold="True" Font-Size="20px" Height="40px" Width="140px" OnClick="Button1_Click" /></div>
        </div>
        <div class="giohang" style="width:100%; padding-bottom: 50px; padding-top: 20px; text-align: center;">
            <asp:Label ID="Label2" runat="server" Text="" Font-Size="30px" Width="100%" ForeColor="#CC0000"></asp:Label>
        </div>
    
</asp:Content>
