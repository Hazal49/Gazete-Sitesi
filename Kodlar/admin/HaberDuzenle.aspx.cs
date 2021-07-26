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
    public partial class HaberDuzenle : System.Web.UI.Page
    {
        sqlbaglantı baglan = new sqlbaglantı();
        string id;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["YoneticiKullaniciAd"] == null)
            {
                Response.Redirect("defaultadmin.aspx");
            }

            id = Request.QueryString["Haberid"];
            if (Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("Select * from Haberler where Haberid=@p1", baglan.baglan());
                cmd.Parameters.AddWithValue("@p1", id);
                SqlDataReader oku = cmd.ExecuteReader();
                while (oku.Read())
                {
                    txt_haber.Text = oku[1].ToString();
                    txt_habericerik.Text = oku[3].ToString();
                    //file_haberduzenle.FileName= oku[2]; }
                }
                baglan.baglan().Close();


            }


            if (Page.IsPostBack == false)
            {
                //Kategori Listesi
                SqlCommand cmd2 = new SqlCommand("select * from Kategoriler", baglan.baglan());
                SqlDataReader oku2 = cmd2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = oku2;
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile == false)
            {

                Label2.Text = "Resim Ekle";

            }
            else
            {

                FileUpload1.SaveAs(Server.MapPath("/ikonlar/" + FileUpload1.FileName));

                SqlCommand cmd3 = new SqlCommand("update Haberler set HaberAd=@p1,Habericerik=@p2,Kategoriid=@p3,HaberResim=@p6 where Haberid=@p4", baglan.baglan());
                cmd3.Parameters.AddWithValue("@p1", txt_haber.Text);
                cmd3.Parameters.AddWithValue("@p2", txt_habericerik.Text);
                cmd3.Parameters.AddWithValue("@p3", DropDownList1.SelectedValue);
                cmd3.Parameters.AddWithValue("@p6", "~/ikonlar/" + FileUpload1.FileName);
                cmd3.Parameters.AddWithValue("@p4", id);
                cmd3.ExecuteNonQuery();
                baglan.baglan().Close();
                Label2.Text = "Başarıyla güncellendi.";
                txt_haber.Text = "";
                txt_habericerik.Text = "";
                DropDownList1.Items.Clear();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
                //Tüm haberlerin durumunu false yaptık
                SqlCommand cmd4 = new SqlCommand("update Haberler set Durum=0", baglan.baglan());
                cmd4.ExecuteNonQuery();
                baglan.baglan().Close();

                //id ye göre haberlerin durumunu true yaptık
                SqlCommand cmd5 = new SqlCommand("update Haberler set Durum=1 where Haberid=@p1", baglan.baglan());
                cmd5.Parameters.AddWithValue("@p1", id);
                cmd5.ExecuteNonQuery();
                Label2.Text = "Son dakika olarak güncellendi";
                txt_haber.Text = "";
                txt_habericerik.Text = "";
                DropDownList1.Items.Clear();



        }
    }
}