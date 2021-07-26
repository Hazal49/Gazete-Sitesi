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
    public partial class GununYemegiAdmin : System.Web.UI.Page
    {
        sqlbaglantı baglan = new sqlbaglantı();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["YoneticiKullaniciAd"] == null)
            {
                Response.Redirect("defaultadmin.aspx");
            }
            Panel2.Visible = false;
            SqlCommand komut = new SqlCommand("select * from Haberler", baglan.baglan());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}