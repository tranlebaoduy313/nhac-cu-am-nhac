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
    public class TaiKhoan : DBConnection
    {
        public bool Login(string tenDN, string pass)
        {
            try
            {
                DataTable dtTaiKhoan = new DataTable();
                try
                {
                    _conn.Open();
                    SqlDataAdapter da = new SqlDataAdapter("Select * from TAIKHOAN where TenDN = '" + tenDN + "' and Pass = '" + pass + "'", _conn);
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


        public bool QMK(string tenDN, string sdt)
        {
            try
            {
                DataTable dtTaiKhoan = new DataTable();
                try
                {
                    _conn.Open();
                    SqlDataAdapter da = new SqlDataAdapter("Select * from TAIKHOAN where TenDN = '" + tenDN + "' and SDT = '" + sdt + "'", _conn);
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
                _conn.Close();
            }
            return false;
        }


        public bool Them(DTO_TaiKhoan tk)
        {
            try
            {
                _conn.Open();
                string SQL = string.Format("insert into TAIKHOAN(TenDN, Pass, Ten, SDT, DiaChi) values ('{0}', '{1}', '{2}', '{3}', '{4}')",
                                            tk.TaiKhoan_TenDN, tk.TaiKhoan_Pass, tk.TaiKhoan_Ten, tk.TaiKhoan_SDT, tk.TaiKhoan_DiaChi);

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

        public bool KtraTenDN(string tenDN)
        {
            try
            {
                DataTable dtTaiKhoan = new DataTable();
                try
                {
                    _conn.Open();
                    SqlDataAdapter da = new SqlDataAdapter("Select * from TAIKHOAN where TenDN = '" + tenDN + "' ", _conn);
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
    
        public bool suaMK(string tenDN, string pass)
        {
            try
            {
                _conn.Open();
                string SQL = "update TAIKHOAN set Pass = '"+pass+"' where TenDN ='"+tenDN+"'";
                SqlCommand cmd = new SqlCommand(SQL, _conn);
                if (cmd.ExecuteNonQuery() > 0)
                    return true;
            }
            catch(Exception)
            {

            }
            finally
            {
                _conn.Close();
            }
            return false;
        }

        public DataTable Gridview()
        {
            string q = "Select * from TAIKHOAN";
            _conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(q,_conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            _conn.Close();
            return dt;
        }

        public bool delete(string tenDN)
        {
            try
            {
                _conn.Open();
                string SQL = string.Format("DELETE FROM TAIKHOAN WHERE TenDN = {0})", tenDN);
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

        public DataTable get(string tenDN)
        {
            string q = "Select * from TAIKHOAN where TenDN= '" + tenDN + "'  ";
            SqlDataAdapter da = new SqlDataAdapter(q, _conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public bool sua(string tenDN, string pass, string ten, string SDT, string diachi)
        {
            try
            {
                _conn.Open();
                string SQL = "update TAIKHOAN set Pass = '"+pass+"' , Ten = '"+ten+"', SDT = '"+SDT+"', DiaChi = '"+diachi+"' where TenDN ='" + tenDN + "'";
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
