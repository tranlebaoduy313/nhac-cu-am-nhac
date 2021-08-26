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
    public partial class SanPham : System.Web.UI.Page
    {
        BUS_MatHang busmh = new BUS_MatHang();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            if(Context.Items["ml"] == null)
            {
                try
                {
                    this.DataList1.DataSource = busmh.getTable();
                    this.DataList1.DataBind();
                }
                catch (SqlException ex)
                {
                    Response.Write(ex.Message);
                }
            }
            else
            {
                try
                {
                    this.DataList1.DataSource = busmh.get(Context.Items["ml"].ToString());
                    this.DataList1.DataBind();
                }
                catch (SqlException ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string tenMatHang = ((LinkButton)sender).CommandArgument;
            Context.Items["tmh"] = tenMatHang;
            Server.Transfer("ChiTietSanPham.aspx");
        }
    }
}