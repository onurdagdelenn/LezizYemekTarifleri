using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace LezizYemekTarifleri
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        String id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yemekid"];
            //IsPostBack sayfayı yenıden yuklememesi için. Bir kere yuklendiğinde al o hali al.
            if (Page.IsPostBack == false)
            {

                SqlCommand komut = new SqlCommand("Select * from tbl_Yemekler where yemekid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();

                }
                bgl.baglanti().Close();

                if (Page.IsPostBack == false)
                {


                    //Kategori Listesi
                    SqlCommand komut2 = new SqlCommand("select * from tbl_Kategoriler", bgl.baglanti());
                    SqlDataReader dr2 = komut2.ExecuteReader();

                    DropDownList1.DataTextField = "KategoriAd";
                    DropDownList1.DataValueField = "Kategoriid";

                    DropDownList1.DataSource = dr2;
                    DropDownList1.DataBind();


                }

            }
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update tbl_Yemekler set Yemekad=@p1, yemekmalzemeleri=@p2, yemektarif=@p3, kategoriid=@p4  where yemekid=@p5",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p5", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //tüm yemeklerin durumunu false yapmam için
            SqlCommand komut = new SqlCommand("update Tbl_Yemekler set Durum=0",bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //günü yemeği için id ye göre durumu true yapmama yarıyor

            SqlCommand komut2 = new SqlCommand("update Tbl_Yemekler set Durum=1 where yemekid=@p1",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

        }

    }
}