<%@ Page Title="" Language="C#" MasterPageFile="~/Master/ThanhVienMaster.Master" AutoEventWireup="true" CodeBehind="QuanLy.aspx.cs" Inherits="WebNhacCu.ThanhVien.QuanLy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 50%; border: #808080 solid 2px; height: 500px">
        <script>
            function isNumberKey(evt)
                    {
                        var charCode = (evt.which) ? evt.which : evt.keyCode;
                        if (charCode > 31 && (charCode < 48 || charCode > 57))
                            return false;
                        return true;
                    }
        </script>
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <div>
                    <asp:Label ID="Label1" runat="server" Text="Tên Đăng Nhập"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("TenDN") %>'></asp:Label>
                </div>
                <div>
                    <asp:Label ID="Label3" runat="server" Text="Mật KHẩu"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("Pass") %>'></asp:TextBox>
                </div>
                 <div>
                    <asp:Label ID="Label4" runat="server" Text="Tên Khách Hàng"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("Ten") %>'></asp:TextBox>
                </div>
                 <div>
                    <asp:Label ID="Label5" runat="server" Text="Số điện thoại"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("SDT") %>'></asp:TextBox>
                </div>
                 <div>
                    <asp:Label ID="Label6" runat="server" Text="Địa Chỉ"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("DiaChi") %>' onkeypress="return isNumberKey(event)"></asp:TextBox>
                </div>
                <div>
                    <asp:Button ID="Button1" runat="server" Text="Sửa" OnClick="Button1_Click" />
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <div>

    </div>
</asp:Content>
