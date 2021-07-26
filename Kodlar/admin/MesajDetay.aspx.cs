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
    public partial class MesajDetay : System.Web.UI.Page
    {
        sqlbaglantı baglan = new sqlbaglantı();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["YoneticiKullaniciAd"] == null)
            {
                Response.Redirect("defaultadmin.aspx");
            }
            id = Request.QueryString["Mesajid"];

            SqlCommand komut = new SqlCommand("select * from Iletisim where Mesajid=@p1", baglan.baglan());
            komut.Parameters.AddWithValue("@p1",id);
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                txt_gonderen.Text = oku[1].ToString();
                txt_baslik.Text = oku[2].ToString();
                txt_mail.Text = oku[3].ToString();
                txt_icerik.Text = oku[4].ToString();
            }
            baglan.baglan().Close();
            



        }
    }
}