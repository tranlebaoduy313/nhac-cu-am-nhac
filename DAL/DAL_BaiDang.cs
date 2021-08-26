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
    public class DAL_BaiDang : DBConnection
    {
        public DataTable get()
        {
            string q = "Select * from BAIDANG";
            SqlDataAdapter da = new SqlDataAdapter(q, _conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public bool Them(DTO_BaiDang bd)
        {
            try
            {
                _conn.Open();
                string SQL = string.Format("insert into BAIDANG(TieuDe, MoTa, NoiDung) values ('{0}', '{1}', '{2}')",
                                            bd.BaiDang_TieuDe, bd.BaiDang_MoTa, bd.BaiDang_NoiDung);
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
