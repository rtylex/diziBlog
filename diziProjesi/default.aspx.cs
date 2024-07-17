using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziProjesi.Entity;

namespace diziProjesi
{
    public partial class _default : System.Web.UI.Page
    {
        DiziEntities ent = new DiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //BLOG LİSTELEME
            var blogList = ent.TBLBLOG.Where(x => x.pasifMi_ == false).ToList();
            Repeater1.DataSource = blogList;
            Repeater1.DataBind();
            //KATEGORI LİSTELEME
            var kategoriList = ent.TBLKATEGORI.ToList();
            Repeater2.DataSource = kategoriList;
            Repeater2.DataBind();

            //İSTENİLEN KATEGORI GETIRME
            int KATEGORIID = Convert.ToInt32(Request.QueryString["KATEGORIID"]);

            if (KATEGORIID > 0)
            {
                var blogList2 = ent.TBLBLOG.Where(x => x.BLOGKATEGORI == KATEGORIID && x.pasifMi_ == false).ToList();
                Repeater1.DataSource = blogList2;
                Repeater1.DataBind();

            }

            //SAG MENU BLOG ADLARI LİSTELEME

            var sagMenuBloglist = ent.TBLBLOG.Take(5).ToList();
            Repeater3.DataSource = sagMenuBloglist;
            Repeater3.DataBind();

            var sagmenuYorumList = ent.TBLYORUM
            .Select(x => new
            {
                x.KULLANICIAD,
                YORUMICERIK = x.YORUMICERIK.Length > 10 ? x.YORUMICERIK.Substring(0, 10) + "..." : x.YORUMICERIK
            })
            .ToList();

            Repeater4.DataSource = sagmenuYorumList;
            Repeater4.DataBind();
        }




    }


}