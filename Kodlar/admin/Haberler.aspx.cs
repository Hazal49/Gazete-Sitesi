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
    public partial class Haberler : System.Web.UI.Page
    {
        sqlbaglantı baglan = new sqlbaglantı();
        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["YoneticiKullaniciAd"] == null)
            {
                Response.Redirect("defaultadmin.aspx");
            }

            string islem = "";
            string id = "";

            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["Haberid"];
                islem = Request.QueryString["islem"];
                //Kategori Listesi
                SqlCommand cmd2 = new SqlCommand("select * from Kategoriler", baglan.baglan());
                SqlDataReader oku2 = cmd2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = oku2;
                DropDownList1.DataBind();
            }
            Panel2.Visible = false;
            Panel4.Visible = false;

            //Haber Listesi
            SqlCommand cmd = new SqlCommand("select * from Haberler", baglan.baglan());
            SqlDataReader oku = cmd.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

            if (islem == "sil")
            {
                SqlCommand cmd4 = new SqlCommand("delete from Haberler where Haberid=@p1", baglan.baglan());
                cmd4.Parameters.AddWithValue("@p1", id);
                cmd4.ExecuteNonQuery();
                baglan.baglan().Close();
            }
        } 
        protected void btn_katEkle_Click(object sender, EventArgs e)
        {
            file_haberResim.SaveAs(Server.MapPath("/resimler/" + file_haberResim.FileName));
            if (file_haberResim.HasFile == false)
            {

                Label2.Text = "Resim Ekle";
                Panel4.Visible = true;
            }
            else
            {
               
                //Haber Listesi
                SqlCommand cmd3 = new SqlCommand("insert into Haberler(HaberAd,Habericerik,Kategoriid,HaberResim) values(@c1,@c2,@c3,@c4)", baglan.baglan());
                cmd3.Parameters.AddWithValue("@c1", txt_haberAd.Text);
                cmd3.Parameters.AddWithValue("@c2", txt_icerik.Text);
                cmd3.Parameters.AddWithValue("@c3", DropDownList1.SelectedValue);
                cmd3.Parameters.AddWithValue("@c4", "~/resimler/"+file_haberResim.FileName);
                cmd3.ExecuteNonQuery();
                baglan.baglan().Close();
                Label2.Text = "Haber başarıyla eklendi";
                txt_haberAd.Text = "";
                txt_icerik.Text = "";
                DropDownList1.Items.Clear();
                Panel4.Visible = true;


            }
        }
    }
}