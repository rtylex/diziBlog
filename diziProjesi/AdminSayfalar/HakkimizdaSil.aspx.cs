using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziProjesi.Entity;

namespace diziProjesi.AdminSayfalar
{
    public partial class HakkimizdaSil : System.Web.UI.Page
    {
        DiziEntities ent = new DiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            hakkimizdaSil();
        }

        public void hakkimizdaSil()
        {
            int x = Convert.ToInt32(Request.QueryString["ID"]);
            var hakkimizda = ent.TBLHAKKIMIZDA.Find(x);
            ent.TBLHAKKIMIZDA.Remove(hakkimizda);
            ent.SaveChanges();
            Response.Redirect("/AdminSayfalar/Hakkimizda.aspx");

        }
    }
}