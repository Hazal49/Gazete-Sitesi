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
    public partial class şifre : System.Web.UI.Page
    {
        sqlbaglantı baglan = new sqlbaglantı();
      
        byte up;

        protected void Page_Load(object sender, EventArgs e)
        { 
        }

        protected void btn_sifreDegistir_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("Select * from Yonetici where YoneticiKullaniciAd=@a1 and Yoneticikullanicisifre=@a2", baglan.baglan());
            cmd.Parameters.AddWithValue("@a1", txt_eskikul.Text);
            cmd.Parameters.AddWithValue("@a2", txt_eskisifre.Text);
            SqlDataReader oku = cmd.ExecuteReader();
            if (oku.Read())
            {
                if (txt_kultekrar.Text == txt_yenikul.Text && txt_yenisifre.Text == txt_sifretekrar.Text)
                {
                    SqlCommand cmd3 = new SqlCommand("update Yonetici set YoneticiKullaniciAd=@c1,Yoneticikullanicisifre=@c2", baglan.baglan());
                    cmd3.Parameters.AddWithValue("@c1", txt_yenikul.Text);
                    cmd3.Parameters.AddWithValue("@c2", txt_yenisifre.Text);
                    cmd3.ExecuteNonQuery();
                    baglan.baglan().Close();
                    lbl_hatamesajı.Text = "Başarıyla oluşturuldu";
                    Response.Redirect("defaultadmin.aspx");
                }
                else
                {
                    lbl_hatamesajı.Text = "Hatalı giriş";
                }

            }
            else
            {
                lbl_hatamesajı.Text = "Eski şifre uyuşmuyor!!!";
            }
            

        }
    }
    }
