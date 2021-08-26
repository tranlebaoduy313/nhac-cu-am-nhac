using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DTO_BaiDang
    {
        private int _BaiDang_MaBD;
        private string _BaiDang_TieuDe;
        private string _BaiDang_MoTa;
        private string _BaiDang_HinhAnh;
        private string _BaiDang_NoiDung;

        public int BaiDang_MaBD
        {
            get { return _BaiDang_MaBD; }
            set { _BaiDang_MaBD = value; }
        }

        public string BaiDang_TieuDe
        {
            get { return _BaiDang_TieuDe; }
            set { _BaiDang_TieuDe = value; }
        }

        public string BaiDang_MoTa
        {
            get { return _BaiDang_MoTa; }
            set { _BaiDang_MoTa = value; }
        }

        public string BaiDang_HinhAnh
        {
            get { return _BaiDang_HinhAnh; }
            set { _BaiDang_HinhAnh = value; }
        }

        public string BaiDang_NoiDung
        {
            get { return _BaiDang_NoiDung; }
            set { _BaiDang_NoiDung = value; }
        }

        public DTO_BaiDang()
        {

        }

        public DTO_BaiDang(int maBD, string tieuDe, string moTa, string hinhAnh, string noiDung)
        {
            this._BaiDang_MaBD = maBD;
            this._BaiDang_TieuDe = tieuDe;
            this._BaiDang_MoTa = moTa;
            this._BaiDang_HinhAnh = hinhAnh;
            this._BaiDang_NoiDung = noiDung;
        }
    }
}
