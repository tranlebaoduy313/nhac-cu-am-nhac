using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DTO;
using System.Data.SqlClient;
using System.Data;
namespace BUS
{
    public class BUS_Taikhoan
    {
        TaiKhoan dalTaiKhoan = new TaiKhoan();

        public bool Login(string tenDN, string pass)
        {
            return dalTaiKhoan.Login(tenDN, pass);
        }

        public bool QMK(string tenDN, string sdt)
        {
            return dalTaiKhoan.QMK(tenDN, sdt);
        }

        public bool Them(DTO_TaiKhoan tk)
        {
            return dalTaiKhoan.Them(tk);
        }

        public bool KtraTenDN(string tenDN)
        {
            return dalTaiKhoan.KtraTenDN(tenDN);
        }
        
        public bool suaMK(string tenDN, string pass)
        {
            return dalTaiKhoan.suaMK(tenDN, pass);
        }

        public DataTable Gridview()
        {
            return dalTaiKhoan.Gridview();
        }

        public bool Delete(string tenDN)
        {
            return dalTaiKhoan.delete(tenDN);
        }

        public DataTable get(string tenDN)
        {
            return dalTaiKhoan.get(tenDN);
        }

        public bool sua(string tenDN, string pass, string ten, string SDT, string diachi)
        {
            return dalTaiKhoan.sua(tenDN, pass, ten, SDT, diachi);
        }
    }
}
