using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebBookStore.Entity
{
    public class Book
    {
        private Catalog m_catalogid = new Catalog();    //"分类编号"字段
        private string m_bookname;                      //"图书名称"字段
        private string m_isbn;                          //"ISBN"字段
        private int m_price;                            //"价格"字段
        private string m_picture;                       //"图片"字段

        public Catalog CatalogId                        //获取图书"分类编号"属性,从Catalog获取
        {
            get { return this.m_catalogid; }
        }
        public string BookName                          //设置或获取"图书名称"属性
        {
            set { this.m_bookname = value; }
            get { return this.m_bookname; }
        }
        public string Isbn                              //设置或获取"ISBN"属性
        {
            set { this.m_isbn = value; }
            get { return this.m_isbn; }
        }
        public int Price                                //设置或获取"价格"属性
        {
            set { this.m_price = value; }
            get { return this.m_price; }
        }
        public string Picture                           //设置或获取"图片"属性
        {
            set { this.m_picture = value; }
            get { return this.m_picture; }
        }
    }
}
