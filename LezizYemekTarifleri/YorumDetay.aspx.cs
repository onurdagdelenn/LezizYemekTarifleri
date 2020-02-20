using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace LezizYemekTarifleri
{
    public partial class YorumDetay : System.Web.UI.Page
    {

        sqlsinif bgl = new sqlsinif();
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yorumid"];

            if (Page.IsPostBack == false)
            {




           
            //Yemek adı farklı tabloda oldugu ıcın hangı yemege yorum yapılmıssa o yemeği getir. Inner join iki tablo arası ortak alanları getırıyor.
           
            SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,YorumIcerik,YemekAd From tbl_yorumlar inner join tbl_yemekler on tbl_Yorumlar.yemekid=tbl_yemekler.yemekid where yorumid=@p1",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {

                TxtAdSoyad.Text = dr[0].ToString();
                TxtMail.Text = dr[1].ToString();
                TxtIcerik.Text = dr[2].ToString();
                TxtYemek.Text = dr[3].ToString();

            }

            bgl.baglanti().Close();
            }
        }

        protected void BtnOnayla_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update tbl_Yorumlar set yorumIcerik=@p1,yorumonay=@p2 where yorumid=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtIcerik.Text);
            komut.Parameters.AddWithValue("@p2", "True");
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery(); //sorguyu calıstırmak ıcın
            bgl.baglanti().Close();


        }
    }
}