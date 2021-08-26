using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;


namespace WebNhacCu.ThanhVien
{
    public partial class ChiTietSanPhamTV : System.Web.UI.Page
    {
        BUS_MatHang busmh = new BUS_MatHang();
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            if (Context.Items["tenmh"] != null)
            {
                try
                {
                    this.DataList1.DataSource = busmh.tenMatHang(Context.Items["tenmh"].ToString());
                    this.DataList1.DataBind();
                }
                catch (SqlException ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }

        private void TaoGio()
        {
            dt = new DataTable();
            dt.Columns.Add("MaMH");
            dt.Columns.Add("Gia");
            dt.Columns.Add("HinhAnh");
            dt.Columns.Add("TenMH");
            dt.Columns.Add("SoLuong");
            Session["giohang"] = dt;
        }

        protected void Button_mua_Click(object sender, EventArgs e)
        {
                Button mua = (Button)sender;
                string mamh = mua.CommandArgument.ToString();
                DataListItem item = (DataListItem)mua.Parent;
                string soluong = ((TextBox)item.FindControl("txt_soluong")).Text;
                string dongia = ((Label)item.FindControl("lbl_dongia")).Text;
                string tenmh = ((Label)item.FindControl("lbl_tenMH")).Text;
                string hinh = ((Image)item.FindControl("img_hinh")).ImageUrl;
                dt = (DataTable)Session["giohang"];
                bool tim = false;
                if (dt == null) TaoGio();
                foreach (DataRow dataRow in dt.Rows)
                {
                    if (dataRow["MaMH"].Equals(mamh))
                    {
                        dataRow["SoLuong"] = Convert.ToInt32(dataRow["SoLuong"])
                            + Convert.ToInt32(soluong);
                        tim = true; break;
                    }
                }
                if (!tim)
                {
                    DataRow dataRow = dt.NewRow();
                    dataRow["MaMH"] = mamh;
                    dataRow["Gia"] = dongia;
                    dataRow["HinhAnh"] = hinh;
                    dataRow["TenMH"] = tenmh;
                    dataRow["SoLuong"] = soluong;
                    dt.Rows.Add(dataRow);
                }
                Session["giohang"] = dt;
                Session["sl"] = soluong;
                Session["dg"] = dongia;
                Session["mamh"] = mamh;
                Response.Write("<script>alert('Sản phẩm đã được thêm vào giỏ hàng');</script>");
                Server.Transfer("GioHangTV.aspx");
                
        }
    }
}