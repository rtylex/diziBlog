using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziProjesi.Entity;

namespace diziProjesi.AdminSayfalar
{
    public partial class BlogSil : System.Web.UI.Page
    {
        
        DiziEntities ent = new DiziEntities(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            blogSil();
        }

        public void blogSil()
        {
            int x = Convert.ToInt32(Request.QueryString["BLOGID"]);
            var blog = ent.TBLBLOG.Find(x);
            ent.TBLBLOG.Remove(blog);
            ent.SaveChanges();
            Response.Redirect("Bloglar.aspx");
        }

    }
}