using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace LezizYemekTarifleri
{
    public class sqlsinif
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-7HDE6DH\SQLEXPRESS;Initial Catalog=Dbo_yemektarifi; Integrated Security=True");
            baglan.Open();
            return baglan;
        }

    }
}