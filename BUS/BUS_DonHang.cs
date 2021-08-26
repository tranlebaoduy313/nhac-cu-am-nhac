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
    public class BUS_DonHang
    {
        DAL_DonHang dal_dh = new DAL_DonHang();
        public bool Them(DTO_DonHang dh)
        {
            return dal_dh.Them(dh);
        }

        public bool Sua(int MaDH)
        {
            return dal_dh.suaMK(MaDH);
        }
    }
}
