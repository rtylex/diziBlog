using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziProjesi.Entity;

namespace diziProjesi
{
    public partial class iletisim : System.Web.UI.Page
    {
        DiziEntities ent = new DiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TBLILETISIM t = new TBLILETISIM();
            t.ADSOYAD = TextBoxAdSoyad.Text;
            t.KONU = TextBoxKonu.Text;
            t.MAIL = TextBoxMail.Text;
            t.TELEFON = TextBoxPhone.Text;
            t.MESAJICERIK = TextBoxMesaj.Text;

            ent.TBLILETISIM.Add(t);
            ent.SaveChanges();


        }


    }
}