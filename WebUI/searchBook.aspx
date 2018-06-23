<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="searchBook.aspx.cs" Inherits="WebBookStore.WebUI.searchBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <asp:TextBox ID="TBx_bookname" runat ="server" Width="390px"></asp:TextBox>&nbsp;
           <asp:ImageButton ID="ImgBtn_search" runat="server" ImageUrl="~/image/search.jpg" OnClick="ImgBtn_search_Click" />

        </div>
    </form>
</body>
</html>
