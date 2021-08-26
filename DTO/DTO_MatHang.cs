using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DTO_MatHang
    {
        private string _MatHang_MaMH;
        private string _MatHang_TenMH;
        private string _MatHang_MaLoai;
        private string _MatHang_MoTa;
        private float _MatHang_Gia;
        private string _MatHang_HinhAnh;

        public string MatHang_MaMH
        {
            get { return _MatHang_MaMH; }
            set { _MatHang_MaMH = value; }
        }

        public string MatHang_TenMH
        {
            get { return _MatHang_TenMH; }
            set { _MatHang_TenMH = value; }
        }

        public string MatHang_MaLoai
        {
            get { return _MatHang_MaLoai; }
            set { _MatHang_MaLoai = value; }
        }

        public string MatHang_MoTa
        {
            get { return _MatHang_MoTa; }
            set { _MatHang_MoTa = value; }
        }

        public float MatHang_Gia
        {
            get { return _MatHang_Gia; }
            set { _MatHang_Gia = value; }
        }

        public string MatHang_HinhAnh
        {
            get { return _MatHang_HinhAnh; }
            set { _MatHang_HinhAnh = value; }
        }


        public DTO_MatHang(string maMH, string tenMH, string maLoai, string moTa, float gia, string hinhAnh)
        {
            this._MatHang_MaMH = maMH;
            this._MatHang_TenMH = tenMH;
            this._MatHang_MaLoai = maLoai;
            this._MatHang_MoTa = moTa;
            this._MatHang_HinhAnh = hinhAnh;
            this._MatHang_Gia = gia;
        }



    }
}
