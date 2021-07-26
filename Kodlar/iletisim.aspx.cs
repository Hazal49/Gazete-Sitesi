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
    public partial class iletisim : System.Web.UI.Page
    {
        sqlbaglantı baglan = new sqlbaglantı();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Iletisim(Mesajgonderen,MesajMail,MesajBaslik,Mesajicerik) values (@p1,@p2,@p3,@p4)", baglan.baglan());
            cmd.Parameters.AddWithValue("@p1", txtMesajGondereen.Text);
            cmd.Parameters.AddWithValue("@p2", txtmesajmail.Text);
            cmd.Parameters.AddWithValue("@p3", txt_mesajbaslik.Text);
            cmd.Parameters.AddWithValue("@p4", txt_mesaj.Text);
            cmd.ExecuteNonQuery();
            Label2.Text = "Mesajınız başarıyla iletildi";
            baglan.baglan().Close();
            txtMesajGondereen.Text = "";
            txtmesajmail.Text = "";
            txt_mesaj.Text = "";
            txt_mesajbaslik.Text = "";

        }
    }
}