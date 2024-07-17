using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziProjesi.Entity;

namespace diziProjesi
{
    public partial class BlogDetay : System.Web.UI.Page
    {
        DiziEntities ent = new DiziEntities(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["BLOGID"]);
            var blog = ent.TBLBLOG.Where(x=> x.BLOGID == id).ToList();
            Repeater1.DataSource = blog;
            Repeater1.DataBind();

            var yorumlar = ent.TBLYORUM.Where(x=> x.YORUMBLOG == id).ToList();
            Repeater2.DataSource = yorumlar;
            Repeater2.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["BLOGID"]);
            TBLYORUM t = new TBLYORUM();

            t.KULLANICIAD = TextBox1.Text;
            t.MAIL = TextBox2.Text;
            t.YORUMICERIK = TextBox3.Text;
            t.YORUMBLOG = id;
            ent.TBLYORUM.Add(t);
            ent.SaveChanges();
            Response.Redirect("BlogDetay.aspx?BLOGID="+ id);
        }
    }
}