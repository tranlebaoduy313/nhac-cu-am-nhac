using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DAL;
using DTO;

namespace BUS
{
    public class BUS_LoaiHang
    {
        DAL_LoaiHang dal_lh = new DAL_LoaiHang();
        public DataTable getTable()
        {
            return dal_lh.getTable();
        }
        public bool Them(DTO_LoaiHang lh)
        {
            return dal_lh.Them(lh);
        }
        public bool ktra(string maLoai)
        {
            return dal_lh.Ktralh(maLoai);
        }
    }
}
