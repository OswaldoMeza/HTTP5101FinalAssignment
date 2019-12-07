using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppFinal
{
    public partial class ShowPages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool valid = true;
            string pageid = Request.QueryString["pageid"];
            if (String.IsNullOrEmpty(pageid)) valid = false;

            //We will attempt to get the record we need
            if (valid)
            {
                var db = new DATABASE();
                Dictionary<String, String> page_record = db.FindPage(Int32.Parse(pageid));

                if (page_record.Count > 0)
                {
                    pageTitle.InnerHtml = page_record["pagetitle"];
                    pageBody.InnerHtml = page_record["pagebody"];
                }
                else
                {
                    valid = false;
                }
            }

            if (!valid)
            {
                page_info.InnerHtml = "There was an error finding that page.";
            }
        }
    }
}