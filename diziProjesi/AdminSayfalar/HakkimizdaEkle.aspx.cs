using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziProjesi.Entity;

namespace diziProjesi.AdminSayfalar
{
    public partial class Hakkimizda : System.Web.UI.Page
    {
        DiziEntities ent = new DiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnHakkimdaKaydet_Click(object sender, EventArgs e)
        {
            hakkimdaKaydet();
        }

        public void hakkimdaKaydet()
        {
            TBLHAKKIMIZDA hekle = new TBLHAKKIMIZDA();
            hekle.ACIKLAMA = txtHakkimizdaAciklama.Text;
            ent.TBLHAKKIMIZDA.Add(hekle);
            ent.SaveChanges();
        }
    }
}