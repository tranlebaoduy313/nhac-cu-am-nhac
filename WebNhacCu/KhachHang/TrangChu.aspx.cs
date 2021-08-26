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
    public partial class TrangChu : System.Web.UI.Page
    {
        BUS_BaiDang buslh = new BUS_BaiDang();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
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
        
    }
}