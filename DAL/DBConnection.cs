using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace DAL
{
    public class DBConnection
    {
        protected SqlConnection _conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ZeRos\Downloads\DoAnChuyenNganh_UPDATE_8\WebNhacCu\DAL\QuanLy.mdf;Integrated Security=True");

        //Thay chuỗi connection
        //protected SqlConnection _conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\duytr\Downloads\DoAnChuyenNganh_UPDATE_8\WebNhacCu\DAL\QuanLy.mdf;Integrated Security=True");
    }
}
