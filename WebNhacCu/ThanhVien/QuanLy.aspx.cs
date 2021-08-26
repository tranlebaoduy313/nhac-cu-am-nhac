using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using System.Data;
using System.Data.SqlClient;

namespace WebNhacCu.ThanhVien
{
    public partial class QuanLy : System.Web.UI.Page
    {
        BUS_Taikhoan bustk = new BUS_Taikhoan();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            string ten = (string)Session["tendn"];
            this.DataList1.DataSource = bustk.get(ten);
            this.DataList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string tenDN = (string)Session["tendn"];
            string pass = this.te
            if (bustk.sua(tenDN, Tex, ten, SDT, diachi))
            {
                Response.Write("<script>alert('Thành Công');</script>");
            }
        }
    }
}