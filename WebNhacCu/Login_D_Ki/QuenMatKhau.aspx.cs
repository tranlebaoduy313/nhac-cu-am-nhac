using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;

namespace WebNhacCu.Login_D_Ki
{
    public partial class QuenMatKhau : System.Web.UI.Page
    {
        BUS_Taikhoan bustk = new BUS_Taikhoan();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string tenDN = this.TextBox1.Text;
            string sdt = this.TextBox2.Text;
            if (TextBox1.Text != "" && TextBox2.Text != "")
            {
                if (bustk.QMK(tenDN, sdt))
                {
                    Session["tendn"] = tenDN;
                    Server.Transfer("DoiMK.aspx");
                }


                else this.Label1.Text = "that bai";
            }
        }
    }
}