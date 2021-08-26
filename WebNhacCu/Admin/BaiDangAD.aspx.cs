using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using BUS;
using DTO;

namespace WebNhacCu.Admin
{
    public partial class BaiDangAD : System.Web.UI.Page
    {
        BUS_BaiDang buslh = new BUS_BaiDang();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            load();
        }
        private void load()
        {
            if (buslh.getTable().Rows.Count > 0)
            {
                GridView1.DataSource = buslh.getTable();
                GridView1.DataBind();
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            this.Label5.Text = this.TextBox1.Text;
            this.Label6.Text = this.TextBox3.Text;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string maBD = this.TextBox4.Text;
            SqlConnection _conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ZeRos\Downloads\DoAnChuyenNganh_UPDATE_8\WebNhacCu\DAL\QuanLy.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("delete from BAIDANG  where MaBD='" + maBD + "'", _conn);
            _conn.Open();
            if (cmd.ExecuteNonQuery() > 0)
            {
                Response.Write("<script>alert('Chào mừng '+ ten +' . Bạn đã đăng ký thành công');</script>");
                load();
            }
            _conn.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string hinhanh = "null";
            DTO_BaiDang bd = new DTO_BaiDang(0,TextBox1.Text, TextBox2.Text,hinhanh, TextBox3.Text);
            if (buslh.Them(bd))
            {
                Response.Write("<script>alert('thành công');</script>");
                load();
            }
            else
            {
                Response.Write("<script>alert('Thất bại. Xin thử lại');</script>");
            }
        }
    }
}