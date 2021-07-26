using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MaysaGazete.admin
{
    public partial class GelenHaberDetay : System.Web.UI.Page
    {
        sqlbaglantı baglan = new sqlbaglantı();
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["YoneticiKullaniciAd"] == null)
            {
                Response.Redirect("defaultadmin.aspx");
            }

            id = Request.QueryString["SizdenGelenid"];


            if (Page.IsPostBack == false)
            {
                //Kategorileri Listeleme
                SqlCommand cmd2 = new SqlCommand("select * from Kategoriler", baglan.baglan());
                SqlDataReader oku2 = cmd2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = oku2;
                DropDownList1.DataBind();
            }

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select * from SizdenGelen where SizdenGelenid=@p1", baglan.baglan());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    txt_gelenhaber.Text = oku[1].ToString();
                    txt_gelenhabericerik.Text = oku[2].ToString();
                   // file_gelenhaberresim.FileName = oku[3].ToString();
                    txt_gonderenAd.Text = oku[4].ToString();
                    txt_gonderenMail.Text = oku[5].ToString();

                }

                baglan.baglan().Close();
            }
        }

        protected void btn_GelenHaberiOnayla_Click(object sender, EventArgs e)
        {
            //Gelen Haberi Onaylama
            SqlCommand komut1 = new SqlCommand("update SizdenGelen set SizdenGelenOnayDurumu=1 where SizdenGelenid=@p1", baglan.baglan());
            komut1.Parameters.AddWithValue("@p1", id);
            komut1.ExecuteNonQuery();
            baglan.baglan().Close();
            if (file_gelenhaberresim.HasFile == false)
            {

                Label1.Text = "Resim Ekle"; 
            }
            else
            {

                file_gelenhaberresim.SaveAs(Server.MapPath("/ikonlar/" + file_gelenhaberresim.FileName));

                //Gelen Haberi Ekleme
                SqlCommand komut2 = new SqlCommand("insert into Haberler (HaberAd,Habericerik,HaberResim,Kategoriid)values(@p1,@p2,@p4,@p3)", baglan.baglan());
                komut2.Parameters.AddWithValue("@p1", txt_gelenhaber.Text);
                komut2.Parameters.AddWithValue("@p2", txt_gelenhabericerik.Text);
                komut2.Parameters.AddWithValue("@p4", "~/ikonlar/" + file_gelenhaberresim.FileName);
                komut2.Parameters.AddWithValue("@p3", DropDownList1.SelectedValue);
                komut2.ExecuteNonQuery();
                baglan.baglan().Close();
                Label1.Text = "Haber başarıyla onaylandı";
                txt_gelenhaber.Text = "";
                txt_gelenhabericerik.Text = "";
                txt_gonderenAd.Text = "";
                txt_gonderenMail.Text = "";
                DropDownList1.Items.Clear();
            }
        }

        protected void txt_gonderenAd_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}