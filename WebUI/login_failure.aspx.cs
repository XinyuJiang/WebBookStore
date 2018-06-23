using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBookStore.WebUI
{
    public partial class login_failure : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblErrMsg.Text = Session["errormsg"].ToString();
        }
    }
}