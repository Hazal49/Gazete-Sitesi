using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace MaysaGazete
{
    public class sqlbaglantı
    {
        public SqlConnection baglan()
        {
           SqlConnection baglanti = new SqlConnection(@"Data Source=LAPTOP-E5D9V2UN\SQLSERVER ;Initial Catalog=maysagazete;Integrated Security=True");
            baglanti.Open();
            SqlConnection.ClearPool(baglanti);
            SqlConnection.ClearAllPools();
            return (baglanti);
        }
    }
}