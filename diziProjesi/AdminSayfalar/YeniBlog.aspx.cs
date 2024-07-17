using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziProjesi.Entity;


namespace diziProjesi.AdminSayfalar
{
    public partial class YeniBlog : System.Web.UI.Page
    {
        DiziEntities ent = new DiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
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

            }
        }

        protected void btnBlogKaydet_Click(object sender, EventArgs e)
        {
            btnkayit();
        }

        public void btnkayit()
        {

            if (string.IsNullOrEmpty(txtBlokBaslik.Text) ||
                string.IsNullOrEmpty(txtBlogGorsel.Text) ||
                string.IsNullOrEmpty(txtBlogIcerik.Text) ||
                string.IsNullOrEmpty(TextBox1.Text) ||
                string.IsNullOrEmpty(DropDownList1.SelectedValue) ||
                string.IsNullOrEmpty(DropDownList2.SelectedValue))
            {
                Panel1.Visible = true;
            }

            else
            {
                TBLBLOG t = new TBLBLOG();
                t.BLOGBASLIK = txtBlokBaslik.Text;
                t.BLOGGORSEL = txtBlogGorsel.Text;
                t.BLOGICERIK = txtBlogIcerik.Text;
                t.BLOGOZET = TextBox1.Text;
                t.BLOGTARIH = DateTime.Parse(txtBlogTarih.Text);
                t.BLOGTUR = byte.Parse(DropDownList1.SelectedValue);
                t.BLOGKATEGORI = byte.Parse(DropDownList2.SelectedValue);
                ent.TBLBLOG.Add(t);
                ent.SaveChanges();
                Response.Redirect("Bloglar.aspx");

                Panel1.Visible = false;
            }



        }
    }
}