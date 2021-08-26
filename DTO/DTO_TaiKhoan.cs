using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DTO_TaiKhoan
    {
        private string _TaiKhoan_TenDN;
        private string _TaiKhoan_Pass;
        private string _TaiKhoan_Ten;
        private string _TaiKhoan_SDT;
        private string _TaiKhoan_DiaChi;

        public string TaiKhoan_TenDN
        {
            get { return _TaiKhoan_TenDN; }
            set { _TaiKhoan_TenDN = value; }
        }

        public string TaiKhoan_Pass
        {
            get { return _TaiKhoan_Pass; }
            set { _TaiKhoan_Pass = value; }
        }

        public string TaiKhoan_DiaChi
        {
            get { return _TaiKhoan_DiaChi; }
            set { _TaiKhoan_DiaChi = value; }
        }

        public string TaiKhoan_Ten
        {
            get { return _TaiKhoan_Ten; }
            set { _TaiKhoan_Ten = value; }
        }

        public string TaiKhoan_SDT
        {
            get { return _TaiKhoan_SDT; }
            set { _TaiKhoan_SDT = value; }
        }

        public DTO_TaiKhoan()
        {
            
        }

        public DTO_TaiKhoan(string tenDN, string pass, string ten, string sdt, string diachi)
        {
            this._TaiKhoan_TenDN = tenDN;
            this._TaiKhoan_Pass = pass;
            this._TaiKhoan_Ten = ten;
            this._TaiKhoan_SDT = sdt;
            this._TaiKhoan_DiaChi = diachi;
        }

    }
}
