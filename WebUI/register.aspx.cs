using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebBookStore.Entity;
using MySql.Data.MySqlClient;//访问mysql的库

using System.Drawing;
using WebBookStore.InterService;

namespace WebBookStore.WebUI
{
    public partial class register : System.Web.UI.Page
    {
        //定义数据库连接
        private string bookstoreConstr = "server=localhost;User Id = root;password=123456;database=bookstore;Character Set=utf8;SslMode = none;  "; //访问"网上书店"后台数据库bookstore
        private MySqlConnection myBCon; //定义数据库访问连接对象



        protected void Page_Load(object sender, EventArgs e)
        {
                        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;//解决玄学报错问题

            try
            {
                //初始化连接
                myBCon = new MySqlConnection(bookstoreConstr);
                myBCon.Open();
            }
            catch
            {
                return;
            }

        }

        protected void CBx_LicenseAgreement_CheckedChanged(object sender, EventArgs e)
        {
            if (CBx_LicenseAgreement.Checked)
            {
                Btn_Submit.Enabled = true;
                Btn_Submit.ForeColor = Color.FromName("#009900");       //文字变绿
            }
            else
            {
                Btn_Submit.Enabled = false;
                Btn_Submit.ForeColor = Color.Gray;                      //文字变灰
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TBx_Date.Text = Calendar1.SelectedDate.ToLongDateString();
        }

        protected void Btn_Submit_Click(object sender, EventArgs e)
        {
            Session["username"] = Request.Form["TBx_Usr"];
            if (RBtn_male.Checked)
            {
                Session["sex"] = "先生";
            }
            else
            {
                Session["sex"] = "女士";
            }
            Session["password"] = Request.Form["TBx_Pwd"];
            Session["birthday"] = Request.Form["TBx_Date"];
            Session["degree"] = ListBox1.SelectedValue;
            Session["answer"] = TBx_Answer.Text;
            Session["hobbies"] = (CheckBox1.Checked ? "唱歌 " : "") + (CheckBox2.Checked ? "阅读 " : "") + (CheckBox3.Checked ? "跳舞 " : "") + (CheckBox4.Checked ? "游泳 " : "") + (CheckBox5.Checked ? "旅行 " : "");

            User user = new User();
            user.UserName = Session["username"].ToString();
            user.PassWord = Session["password"].ToString();

            if (IsValid)//system.web.ui中自带，判断页面输入是否合法
            {
                try
                {

                    //执行业务逻辑
                    (new LInterService()).registerUser(user);
                    //跳转页面
                    Response.Redirect("register_success.aspx");
                }

                catch
                {
                    return;
                }

                }

            }
        

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (DropDownList1.SelectedValue)
            {
                case "1":
                    Lbl_Answer.Text = "您母亲的生日：";
                    break;
                case "2":
                    Lbl_Answer.Text = "你最喜欢的书：";
                    break;
                case "3":
                    Lbl_Answer.Text = "你难忘的日子：";
                    break;
            }
            Session["question"] = Lbl_Answer.Text;
        }
    }
}