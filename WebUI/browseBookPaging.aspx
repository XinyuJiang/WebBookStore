<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="browseBookPaging.aspx.cs" Inherits="WebBookStore.WebUI.browseBookPaging" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>    
        <asp:ListView ID="ListView1" runat="server">
            <ItemTemplate>
                <asp:Table ID="Table" runat="server" Width="450px">
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server"><asp:Image ID="Image1" runat="server" src='<%# DataBinder.Eval(Container.DataItem, "picture") %>' Width="118px" Height="166px" Border="0" /></asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:Table ID="Table1" runat="server" Width="312px">
                                <asp:TableRow runat="server"><asp:TableCell ID="Book1" runat="server" Font-Names="华文楷体">&nbsp;书&nbsp;&nbsp;名：《<%# DataBinder.Eval(Container.DataItem, "bookname") %>》</asp:TableCell></asp:TableRow>
                                <asp:TableRow runat="server"><asp:TableCell runat="server" Font-Names="微软雅黑">&nbsp;ISBN：&nbsp;&nbsp;<%# DataBinder.Eval(Container.DataItem, "isbn") %></asp:TableCell></asp:TableRow>
                                <asp:TableRow runat="server"><asp:TableCell runat="server" Font-Names="华文楷体">&nbsp;价&nbsp;&nbsp;格：&nbsp;&nbsp;<%# DataBinder.Eval(Container.DataItem, "price") %>￥</asp:TableCell></asp:TableRow>
                                <asp:TableRow runat="server"><asp:TableCell runat="server" Font-Names="华文楷体">&nbsp;数&nbsp;&nbsp;量：&nbsp;&nbsp;<asp:TextBox runat="server" Font-Size="Large" Width="50"></asp:TextBox></asp:TableCell></asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/image/buy.gif" HotSpotMode="PostBack" >
                                            <asp:CircleHotSpot Radius="50" X="40" Y="10" />
                                        </asp:ImageMap>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table> 
            </ItemTemplate>
            <LayoutTemplate>
                <ul id="itemPlaceholderContainer" runat="server" style="">
                    <li style="">
                        <li id="itemPlaceholder" runat="server"></li>
                    </li>
                </ul>
                <div style="">
                    <asp:DataPager ID="DataPager" PageSize="3" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="true" ShowLastPageButton="true" FirstPageText="首页" LastPageText="尾页" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
        </asp:ListView>
    </div>
    </form>
</body>
</html>
