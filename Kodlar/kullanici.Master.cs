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
    public partial class kullanici : System.Web.UI.MasterPage
    {
        sqlbaglantı baglan = new sqlbaglantı();
        public static int sayac = 0;
        public void slider()
        {
            if (sayac == 1)
            {
                Label2.Text = "<img src='resimler/arka2.jpg' width=850px height=250px/>";
            }
            else if (sayac == 2)
            {
                Label2.Text = "<img src='resimler/arkaresim.jpg' width=800px height=250px/>";
            }
            else if (sayac == 3)
            {
                Label2.Text = "<img src='resimler/intihar.jpg' width=800px height=250px/>";
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            sayac++;
            if (sayac == 4)
            {
                sayac = 1;
            }
            slider();

            SqlCommand cmd = new SqlCommand("Select * from Kategoriler", baglan.baglan());
            SqlDataReader oku = cmd.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

           
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("araDetay.aspx?aranankelime=" + txt_ara.Text.Trim());
        }
    }
}