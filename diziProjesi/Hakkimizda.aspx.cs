using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziProjesi.Entity;

namespace diziProjesi
{
    

    public partial class Hakkımızda : System.Web.UI.Page
    {
        DiziEntities ent = new DiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = ent.TBLHAKKIMIZDA.ToList();
            Repeater1.DataBind();   
        }
    }
}