using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;

namespace WebNhacCu.Login_D_Ki
{
    public partial class LoGin : System.Web.UI.Page
    {
        BUS_Taikhoan busTK = new BUS_Taikhoan();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string tenDN = this.TextBox1.Text;
            string pass = this.TextBox2.Text;
            if (TextBox1.Text != "" && TextBox2.Text != "")
            {
                if (busTK.Login(tenDN, pass))
                {
                    Response.Write("<script>alert('Thành Công');</script>");
                    Session["tendn"] = tenDN;
                    Server.Transfer("/ThanhVien/TrangChuTV.aspx");
                    //Response.Redirect("TV_QuanLyTaiKhoan.as");
                }
                else this.Label1.Text = "that bai";
                if (TextBox1.Text == "admin" && TextBox2.Text == "admin")
                {
                    
                    Server.Transfer("/Admin/TaiKhoanAD.aspx");
                }
                    
            }
        }
    }
}