using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace LezizYemekTarifleri
{
    public partial class Mesajlar : System.Web.UI.Page

    {
        sqlsinif bgl = new sqlsinif();


        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * From tbl_Mesajlar",bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
        }
    }
}