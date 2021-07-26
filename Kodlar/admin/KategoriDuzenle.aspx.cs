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
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        sqlbaglantı baglan = new sqlbaglantı();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["YoneticiKullaniciAd"] == null)
            {
                Response.Redirect("defaultadmin.aspx");
            }
            id = Request.QueryString["Kategoriid"];
            if (Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("Select * from Kategoriler where Kategoriid=@p1", baglan.baglan());
                cmd.Parameters.AddWithValue("@p1", id);
                SqlDataReader oku = cmd.ExecuteReader();
                while (oku.Read())
                {
                    txt_katDuzenle.Text = oku[1].ToString();
                    //file_katduzenle.FileName= oku[2];

                }
                baglan.baglan().Close();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (file_katduzenle.HasFile == false)
            {

                lbl_hata.Text = "Resim Ekle";
            }
            else
            {
                file_katduzenle.SaveAs(Server.MapPath("/resimler/" + file_katduzenle.FileName));

                SqlCommand cmd2 = new SqlCommand("update Kategoriler set kategoriad=@p1,KategoriResim=@p3 where Kategoriid=@p2", baglan.baglan());
                cmd2.Parameters.AddWithValue("@p1", txt_katDuzenle.Text);
                cmd2.Parameters.AddWithValue("p3", "~/resimler/" + file_katduzenle.FileName);
                cmd2.Parameters.AddWithValue("@p2", id);
                cmd2.ExecuteNonQuery();
                baglan.baglan().Close();
                lbl_hata.Text = "Başarıyla güncellendi.";
                txt_katDuzenle.Text = "";
                

            }
        }
    }
}