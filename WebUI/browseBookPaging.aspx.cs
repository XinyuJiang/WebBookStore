using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBookStore.WebUI
{
    public partial class browseBookPaging : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //从LInterService获取数据集合，绑定到页面中的ListView控件
            ListView1.DataSource = Session["lbooks"];
            ListView1.DataBind();

        }
    }
}