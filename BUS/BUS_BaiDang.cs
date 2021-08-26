using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DTO;
using System.Data;
using System.Data.SqlClient;

namespace BUS
{
    public class BUS_BaiDang
    {
        DAL_BaiDang dalbd = new DAL_BaiDang();
        public DataTable getTable()
        {
            return dalbd.get();
        }
        public bool Them(DTO_BaiDang bd)
        {
            return dalbd.Them(bd);
        }
    }
}
