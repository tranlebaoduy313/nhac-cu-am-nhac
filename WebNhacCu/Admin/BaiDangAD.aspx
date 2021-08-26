<%@ Page Title="" Language="C#" MasterPageFile="~/Master/AdminMaster.Master" AutoEventWireup="true" CodeBehind="BaiDangAD.aspx.cs" Inherits="WebNhacCu.Admin.BaiDangAD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="text-align:center; font-size: 50px">Quán Lý Đăng Bài</h1><br />
    <div class="BaiDang" style="padding-left: 40px;padding-bottom: 50px; width: 60%; float: left">
        <asp:Table ID="Table1" runat="server">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"><asp:Label ID="Label1" runat="server" Text="Tiêu Đề" Width="150px" Font-Size="25px"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server" Visible="True"><asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="900px" Height="50px"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"><asp:Label ID="Label2" runat="server" Text="Mô Tả" Width="150px" Font-Size="25px"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server"><asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="900px" Height="50px"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"><asp:Label ID="Label3" runat="server" Text="Nội Dung" Width="150px" Font-Size="25px"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server"><asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="900px" Height="500px"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"><asp:Label ID="Label4" runat="server" Text="Hình Ảnh" Width="150px" Font-Size="25px"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server"><asp:Button ID="Button1" runat="server" Text="Chọn file" Height="40px"/></asp:TableCell>
            </asp:TableRow>

        </asp:Table>
    </div>
    <div class="Rewiew" style="height: 450px; width: 35%;border:#000000 solid 2px ; float: right; margin-right: 40px">
        <div class="tieude" style="text-align: center;font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: 15px">
            <asp:Label ID="Label5" runat="server" Text="Phần tiêu đề"></asp:Label>
        </div>
        <br />
        <div class="noidung" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: 12px">
            &emsp;&emsp;<asp:Label ID="Label6" runat="server" Text="Phần mô tả"></asp:Label>
        </div>
    </div>
    <div class="botom" style="margin-top: 50px; margin-right: 40px; height: 130px; width: 35%;border:#000000 solid 2px ; float: right ">
        <div class="button" style="padding-top: 20px; text-align:center">
            <asp:Button ID="Button2" runat="server" Text="Xem" Height="35px" Width="100px" OnClick="Button2_Click" />&emsp;&emsp;&emsp;&emsp;
            <asp:Button ID="Button3" runat="server" Text="Xóa" Height="35px" Width="100px" OnClick="Button3_Click" />&emsp;&emsp;&emsp;&emsp;
            <asp:Button ID="Button4" runat="server" Text="Thêm" Height="35px" Width="100px" OnClick="Button4_Click" />
        </div>

        <div class="txt" style="padding-top: 20px; text-align:center;font-size: 18px;font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif">
            <asp:Label ID="Label7" runat="server" Text="Nhập mã bài đăng để xóa"></asp:Label>&emsp;&emsp;&emsp;
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="Danhsach" style="width: 100%; text-align: center; padding-top: 750px ; padding-bottom: 50px">
        <h1 style="text-align:center; font-size: 50px">Danh Sách Các Bài Đã Đăng</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Mã Bài Đăng">
                    <EditItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("MaBD") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("MaBD") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tiêu Đề">
                    <EditItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("TieuDe") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("TieuDe") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mô Tả">
                    <EditItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
            
        </asp:GridView>
    </div>
</asp:Content>
