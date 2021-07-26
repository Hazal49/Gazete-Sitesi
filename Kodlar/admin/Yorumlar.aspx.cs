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
    public partial class Yorumlar : System.Web.UI.Page
    {
        sqlbaglantı baglan = new sqlbaglantı();
         
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["YoneticiKullaniciAd"] == null)
            {
                Response.Redirect("defaultadmin.aspx");
            }
            Panel1.Visible = false;
            Panel4.Visible = false;

            //Onaylı Yorum
            SqlCommand komut = new SqlCommand("select * from Yorumlar where YorumOnay=1", baglan.baglan());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();


            //Onaysız Yorum
            SqlCommand komut1 = new SqlCommand("select * from Yorumlar where YorumOnay=0", baglan.baglan());
            SqlDataReader oku1 = komut1.ExecuteReader();
            DataList2.DataSource = oku1;
            DataList2.DataBind();


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
    }
}