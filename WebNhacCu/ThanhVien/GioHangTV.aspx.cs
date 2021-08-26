using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BUS;
using DTO;


namespace WebNhacCu.ThanhVien
{
    public partial class GioHangTV : System.Web.UI.Page
    {
        BUS_DonHang busdh = new BUS_DonHang();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            this.docDL();
            
            

        }
        private void tong()
        {
            int s = 0;
            int sl = int.Parse((string)Session["sl"]);
            int dg = int.Parse((string)Session["dg"]);
            s = s + sl * dg;
            this.Label1.Text = s.ToString();
        }
        private void docDL()
        {
            DataTable dt = (DataTable)Session["giohang"];
            this.GridView1.DataSource = dt;
            this.GridView1.DataBind();
            this.tong();

        }
        protected void btn_trahang_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("MaMH");
            dt.Columns.Add("Gia");
            dt.Columns.Add("HinhAnh");
            dt.Columns.Add("TenMH");
            dt.Columns.Add("SoLuong");

            foreach (GridViewRow grd in this.GridView1.Rows)
            {
                CheckBox checkbox = (CheckBox)grd.FindControl("CheckBox1");
                if (!checkbox.Checked)
                {
                    DataRow dataRow = dt.NewRow();
                    dataRow["MaMH"] = grd.Cells[0].Text.ToString();
                    dataRow["Gia"] = grd.Cells[1].Text.ToString();
                    dataRow["HinhAnh"] = ((Image)grd.FindControl("Image1")).ImageUrl;
                    dataRow["TenMH"] = grd.Cells[3].Text.ToString();
                    dataRow["SoLuong"] = grd.Cells[4].Text.ToString();
                    dt.Rows.Add(dataRow);
                }
            }
            Session["giohang"] = dt;
            docDL();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string tenDN = (string)Session["tendn"];
            string MaMH = (string)Session["mamh"];
            string Soluong = (string)Session["sl"];
            string TinhTrang = "KO";
            DTO_DonHang dtodh = new DTO_DonHang(0,tenDN,MaMH,Soluong,TinhTrang);
            if (busdh.Them(dtodh))
            {
                this.Label2.Text = "Đơn hàng của bạn đang chờ được xác nhận";
            }
        }
    }
}