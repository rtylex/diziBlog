using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziProjesi.Entity;


namespace diziProjesi.AdminSayfalar

{
    public partial class Hakkimizda1 : System.Web.UI.Page
    {
        DiziEntities ent = new DiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            HakkimizdaListele();
        }

        public void HakkimizdaListele()
        {
            Repeater1.DataSource = ent.TBLHAKKIMIZDA.ToList();
            Repeater1.DataBind();   
        }
    }
}