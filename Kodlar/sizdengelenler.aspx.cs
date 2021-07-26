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
    public partial class sizdengelenler : System.Web.UI.Page
    {
        sqlbaglantı baglan = new sqlbaglantı();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (fu_haberResim.HasFile == false)
            {

                Label2.Text = "Resim Ekle";
            }
            else
            {
                fu_haberResim.SaveAs(Server.MapPath("/resimler/" + fu_haberResim.FileName));

                SqlCommand cmd = new SqlCommand("insert into SizdenGelen(SizdenGelenHaberAd,SizdenGelenHabericerik,SizdenGelenHaberResim,SizdenGelenGonderenAd,SizdenGelenGonderenMail) values (@a1,@a2,@a3,@a4,@a5)", baglan.baglan());
                cmd.Parameters.AddWithValue("@a1", txt_haberAd.Text);
                cmd.Parameters.AddWithValue("@a2", txt_icerik.Text);
                cmd.Parameters.AddWithValue("@a3", "~/resimler/" + fu_haberResim.FileName);
                cmd.Parameters.AddWithValue("@a4", txt_adSoyad.Text);
                cmd.Parameters.AddWithValue("@a5", txt_mail.Text);
                cmd.ExecuteNonQuery();
                baglan.baglan().Close();
                Label2.Text = "Haberininz başarıyla gönderildi...";
                txt_mail.Text = "";
                txt_icerik.Text = "";
                txt_haberAd.Text = "";
                txt_adSoyad.Text = "";

            }
        }
    }
}