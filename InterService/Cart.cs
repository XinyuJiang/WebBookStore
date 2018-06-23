using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebBookStore.Entity;

namespace WebBookStore.InterService
{
    public class Cart
    {
        protected List<Orderitem> items;    //属性items
        //构造方法
        public Cart()
        {
            if (items == null)
            {
                items = new List<Orderitem>();
            }
        }

        //添加图书到购物车
        public void addBook(Orderitem orderitem)
        {
            items.Add(orderitem);
        }

        //计算总价格
        public int getTotalPrice()
        {
            int totalPrice = 0;
            foreach(Orderitem item in items)
            {
                Orderitem orderitem = item;
                Book book = orderitem.Book;
                int quantity = orderitem.Quantity;
                totalPrice += book.Price * quantity;
            }
            return totalPrice;
        }

        public List<Orderitem> getItems()
        {
            return items;
        }

        public void setItems(List<Orderitem> items)
        {
            this.items = items;
        }
    }
}
