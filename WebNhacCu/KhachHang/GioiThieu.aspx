<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Master.Master" AutoEventWireup="true" CodeBehind="GioiThieu.aspx.cs" Inherits="WebNhacCu.KhachHang.GioiThieu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../css/StyleSheet1.css" rel="stylesheet" />
    <div class="container1">
                <div class="cagegoryhome ">
                    <h2 class="title_home ">Nhạc cụ</h2>
                    <div class="content1">
                        <asp:DataList ID="DataList1" runat="server" display="flex" RepeatColumns="3" BackColor="White" BorderStyle="None" CellPadding="16" Height="460px" Style="margin-right: 2px; margin-top: 2px ; margin-left: 2px " Width="100%" ForeColor="Black" justify-content="center" align-items="flex-end" HorizontalAlign="Center">
                            <ItemTemplate>
                                <div class="name">
                                    <div class="image">
                                        <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("MaLoai") %>' ImageUrl='<%# "~/images/" + Eval ("HinhAnh") %>' OnClick="ImageButton1_Click" Width="373px" BorderWidth="0px" />
                                    </div>
                                    <div class="tit">
                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("MaLoai") %>' Font-Bold="True" Font-Names="Cambria" OnClick="LinkButton1_Click" Text='<%# Eval("TenLoai") %>' Font-Size="20px" Style="text-decoration: none" ForeColor="White"></asp:LinkButton>
                                    </div>
                                </div>
                            </ItemTemplate>

                        </asp:DataList>

                    </div>
                    <div class="center">
                    </div>
                </div>
            </div>
</asp:Content>
