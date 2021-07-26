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
    public partial class HakkimizdaAdmin : System.Web.UI.Page
    { 
        sqlbaglantı baglan = new sqlbaglantı();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["YoneticiKullaniciAd"] == null)
            {
                Response.Redirect("defaultadmin.aspx");
            }
            Panel2.Visible = false;

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select * from Hakkimizda", baglan.baglan());
                SqlDataReader oku = komut.ExecuteReader();
                if (oku.Read())
                {
                    txt_hakkimizda.Text = oku[1].ToString();
                   
                }
                baglan.baglan().Close();
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
            SqlCommand komut1 = new SqlCommand("update Hakkimizda set Metin=@p1", baglan.baglan());
            komut1.Parameters.AddWithValue("@p1", txt_hakkimizda.Text);
          
            komut1.ExecuteNonQuery();
            baglan.baglan().Close();
        }
    }
}