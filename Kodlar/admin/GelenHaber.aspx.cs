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
    public partial class GelenHaber : System.Web.UI.Page
    {
        sqlbaglantı baglan = new sqlbaglantı();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["YoneticiKullaniciAd"] == null)
            {
                Response.Redirect("defaultadmin.aspx");
            }
            Panel1.Visible = false;
            Panel2.Visible = false;

            //Onaysız haberler
            SqlCommand komut = new SqlCommand("select * from SizdenGelen where SizdenGelenOnayDurumu=0", baglan.baglan());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

            //Onaylı haberler
            SqlCommand komut2 = new SqlCommand("select * from SizdenGelen where SizdenGelenOnayDurumu=1", baglan.baglan());
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList2.DataSource = oku2;
            DataList2.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}