using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using System.Data;
using System.Data.SqlClient;
namespace WebNhacCu.Admin
{
    public partial class TaiKhoanAD : System.Web.UI.Page
    {
        BUS_Taikhoan bustk = new BUS_Taikhoan();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            load();
        }
        private void load()
        {
            if (bustk.Gridview().Rows.Count>0)
            {
                GridView1.DataSource = bustk.Gridview();
                GridView1.DataBind();
            }
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string tenDN = this.TextBox1.Text;
            SqlConnection _conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ZeRos\Downloads\DoAnChuyenNganh_UPDATE_8\WebNhacCu\DAL\QuanLy.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("delete from TAIKHOAN  where TenDN='" + tenDN + "'", _conn);
            _conn.Open();
            if (cmd.ExecuteNonQuery() > 0)
                load();
            _conn.Close();
        }
    }
}