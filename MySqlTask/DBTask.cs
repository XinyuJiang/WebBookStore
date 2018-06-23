using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebBookStore.Entity;

namespace WebBookStore.MySqlTask
{
    public class DBTask
    {

        //定义数据库连接、
        private string bookstoreConstr = "server=localhost;User Id = root;password=123456;database=bookstore;Character Set=utf8;SslMode = none;  "; //访问"网上书店"后台数据库bookstore
        private MySqlConnection myBCon;

        //方法：创建数据库连接
        private void createConnection()
        {
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

        //方法：注册新用户
        public void registerUser(User user)
        {
            //用户信息写入数据库
            string mySql = "insert into user(username, password) values('" + user.UserName + "','" + user.PassWord  + "')";
            createConnection();
            MySqlCommand cmd = new MySqlCommand(mySql, myBCon);

            cmd.ExecuteNonQuery();
        }

        //方法：获取一注册用户的信息
        public User getRegUser(string username)
        {
            User user = null;
            string mySql = "select * from user where username='" + username + "'";
            createConnection();
            MySqlCommand cmd = new MySqlCommand(mySql, myBCon);
            MySqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                user = new User();
                user.UserName = Convert.ToString(dr["username"]);
                user.PassWord = Convert.ToString(dr["password"]);
            }
            return user;
        }

        //方法：得到所有图书类别
        public IList<Catalog> getAllCatalogs()
        {
            List<Catalog> lcatalogs = new List<Catalog>();
            string mySql = "select * from catalog";
            createConnection();
            MySqlCommand cmd = new MySqlCommand(mySql, myBCon);
            MySqlDataReader dr = cmd.ExecuteReader();//在线读取图书类别
        
            while (dr.Read())
            {
                Catalog lcatalog = new Catalog();
                lcatalog.CatalogName = Convert.ToString(dr["catalogname"]);

                lcatalogs.Add(lcatalog);

            }
            return lcatalogs;

        }

        //方法:通过图书类别名称,得到这个类别下的所有图书
        public IList<Book> getBookbyCatalog(string catalogname)
        {
            createConnection();
            string mySql = "select catalogid from catalog where catalogname='" + catalogname + "'";
            MySqlDataAdapter mda = new MySqlDataAdapter(mySql, myBCon);
            DataSet ds = new DataSet();
            mda.Fill(ds, "CID");
            List<Book> lbooks = new List<Book>();
            mySql = "select * from book where catalogid=" + int.Parse(ds.Tables["CID"].Rows[0][0].ToString());
            MySqlCommand cmd = new MySqlCommand(mySql, myBCon);
            MySqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Book lbook = new Book();
                lbook.BookName = Convert.ToString(dr["bookname"]);
                lbook.Isbn = Convert.ToString(dr["bookid"]);
                lbook.Price = int.Parse(dr["price"].ToString());
                lbook.Picture = Convert.ToString(dr["picture"]);
                lbooks.Add(lbook);
            }
            return lbooks;
        }

        public IList<Book> getRequiredBookbyName(string name)
        {
            createConnection();
            List<Book> lbooks = new List<Book>();                   //存放图书实体列表
            string mySql = "select * from book where bookname like '" + name + "%'";
            MySqlCommand cmd = new MySqlCommand(mySql, myBCon);
            MySqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Book lbook = new Book();
                lbook.BookName = Convert.ToString(dr["bookname"]);
                lbook.Isbn = Convert.ToString(dr["bookid"]);
                lbook.Price = int.Parse(dr["price"].ToString());
                lbook.Picture = Convert.ToString(dr["picture"]);
                lbooks.Add(lbook);
            }
            return lbooks;
        }

        //方法:根据"书名"得到图书信息
        public Book getBookbyName(string name)
        {
            createConnection();
            string mySql = "select * from book where bookname='" + name + "'";
            MySqlDataAdapter mda = new MySqlDataAdapter(mySql, myBCon);
            DataSet ds = new DataSet();
            mda.Fill(ds, "ONEBOOK");
            Book book = new Book();
            book.BookName = ds.Tables["ONEBOOK"].Rows[0]["bookname"].ToString();
            book.Isbn = ds.Tables["ONEBOOK"].Rows[0]["bookid"].ToString();
            book.Price = int.Parse(ds.Tables["ONEBOOK"].Rows[0]["price"].ToString());
            book.Picture = ds.Tables["ONEBOOK"].Rows[0]["picture"].ToString();
            return book;
        }

    }
}
