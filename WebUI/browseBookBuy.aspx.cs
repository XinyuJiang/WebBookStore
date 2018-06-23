using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebBookStore.InterService;

namespace WebBookStore.WebUI
{
    public partial class browseBookBuy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //从LInterService获取数据集合，绑定到页面中的GridView控件
            GridView1.DataSource = Session["lbooks"];
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Cart cart = (Cart)Session["cart"];
            Session["cart"] = (new LInterService(cart)).addToCart(GridView1.SelectedRow.Cells[0].Text, int.Parse(TBx_Quantity.Text));
            Response.Write("<script>parent.main.location='showCart.aspx'</script>");
        }
    }
}