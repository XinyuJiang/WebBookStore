using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebBookStore.InterService;

namespace WebBookStore.WebUI
{
    public partial class searchBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImgBtn_search_Click(object sender, ImageClickEventArgs e)
        {
            Session["lbooks"] = (new LInterService()).getRequiredBookbyName(TBx_bookname.Text);
            Session["searchString"] = TBx_bookname.Text;
            Response.Write("<script>parent.main.location='browseBookBuy.aspx'</script>");
        }
    }
}