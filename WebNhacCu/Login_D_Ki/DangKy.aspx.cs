using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;

namespace WebNhacCu.Login_D_Ki
{
    public partial class DangKy : System.Web.UI.Page
    {
        BUS_Taikhoan busTK = new BUS_Taikhoan();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "")
            {
                if (busTK.KtraTenDN(this.TextBox1.Text))
                {
                    this.Label1.Text = "Tên đăng nhập đã tồn tại. Xin nhập lại tên đăng nhập khác";
                }
                else
                {
                    DTO_TaiKhoan tk = new DTO_TaiKhoan(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text);

                    if (busTK.Them(tk))
                    {
                        string ten = this.TextBox3.Text;
                        Server.Transfer("/ThanhVien/TrangChuTV.aspx");
                        Response.Write("<script>alert('Chào mừng '+ ten +' . Bạn đã đăng ký thành công');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Đăng ký thất bại. Xin thử lại');</script>");
                    }
                }
            }
            else
            {
                this.Label1.Text = "Xin hãy nhập đầy đủ thông tin không được để trống ô nào";
            }
        }
    }
}