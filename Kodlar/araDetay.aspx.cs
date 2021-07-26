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
    public partial class araDetay : System.Web.UI.Page
    {
        sqlbaglantı baglan = new sqlbaglantı();
        string aranankelime = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            aranankelime = Request.QueryString["aranankelime"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * from Haberler where HaberAd like '%"+aranankelime+"%'",baglan.baglan());
                SqlDataReader dr = komut.ExecuteReader();
                DataList3.DataSource = dr;
                DataList3.DataBind();
            }
        }
    }
}