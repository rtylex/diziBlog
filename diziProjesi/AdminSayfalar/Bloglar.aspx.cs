using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziProjesi.Entity;


namespace diziProjesi.AdminSayfalar
{
    public partial class Bloglar : System.Web.UI.Page
    {
        DiziEntities ent = new DiziEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KULLANICI"]==null)
            {
                Response.Redirect("~/Login.aspx");
            }
            //Response.Write(Session["KULLANICI"].ToString());
            Repeater1.DataSource = ent.TBLBLOG.ToList();
            Repeater1.DataBind();   
        }
    }
}