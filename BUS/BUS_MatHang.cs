using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data;
using System.Data.SqlClient;
using DTO;

namespace BUS
{
    public class BUS_MatHang
    {
        DAL_MatHang dal_mh = new DAL_MatHang();
        public DataTable getTable()
        {
            return dal_mh.get();
        }

        public DataTable get(string loaihang)
        {
            return dal_mh.gettable(loaihang);
        }

        public DataTable tenMatHang(string tenMatHang)
        {
            return dal_mh.TenMatHang(tenMatHang);
        }

        public bool Them(DTO_MatHang mh)
        {
            return dal_mh.Them(mh);
        }
    }
}
