<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showCart.aspx.cs" Inherits="WebBookStore.WebUI.showCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text ="您购物车中图书" Font-Bold="true" Font-Names="隶书" Font-Size ="Large"></asp:Label>
            &nbsp;
            <asp:ImageButton ID="ImgBtn_ContinueBuy" runat ="server" ImageUrl ="~/image/continue.gif" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#FFFFFF" Font-Bold="True" Font-Names="华文仿宋">
            <Columns>
                <asp:BoundField DataField="Book.BookName" HeaderText="书                       名" />
                <asp:BoundField DataField="Book.Price" HeaderText="单    价  ￥" />
                <asp:BoundField DataField="Quantity" HeaderText="订购数量"/>
            </Columns>
            <HeaderStyle BackColor="#FFCC66" Font-Bold="False" />
        </asp:GridView>

        <br />
            <asp:Label ID="Label2" runat="server" Text ="消费总金额"  Font-Names="隶书" Font-Size ="Large"></asp:Label>
            <asp:TextBox ID="TBx_TotalPrice" runat="server" Width="75px"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text ="元"  Font-Names="隶书" Font-Size ="Large"></asp:Label>&nbsp;&nbsp;
            <asp:ImageButton ID="ImgBtn_SaveOrder" runat="server" ImageUrl="~/image/count.gif" />
        </div>
    </form>
</body>
</html>
