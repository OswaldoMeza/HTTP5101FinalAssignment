using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppFinal
{
    public partial class PageCRUD: System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string titleKey = "";
            string descriptionKey = "";
            string bodyKey = "";
            if (Page.IsPostBack)
            {
                titleKey = page_title.Text;
                descriptionKey = page_description.Text;
                bodyKey = page_body.Text;
            }
            string query = "insert into PAGES(pagetitle, pagedescription, pagebody)";

            if (titleKey != "" || descriptionKey != "" || bodyKey != "")
            {
                query += " values(' "+ titleKey + " ' " + ", ' " + descriptionKey + " ' " +", ' " + bodyKey + ")";
            }
            //run sql query here using c#


        }
    }
}