using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebBookStore.Entity
{
    public class Catalog
    {
        private string m_catelogid;
        private string m_catalogname;

        public string CatalogId
        {
            set { this.m_catelogid = value; }
            get { return m_catelogid; }
        }

        public string CatalogName               //设置或获取“分类名称”属性
        {
            set { this.m_catalogname = value; }
            get { return m_catalogname; }
        }
    }
}
