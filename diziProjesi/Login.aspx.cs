using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziProjesi.Entity;

namespace diziProjesi
{
    public partial class Login : System.Web.UI.Page
    {
        DiziEntities ent = new DiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {

            adminGiris();

        }

        public void adminGiris()
        {
            var sorgu = (from x in ent.ADMINGIRIS
                         where x.KULLANICI == TextBox1.Text
                         && x.SIFRE == TextBox2.Text
                         select x);


            if (sorgu.Count() > 0)
            {
                Session.Add("KULLANICI", TextBox1.Text);
                Response.Redirect("/AdminSayfalar/Bloglar.aspx");
            }
            else
            {
                lblHataMesaji.Text = "Giriş Bilgileriniz Hatalı";
                lblHataMesaji.Visible = true;
            }
        }



    }
}