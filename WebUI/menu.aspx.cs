using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebBookStore.Entity;
using WebBookStore.InterService;

namespace WebBookStore.WebUI
{
    public partial class menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                try
                {
                    TreeNode rootNode = new TreeNode();
                    rootNode.Text = "图书分类";
                    List<Catalog> lcatalogs = new List<Catalog>();
                    lcatalogs = (List<Catalog>)(new LInterService()).getAllCatalogs();//获取所有图书类别

                    for(int i = 0; i < lcatalogs.Count; i++)
                    {
                        rootNode.ChildNodes.Add(new TreeNode(lcatalogs[i].CatalogName));
                    }
                    TreeView1.Nodes.Add(rootNode);
                }
                catch
                {
                    return;
                }
            }
        }
        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {
            Session["lbooks"] = (new LInterService()).getBookbyCatalog(TreeView1.SelectedNode.Text);
            Response.Write("<script>parent.main.location='browseBookPaging.aspx'</script>");
        }
    }
}