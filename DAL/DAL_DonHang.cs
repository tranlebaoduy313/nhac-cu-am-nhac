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
    public class DAL_DonHang : DBConnection
    {
        public bool Them(DTO_DonHang dh)
        {
            try
            {
                _conn.Open();
                string SQL = string.Format("insert into DONHANGXACNHAN(TenDN , MaMH , SoLuong, TinhTrang) values ('{0}', '{1}', '{2}', '{3}')",
                                            dh.DonHang_TenDN, dh.DonHang_MaMH, dh.DonHang_SoLuong, dh.DonHang_TinhTrang);
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

        public bool suaMK(int MaDH)
        {
            try
            {
                _conn.Open();
                string SQL = "update DONHANGXACNHAN set TinhTrang = 'OK' where MaDH ='" + MaDH + "'";
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
