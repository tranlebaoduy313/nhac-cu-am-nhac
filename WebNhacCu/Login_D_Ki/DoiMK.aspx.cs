using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;

namespace WebNhacCu.Login_D_Ki
{
    public partial class DoiMK : System.Web.UI.Page
    {
        BUS_Taikhoan bustk = new BUS_Taikhoan();
        protected void Page_Load(object sender, EventArgs e)
        {
            string ten = (string)Session["tendn"];
            this.Label2.Text = ten;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string tenDN = (string)Session["tendn"];
            string pass = this.TextBox3.Text;
            
            if(TextBox3.Text != "" && TextBox4.Text != "" )
            {
                if (TextBox3.Text == TextBox4.Text)
                {
                    if (bustk.suaMK(tenDN, pass))
                    {
                        Response.Write("<script>alert('Thành Công');</script>");
                    }
                    else
                        Response.Write("<script>alert('Thất bại');</script>");
                }
                else
                    this.Label1.Text = "Nhập lại mật khẩu, mật khẩu không trùng nhau";
            }
            else
            {
                this.Label1.Text = "Vui lòng không bỏ trống ô nào";
            }
        }
    }
}