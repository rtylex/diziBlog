using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziProjesi.Entity;

namespace diziProjesi.AdminSayfalar
{
    public partial class istatik : System.Web.UI.Page
    {
        DiziEntities ent = new DiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KULLANICI"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }

            Label1.Text = ent.TBLBLOG.Count().ToString();
            Label2.Text = ent.TBLYORUM.Count().ToString();
            Label3.Text = ent.TBLBLOG.Where(x => x.BLOGTUR == 2).Count().ToString();
            Label4.Text = ent.TBLBLOG.Where(x => x.TBLTUR.TURAD == "Dizi").Count().ToString();
            Label5.Text = ent.TBLBLOG.Where(x => x.TBLTUR.TURAD == "Animasyon").Count().ToString();
            Label6.Text = ent.TBLYORUM.GroupBy(x=> x.YORUMBLOG).OrderByDescending(x=> x.Count()).Select(y=>y.Key).FirstOrDefault().ToString();

        }


    }
}