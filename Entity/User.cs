using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebBookStore.Entity
{
    //用户实体类
    public class User
    {
        private int m_userid;       //“用户编号”字段
        private string m_username;  //“用户名”字段
        private string m_password;  //“密码”字段
        private string m_sex;       //“性别”字段
        public int my_age;       //“年龄”字段

        public int UserId
        {
            set { this.m_userid = value; }
            get { return this.m_userid; }
        }

        public string UserName           //设置或获取“用户编号”属性
        {
            set { this.m_username = value; }
            get { return this.m_username; }
        }
        public string PassWord
        {
            set { this.m_password = value; }
            get { return this.m_password; }
        }

        public string Sex
        {
            set { this.m_sex = value;}
            get { return this.m_sex; }
        }

        public int Age
        {
            set { this.my_age = value;}
            get { return this.my_age; }
        }
    }
}
