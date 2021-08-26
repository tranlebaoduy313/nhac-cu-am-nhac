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
    public partial class SanPhamAD : System.Web.UI.Page
    {

        BUS_LoaiHang buslh = new BUS_LoaiHang();
        BUS_MatHang busmh = new BUS_MatHang();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox6.Text != "")
            {
                string maLoai = this.TextBox1.Text;
                if (buslh.ktra(maLoai))
                {
                    float gia = float.Parse(TextBox6.Text);
                    DTO_MatHang dtomh = new DTO_MatHang(TextBox3.Text, TextBox4.Text, TextBox1.Text, TextBox5.Text, gia, "Chưa có hình ảnh");
                    if (busmh.Them(dtomh))
                    {
                        this.Label8.Text = "Thêm Sản Phẩm Thành Công";
                        this.TextBox7.Text = this.TextBox1.Text;
                        this.TextBox8.Text = this.TextBox2.Text;
                        this.TextBox9.Text = this.TextBox3.Text;
                        this.TextBox10.Text = this.TextBox4.Text;
                        this.TextBox11.Text = this.TextBox5.Text;
                        this.TextBox12.Text = this.TextBox6.Text;

                    }
                    else
                    {
                        this.Label8.Text = "Thêm Sản Phẩm Thất Bại";
                    }

                }
                else
                {
                    DTO_LoaiHang dyolh = new DTO_LoaiHang(TextBox1.Text, TextBox2.Text, "Chưa có hình ảnh");
                    if (buslh.Them(dyolh))
                    {
                        float gia = float.Parse(TextBox6.Text);
                        DTO_MatHang dtomh = new DTO_MatHang(TextBox3.Text, TextBox4.Text, TextBox1.Text, TextBox5.Text, gia, "Chưa có hình ảnh");
                        if (busmh.Them(dtomh))
                        {
                            this.Label8.Text = "Thêm Sản Phẩm Thành Công";
                            this.TextBox7.Text = this.TextBox1.Text;
                            this.TextBox8.Text = this.TextBox2.Text;
                            this.TextBox9.Text = this.TextBox3.Text;
                            this.TextBox10.Text = this.TextBox4.Text;
                            this.TextBox11.Text = this.TextBox5.Text;
                            this.TextBox12.Text = this.TextBox6.Text;

                        }
                        else
                        {
                            this.Label8.Text = "Thêm Sản Phẩm Thất Bại";
                        }
                    }
                }
            }
            else
            {
                this.Label8.Text = "Nhập lại , không được bỏ trổng ô nào";
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string MaMH = this.TextBox9.Text;
            SqlConnection _conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ZeRos\Downloads\DoAnChuyenNganh_UPDATE_8\WebNhacCu\DAL\QuanLy.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("delete from MATHANG where MaMH='" + MaMH + "'", _conn);
            _conn.Open();
            if (cmd.ExecuteNonQuery() > 0)
            {
                Response.Write("<script>alert('Xóa sảm phẩm thành công');</script>");
            }
            _conn.Close();
        }
    }
}