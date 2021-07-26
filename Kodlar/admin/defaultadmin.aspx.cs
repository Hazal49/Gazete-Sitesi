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
    public partial class defaultadmin : System.Web.UI.Page
    {
        sqlbaglantı baglan = new sqlbaglantı();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btn_giris_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from Yonetici where YoneticiKullaniciAd='"+txt_kullanici.Text+"' and Yoneticikullanicisifre='"+txt_sifre.Text+"'", baglan.baglan());
            SqlDataReader oku = cmd.ExecuteReader();
            if (oku.Read())
            {
                Session["YoneticiKullaniciAd"] = oku["YoneticiKullaniciAd"];
                Response.Redirect("adminpanel.aspx");
            }
            else
            {
                lbl_bilgi.Text = "Hatalı giriş yaptınız";
               
            }
        }

        protected void txt_kullanici_TextChanged(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("şifre.aspx");
        }
    }
}