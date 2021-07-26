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
    public partial class WebForm1 : System.Web.UI.Page
    {
        sqlbaglantı baglan = new sqlbaglantı();

        protected void Page_Load(object sender, EventArgs e)
        { 
            SqlCommand cmd = new SqlCommand("Select * from Haberler", baglan.baglan());
            SqlDataReader oku = cmd.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();

        }
    }
}