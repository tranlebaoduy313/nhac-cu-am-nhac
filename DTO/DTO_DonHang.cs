using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DTO_DonHang
    {
        private int _DonHang_MaDH;
        private string _DonHang_TenDN;
        private string _DonHang_MaMH;
        private string _DonHang_SoLuong;
        private string _DonHang_TinhTrang;

        public int DonHang_MaDH
        {
            get { return _DonHang_MaDH; }
            set { _DonHang_MaDH = value; }
        }

        public string DonHang_MaMH
        {
            get { return _DonHang_MaMH; }
            set { _DonHang_MaMH = value; }
        }

        public string DonHang_TenDN
        {
            get { return _DonHang_TenDN; }
            set { _DonHang_TenDN = value; }
        }

        public string DonHang_SoLuong
        {
            get { return _DonHang_SoLuong; }
            set { _DonHang_SoLuong = value; }
        }

        public string DonHang_TinhTrang
        {
            get { return _DonHang_TinhTrang; }
            set { _DonHang_TinhTrang = value; }
        }
        
        public DTO_DonHang()
        {

        }

        public DTO_DonHang(int MaDH, string TenDN, string MaMH, string SoLuong, string TinhTrang)
        {
            this._DonHang_MaDH = MaDH;
            this._DonHang_TenDN = TenDN;
            this._DonHang_MaMH = MaMH;
            this._DonHang_SoLuong = SoLuong;
            this._DonHang_TinhTrang = TinhTrang;
        }
    }
}
