using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziProjesi.Entity;


namespace diziProjesi.AdminSayfalar
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        DiziEntities ent = new DiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            yorumList();

            if (Session["KULLANICI"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
        }

        public void yorumList()
        {
            var yorumlar = (from x in ent.TBLYORUM
                            select new
                            {
                                x.YORUMID,
                                x.KULLANICIAD,
                                x.TBLBLOG.BLOGBASLIK,
                                x.YORUMICERIK

                            }).ToList();
            Repeater1.DataSource = yorumlar;
            Repeater1.DataBind();
        }
    }
}