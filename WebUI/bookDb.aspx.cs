using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBookStore.WebUI
{
    public partial class bookDb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
        {
            Session["bookname"] = "《SQL Server实用教程（第4版）》，售价49.00￥。";
            Response.Redirect("showCart.aspx");
        }

        protected void ImageMap2_Click(object sender, ImageMapEventArgs e)
        {
            Session["bookname"] = "《Oracle实用教程（第4版）》，售价49.00￥。";
            Response.Redirect("showCart.aspx");
        }

        protected void ImageMap3_Click(object sender, ImageMapEventArgs e)
        {
            Session["bookname"] = "《MySQL实用教程（第2版）》，售价53.00￥。";
            Response.Redirect("showCart.aspx");
        }
    }
}