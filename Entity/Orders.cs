using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebBookStore.Entity
{
    public class Orders
    {
        private User m_user;                          //"用户编号"字段(订单输入用户)
        private DateTime m_orderdate;                   //"订单日期"字段
        private List<Orderitem> m_orderitems = new List<Orderitem>();

        public User User                              //获取"用户编号"属性,从User获取
        {
            set { this.m_user = value; }
            get { return this.m_user; }
        }

        public DateTime Orderdate                       //设置或获取"订单日期"属性
        {
            set { this.m_orderdate = value; }
            get { return this.m_orderdate; }
        }

        public List<Orderitem> Orderitems
        {
            set { this.m_orderitems = value; }
            get { return this.m_orderitems; }
        }

    }
}
