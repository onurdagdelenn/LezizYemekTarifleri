﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace LezizYemekTarifleri
{
    public partial class Yemekler : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        string islem = "";



        protected void Page_Load(object sender, EventArgs e)
        {


            Panel2.Visible = false;
            Panel4.Visible = false;

            if (Page.IsPostBack == false)
            {

                //silme işlemi

                id = Request.QueryString["Yemekid"];
                islem = Request.QueryString["islem"];


                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("select * from tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();


            }

            //yemek listesi
            SqlCommand komut = new SqlCommand("select * from tbl_Yemekler", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            if (islem == "sil")
            {
                SqlCommand komut2 = new SqlCommand("Delete From Tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
                komut2.Parameters.AddWithValue("@p1", id);
                komut2.ExecuteNonQuery();
                bgl.baglanti().Close();


            }




        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void BtnEkle_Click(object sender, EventArgs e)

        //yemek ekleme
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_yemekler (YemekAd,YemekMalzemeleri,YemekTarif,Kategoriid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();


            //kategori sayısını arttırma

            SqlCommand komut2 = new SqlCommand("update tbl_Kategoriler set KategoriAdet=kategoriAdet+1 where kategoriid=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();


        }
    }
}