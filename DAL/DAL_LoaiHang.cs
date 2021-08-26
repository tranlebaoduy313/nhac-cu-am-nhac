using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

using DTO;

namespace DAL
{
    public class DAL_LoaiHang : DBConnection
    {
       public DataTable getTable()
        {
            string q = "Select * from LOAIHANG";
            SqlDataAdapter da = new SqlDataAdapter(q, _conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public bool Them(DTO_LoaiHang lh)
        {
            try
            {
                _conn.Open();
                string SQL = string.Format("insert into LOAIHANG(MaLoai,TenLoai) values ('{0}', '{1}')",
                                            lh.LoaiHang_MaLoai, lh.LoaiHang_TenLoai);
                SqlCommand cmd = new SqlCommand(SQL, _conn);
                if (cmd.ExecuteNonQuery() > 0)
                    return true;
            }
            catch (Exception)
            {

            }
            finally
            {
                _conn.Close();
            }
            return false;
        }

        public bool Ktralh(string maLoai)
        {
            try
            {
                DataTable dtTaiKhoan = new DataTable();
                try
                {
                    _conn.Open();
                    SqlDataAdapter da = new SqlDataAdapter("Select * from LOAIHANG where MaLoai = '" + maLoai + "' ", _conn);
                    da.Fill(dtTaiKhoan);
                }
                catch (Exception)
                {

                }
                if (dtTaiKhoan.Rows.Count != 0)
                    return true;
            }
            catch (Exception)
            {

            }
            finally
            {
                // Dong ket noi
                _conn.Close();
            }
            return false;
        }
    }
}
