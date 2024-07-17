using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziProjesi.Entity;

namespace diziProjesi.AdminSayfalar
{
    public partial class Blogguncelle : System.Web.UI.Page
    {
        DiziEntities ent = new DiziEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            ekranaBilgiYazdir();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            blogGuncelle();
        }

        public void ekranaBilgiYazdir()
        {
            int y = int.Parse(Request.QueryString["BLOGID"]);
            if (Page.IsPostBack == false)
            {
                var turler = (from x in ent.TBLTUR
                              select new
                              {
                                  x.TURID,
                                  x.TURAD
                              }).ToList();

                DropDownList1.DataSource = turler;
                DropDownList1.DataBind();

                var kategoriler = (from x in ent.TBLKATEGORI
                                   select new
                                   {
                                       x.KATEGORIID,
                                       x.KATEGORIAD

                                   }).ToList();
                DropDownList2.DataSource = kategoriler;
                DropDownList2.DataBind();

                var deger = ent.TBLBLOG.Find(y);
                txtBlokBaslik.Text = deger.BLOGBASLIK;
                txtBlogTarih.Text = deger.BLOGTARIH.ToString();
                txtBlogGorsel.Text = deger.BLOGGORSEL;
                txtBlogIcerik.Text = deger.BLOGICERIK;
                //DropDownList1.SelectedValue = deger.BLOGTUR.ToString();
                //DropDownList2.SelectedValue = deger.BLOGKATEGORI.ToString();



                if (RadioButtonList1.SelectedValue == "1")
                {
                    deger.pasifMi_ = false; // Aktif seçiliyse false (0) olarak kaydet
                }
                else if (RadioButtonList1.SelectedValue == "2")
                {
                    deger.pasifMi_ = true; // Pasif seçiliyse true (1) olarak kaydet
                }
            }
        }

        public void blogGuncelle()
        {
            int y = int.Parse(Request.QueryString["BLOGID"]);
            var blog = ent.TBLBLOG.Find(y);
            
            blog.BLOGBASLIK = txtBlokBaslik.Text;
            blog.BLOGTARIH = DateTime.Parse(txtBlogTarih.Text);
            blog.BLOGGORSEL = txtBlogGorsel.Text;
            blog.BLOGICERIK = txtBlogIcerik.Text;
            blog.BLOGOZET = TextBox1.Text;
            blog.BLOGTUR = byte.Parse(DropDownList1.SelectedValue);
            blog.BLOGKATEGORI = byte.Parse(DropDownList2.SelectedValue);

            if (RadioButtonList1.SelectedValue == "1")
            {
                blog.pasifMi_ = false; // Aktif seçiliyse false (0) olarak kaydet
            }
            else if (RadioButtonList1.SelectedValue == "2")
            {
                blog.pasifMi_ = true; // Pasif seçiliyse true (1) olarak kaydet
            }

            ent.SaveChanges();
            Response.Redirect("Bloglar.aspx");
        }
    }
}