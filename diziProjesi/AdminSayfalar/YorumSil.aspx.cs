using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziProjesi.Entity;


namespace diziProjesi.AdminSayfalar
{

    

    public partial class YorumSil : System.Web.UI.Page
    {
        DiziEntities ent = new DiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            yorumSil();
        }

        public void yorumSil()
        {
            int x = Convert.ToInt32(Request.QueryString["YORUMID"]);
            var blog = ent.TBLYORUM.Find(x);
            ent.TBLYORUM.Remove(blog);
            ent.SaveChanges();
            Response.Redirect("Bloglar.aspx");
        }
    }
}