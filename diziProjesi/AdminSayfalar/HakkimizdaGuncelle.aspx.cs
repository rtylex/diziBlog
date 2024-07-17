using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziProjesi.Entity;

namespace diziProjesi.AdminSayfalar
{
    public partial class HakkimizdaGuncelle : System.Web.UI.Page
    {
        DiziEntities ent = new DiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int guncelle = int.Parse(Request.QueryString["ID"]);
            var x = ent.TBLHAKKIMIZDA.Find(guncelle);

            x.ACIKLAMA = TextBox1.Text;
            ent.SaveChanges();
        }

        
    }
}