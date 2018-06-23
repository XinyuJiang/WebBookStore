using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBookStore.WebUI
{
    public partial class login_success : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Application.Lock();                     //锁定，不允许其他用户修改变量
            Application.Set("cnt", (int)Application["cnt"] + 1);    //访问计数增加1
            Application.UnLock();
            //使用request对象的servervariables数据集合读取网站所使用服务器及协议信息；访问Request对象的Browser数据集合获知用户所使用的浏览器类型及版本
            Response.Write(Session["username"] + ", 欢迎登录! 您是光临本店的第" + Application["cnt"] + "位顾客<br>");
            Response.Write("网站服务器：" + Request.ServerVariables["SERVER_SOFTWARE"] + "<br>");
            Response.Write("协议：" + Request.ServerVariables["SERVER_PROTOCOL"] + "<br>");
            Response.Write("您使用的浏览器为：" + Request.Browser.Browser + " " + Request.Browser.Version + "/" + Request.Browser.Platform);
        }
    }
}