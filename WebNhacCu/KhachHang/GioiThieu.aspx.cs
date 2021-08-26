using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using BUS;


namespace WebNhacCu.KhachHang
{
    public partial class GioiThieu : System.Web.UI.Page
    {
        BUS_LoaiHang buslh = new BUS_LoaiHang();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack) return;
            try
            {
                this.DataList1.DataSource = buslh.getTable();
                this.DataList1.DataBind();
            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string maloai = ((LinkButton)sender).CommandArgument;
            Context.Items["ml"] = maloai;
            Server.Transfer("SanPham.aspx");
        }
    }
}