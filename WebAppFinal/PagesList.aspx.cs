using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppFinal
{
    public partial class PagesList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pages_result.InnerHtml = "";

            string searchkey = "";
            if (Page.IsPostBack)
            {

                searchkey = page_search.Text;
            }


            string query = "select * from PAGES";

            if (searchkey != "")
            {
                query += " WHERE pagetitle like '%" + searchkey + "%' ";
                query += " or pagedescription like '%" + searchkey + "%' ";
                query += " or pagebody like '%" + searchkey + "%' ";
            }
            //sql_debugger.InnerHtml = query;

            var db = new DATABASE();
            List<Dictionary<String, String>> rs = db.List_Query(query);
            foreach (Dictionary<String, String> row in rs)
            {
                pages_result.InnerHtml += "<div class=\"listitem\">";

                string pageid = row["pageid"];

                string pagetitle = row["pagetitle"];
                pages_result.InnerHtml += "<div class=\"col2\"><a href=\"ShowPages.aspx?pageid=\">" + pagetitle + "</a></div>";

                string pagedescription = row["pagedescription"];
                pages_result.InnerHtml += "<div class=\"col2last\">" + pagedescription + "</div>";

                pages_result.InnerHtml += "</div>";
            }
        }
    }
}