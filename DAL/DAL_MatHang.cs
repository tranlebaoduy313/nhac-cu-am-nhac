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
    public class DAL_MatHang : DBConnection
    {
        public DataTable get()
        {
            string q = "Select * from MATHANG";
            SqlDataAdapter da = new SqlDataAdapter(q, _conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable gettable(string loaihang)
        {
            string q = "Select * from MATHANG where MaLoai= '"+loaihang+"'  ";
            SqlDataAdapter da = new SqlDataAdapter(q, _conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable TenMatHang(string tenMatHang)
        {
            string q = "Select * from MATHANG where TenMH= '" + tenMatHang + "'  ";
            SqlDataAdapter da = new SqlDataAdapter(q, _conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public bool Them(DTO_MatHang mh)
        {
            try
            {
                _conn.Open();
                string SQL = string.Format("insert into MATHANG(MaMH, TenMH, MaLoai, MoTa, Gia) values ('{0}', '{1}', '{2}','{3}','{4}')",
                                            mh.MatHang_MaMH, mh.MatHang_TenMH, mh.MatHang_MaLoai,mh.MatHang_MoTa,mh.MatHang_Gia);
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
    }
}
