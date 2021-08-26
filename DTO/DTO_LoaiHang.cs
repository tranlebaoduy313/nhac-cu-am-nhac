using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DTO_LoaiHang
    {
        private string _LoaiHang_MaLoai;
        private string _LoaiHang_TenLoai;
        private string _LoaiHang_HinhAnh;

        public string LoaiHang_MaLoai
        {
            get { return _LoaiHang_MaLoai; }
            set { _LoaiHang_MaLoai = value; }
        }

        public string LoaiHang_TenLoai
        {
            get { return _LoaiHang_TenLoai;}
            set { _LoaiHang_TenLoai = value; }
        }

        public string LoaiHang_HinhAnh
        {
            get { return _LoaiHang_HinhAnh; }
            set { _LoaiHang_HinhAnh = value; }
        }

        public DTO_LoaiHang()
        {

        }

        public DTO_LoaiHang(string maLoai, string tenLoai, string hinhAnh)
        {
            this._LoaiHang_MaLoai = maLoai;
            this._LoaiHang_TenLoai = tenLoai;
            this._LoaiHang_HinhAnh = hinhAnh;
        }
    }
}
