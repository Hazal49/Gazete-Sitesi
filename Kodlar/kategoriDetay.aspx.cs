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
    public partial class kategoriDetay : System.Web.UI.Page
    {

        sqlbaglantı baglan = new sqlbaglantı();
        string kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriid = Request.QueryString["Kategoriid"];
            if (Page.IsPostBack == false)
            {
                SqlCommand cmd1 = new SqlCommand("select * from Haberler where Kategoriid=@p1", baglan.baglan());
                cmd1.Parameters.AddWithValue("@p1", kategoriid);
                SqlDataReader oku1 = cmd1.ExecuteReader();
                DataList3.DataSource = oku1;
                DataList3.DataBind();
               
            }
        }
    }
}