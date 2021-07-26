using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace MaysaGazete.admin
{
    public partial class kategoriler : System.Web.UI.Page
    {
        string id1 = "";
        string islem = "";

        sqlbaglantı baglan = new sqlbaglantı();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["YoneticiKullaniciAd"] == null)
            {
                Response.Redirect("defaultadmin.aspx");
            }

            else if (Page.IsPostBack == false)
            {
                id1 = Request.QueryString["kategoriid"];
                islem = Request.QueryString["islem"];
            }
            SqlCommand cmd = new SqlCommand("select * from Kategoriler", baglan.baglan());
            SqlDataReader oku = cmd.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();


            if (islem == "sil")
            {
                SqlCommand cmd1 = new SqlCommand("delete from Kategoriler where Kategoriid=@a1", baglan.baglan());

                cmd1.Parameters.AddWithValue("@a1", id1);
                cmd1.ExecuteNonQuery();
                baglan.baglan().Close();
                Panel2.Visible = true;
                                
            }
            Panel2.Visible = false;
            Panel4.Visible = false;
        }
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
        protected void btn_katEkle_Click(object sender, EventArgs e)
        {


            if (file_katResim.HasFile == false)
            {

                lbl_hata.Text = "Resim Ekle";
                Panel4.Visible = true;
            }
            else
            {
                file_katResim.SaveAs(Server.MapPath("/resimler/" + file_katResim.FileName));
                SqlCommand cmd = new SqlCommand("insert into Kategoriler (KategoriAd,KategoriResim) values(@p1,@p2)", baglan.baglan());
                cmd.Parameters.AddWithValue("@p1", txt_katAd.Text);              
                cmd.Parameters.AddWithValue("@p2", "~/resimler/" + file_katResim.FileName);
                cmd.ExecuteNonQuery(); 
                baglan.baglan().Close();
                lbl_hata.Text = "Başarıyla eklendi";
                Panel4.Visible = true;
                txt_katAd.Text = "";
                

            }

        }
    }
    }
