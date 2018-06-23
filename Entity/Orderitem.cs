using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebBookStore.Entity
{
    public class Orderitem
    {
        private Book m_book;				            //"图书编号"字段(该订单项所对应的图书)
        private Orders m_order;			            //"订单编号"字段(该订单项属于哪个订单)
        private int m_quantity;                         //"数量"字段

        public Book Book                              //获取"图书编号"属性,从Book获取
        {
            set { this.m_book = value; }
            get { return this.m_book; }
        }

        public Orders Order                        //获取"订单编号"属性,从Orders获取
        {
            set { this.m_order = value; }
            get { return this.m_order; }
        }

        public int Quantity                             //设置或获取"数量"属性
        {
            set { this.m_quantity = value; }
            get { return this.m_quantity; }
        }
    }
}
