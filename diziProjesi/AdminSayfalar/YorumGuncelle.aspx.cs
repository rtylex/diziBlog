using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziProjesi.Entity;

namespace diziProjesi.AdminSayfalar
{
    public partial class YorumGuncelle : System.Web.UI.Page
    {
        DiziEntities ent = new DiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            bilgileriCek();
        }
        
        public void yorumGuncelle()
        {
            int z = int.Parse(Request.QueryString["YORUMID"]);
            var guncelle = ent.TBLYORUM.Find(z);

            guncelle.KULLANICIAD = txtKullaniciAdi.Text;
            guncelle.YORUMICERIK = txtYorumIcerik.Text;
            
            ent.SaveChanges();
            Response.Redirect("Bloglar.aspx");
        }

        
        public void bilgileriCek()
        {
            int y = int.Parse(Request.QueryString["YORUMID"]);

            if (Page.IsPostBack == false)
            {
                var deger = ent.TBLYORUM.Find(y);
                txtBlokBaslik.Text = deger.TBLBLOG.BLOGBASLIK;
                txtKullaniciAdi.Text = deger.KULLANICIAD;
                txtYorumIcerik.Text = deger.YORUMICERIK;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            yorumGuncelle();
        }

        
    }
}