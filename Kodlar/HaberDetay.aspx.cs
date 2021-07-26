using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace MaysaGazete
{
    public partial class HaberDetay : System.Web.UI.Page
    { 
        sqlbaglantı baglan = new sqlbaglantı();
        string haberid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            haberid = Request.QueryString["Haberid"];
            SqlCommand cmd = new SqlCommand("Select HaberAd,Habericerik from Haberler where Haberid=@p1", baglan.baglan());
            cmd.Parameters.AddWithValue("@p1", haberid);
            SqlDataReader oku = cmd.ExecuteReader();
            while (oku.Read())
            {                
              detayBaslık.Text = oku[0].ToString();
              detayicerik.Text = oku[1].ToString();
            }
            baglan.baglan().Close();


            SqlCommand cmd2 = new SqlCommand("select * from Yorumlar where Haberid=@p2", baglan.baglan());
            cmd2.Parameters.AddWithValue("@p2", haberid);
            SqlDataReader oku2 = cmd2.ExecuteReader();
            DataList2.DataSource = oku2;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd3 = new SqlCommand("insert into Yorumlar(YorumAdSoyad,YorumMail,Yorumicerik,Haberid)values(@b1,@b2,@b3,@b4)", baglan.baglan());
            cmd3.Parameters.AddWithValue("@b1", txt_yorumAd.Text);
            cmd3.Parameters.AddWithValue("@b2", txt_yorumMail.Text);
            cmd3.Parameters.AddWithValue("@b3", txt_yorumicerik.Text);
            cmd3.Parameters.AddWithValue("@b4", haberid);
            cmd3.ExecuteNonQuery();
            baglan.baglan().Close();
            txt_yorumAd.Text= "";
            txt_yorumicerik.Text = "";
            txt_yorumMail.Text = "";

           



        }
    }
}