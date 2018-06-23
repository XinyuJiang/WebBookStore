using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebBookStore.InterService;

namespace WebBookStore.WebUI
{
    public partial class showCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Cart cart = (Cart)Session["cart"];
            if (cart != null)
            {
                GridView1.DataSource = cart.getItems();
                GridView1.DataBind();
                TBx_TotalPrice.Text = (new LInterService(cart)).getTotalPrice().ToString();
            }
            else
            {
                GridView1.DataSource = null;
                GridView1.DataBind();
            }
        }
    }
}