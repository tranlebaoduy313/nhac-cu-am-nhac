using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using System.Data;
using System.Data.SqlClient;

namespace WebNhacCu.KhachHang
{
    public partial class ChiTietSanPham : System.Web.UI.Page
    {
        BUS_MatHang busmh = new BUS_MatHang();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            if (Context.Items["tmh"] != null)
            {
                try
                {
                    this.DataList1.DataSource = busmh.tenMatHang(Context.Items["tmh"].ToString());
                    this.DataList1.DataBind();
                }
                catch (SqlException ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }

        protected void Button_mua_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Bạn phải đăng nhập để mua hàng');</script>");
            Server.Transfer("/Login_D_Ki/LoGin.aspx");
        }
    }
}