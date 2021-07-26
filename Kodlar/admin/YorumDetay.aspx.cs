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
    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlbaglantı baglan = new sqlbaglantı();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["YoneticiKullaniciAd"] == null)
            {
                Response.Redirect("defaultadmin.aspx");
            }
            id = Request.QueryString["Yorumid"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select  YorumAdSoyad,YorumMail,Yorumicerik,HaberAd  from Yorumlar inner join Haberler on Yorumlar.Haberid=Haberler.Haberid where Yorumid=@p1", baglan.baglan());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader oku = komut.ExecuteReader();

                while (oku.Read())
                {
                    txt_ad.Text = oku[0].ToString();
                    txt_mail.Text = oku[1].ToString();
                    txt_icerik.Text = oku[2].ToString();
                    txt_haber.Text = oku[3].ToString();
                }
                baglan.baglan().Close();
            }
        }

        protected void btn_onayla_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Yorumlar set Yorumicerik=@p1,YorumOnay=@p2 where Yorumid=@p3", baglan.baglan());
            komut.Parameters.AddWithValue("@p1", txt_icerik.Text);
            komut.Parameters.AddWithValue("@p2", "True");
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            baglan.baglan().Close();
            txt_ad.Text = "";
            txt_haber.Text = "";
            txt_icerik.Text = "";
            txt_mail.Text = "";
        }

    }
}