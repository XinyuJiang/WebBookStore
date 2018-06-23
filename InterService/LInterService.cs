using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebBookStore.MySqlTask;
using WebBookStore.Entity;


namespace WebBookStore.InterService
{
    public class LInterService
    {

        //方法：实现“登录功能”的业务规则
        public string loginBookstore(User user)
        {
            //通过"中介者"DBTask间接地访问数据库获取该用户注册信息，以减少类和数据库的直接交互
            DBTask dbTask = new DBTask();
            User regUser = dbTask.getRegUser(user.UserName);


            if (regUser != null)
            {

                if (user.PassWord == regUser.PassWord)
                    return "";

                else
                {
                    return "密码错误！登陆失败";
                }
            }
            else
            {
                return "用户名不存在！登陆失败";
            }
        }

        //方法：实现“注册”功能的业务逻辑
        public void registerUser(User user)
        {
            //通过DBTask间接地将用户信息写入数据库
            DBTask dBTask = new DBTask();//建立DBTask的实例
            dBTask.registerUser(user);
        }

        public IList<Catalog> getAllCatalogs()
        {
            return (new DBTask()).getAllCatalogs();
            //业务层未经任何特殊处理，直接调用DBTask的getAllCatalogs()方法
        }

        public IList<Book> getBookbyCatalog(string catalogname)
        {
            return (new DBTask()).getBookbyCatalog(catalogname);
        }
    }
}
