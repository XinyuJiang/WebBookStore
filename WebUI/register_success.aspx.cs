using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBookStore.WebUI
{
    public partial class register_success : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Lbl_Welcome.Text = Session["username"] + " " + Session["sex"] + "，欢迎注册成功！";

            TBx_Info.Text += "密码： " + Session["password"] + "\r\n";
            TBx_Info.Text += "出生日期： " + Session["birthday"] + "\r\n";
            TBx_Info.Text += "学历： " + Session["degree"] + "\r\n";
            TBx_Info.Text += Session["question"].ToString() + Session["birthday"] + "\r\n";
            TBx_Info.Text += "兴趣爱好： " + Session["hobbies"];
        }
    }
}