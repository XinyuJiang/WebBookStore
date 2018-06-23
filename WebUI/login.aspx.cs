using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using WebBookStore.Entity;
using WebBookStore.InterService;

namespace WebBookStore.WebUI
{
    public partial class login : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void loginBtn_Click(object sender, EventArgs e)
        {
            Session["username"] = Request.Form["Tb_UserName"];  //保存Session变量username
            Session["password"] = Request.Form["PassWord"];     //获取用户输入的密码
            //先封装成User
            User user = new User();
            user.UserName = Session["username"].ToString();
            user.PassWord = Session["password"].ToString();
            //执行登录业务逻辑
            string msg = (new InterService.LInterService()).loginBookstore(user);
            if (msg == "") Response.Redirect("login_success.aspx");
            else
            {
                Session["errormsg"] = msg;
                Response.Redirect("login_failure.aspx");
            }


        }
    }
}
