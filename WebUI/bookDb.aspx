<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bookDb.aspx.cs" Inherits="WebBookStore.WebUI.bookDb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="width: 450px; height: 510px;">
    <form id="form1" runat="server">
    <div>    
        <asp:Table ID="Table" runat="server" Width="450px">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"><asp:Image ID="Image1" runat="server" src="image/SQL Server（2014）.jpg" Width="118px" Height="166px" Border="0" /></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Table ID="Table1" runat="server" Width="312px">
                        <asp:TableRow runat="server"><asp:TableCell ID="Book1" runat="server" Font-Names="华文楷体" Text="&nbsp;书&nbsp;&nbsp;名：《SQL Server实用教程（第4版）》"></asp:TableCell></asp:TableRow>
                        <asp:TableRow runat="server"><asp:TableCell runat="server" Font-Names="微软雅黑">&nbsp;ISBN：&nbsp;&nbsp;9787121266232</asp:TableCell></asp:TableRow>
                        <asp:TableRow runat="server"><asp:TableCell runat="server" Font-Names="华文楷体">&nbsp;价&nbsp;&nbsp;格：&nbsp;&nbsp;49.00￥</asp:TableCell></asp:TableRow>
                        <asp:TableRow runat="server">
                            <asp:TableCell runat="server">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/image/buy.gif" HotSpotMode="PostBack" OnClick="ImageMap1_Click">
                                    <asp:CircleHotSpot Radius="50" X="40" Y="10" />
                                </asp:ImageMap>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"><asp:Image ID="Image2" runat="server" src="image/Oracle（12c）.jpg" Width="118px" Height="166px" Border="0" /></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Table ID="Table2" runat="server" Width="312px">
                        <asp:TableRow runat="server"><asp:TableCell ID="Book2" runat="server" Font-Names="华文楷体" Text="&nbsp;书&nbsp;&nbsp;名：《Oracle实用教程（第4版）》"></asp:TableCell></asp:TableRow>
                        <asp:TableRow runat="server"><asp:TableCell runat="server" Font-Names="微软雅黑">&nbsp;ISBN：&nbsp;&nbsp;9787121273803</asp:TableCell></asp:TableRow>
                        <asp:TableRow runat="server"><asp:TableCell runat="server" Font-Names="华文楷体">&nbsp;价&nbsp;&nbsp;格：&nbsp;&nbsp;49.00￥</asp:TableCell></asp:TableRow>
                        <asp:TableRow runat="server">
                            <asp:TableCell runat="server">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageMap ID="ImageMap2" runat="server" ImageUrl="~/image/buy.gif" HotSpotMode="PostBack" OnClick="ImageMap2_Click">
                                    <asp:CircleHotSpot Radius="50" X="40" Y="10" />
                                </asp:ImageMap>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"><asp:Image ID="Image3" runat="server" src="image/MySQL（2）.jpg" Width="118px" Height="166px" Border="0" /></asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Table ID="Table3" runat="server" Width="312px">
                        <asp:TableRow runat="server"><asp:TableCell ID="Book3" runat="server" Font-Names="华文楷体" Text="&nbsp;书&nbsp;&nbsp;名：《MySQL实用教程（第2版）》"></asp:TableCell></asp:TableRow>
                        <asp:TableRow runat="server"><asp:TableCell runat="server" Font-Names="微软雅黑">&nbsp;ISBN：&nbsp;&nbsp;9787121232701</asp:TableCell></asp:TableRow>
                        <asp:TableRow runat="server"><asp:TableCell runat="server" Font-Names="华文楷体">&nbsp;价&nbsp;&nbsp;格：&nbsp;&nbsp;53.00￥</asp:TableCell></asp:TableRow>
                        <asp:TableRow runat="server">
                            <asp:TableCell runat="server">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageMap ID="ImageMap3" runat="server" ImageUrl="~/image/buy.gif" HotSpotMode="PostBack" OnClick="ImageMap3_Click">
                                    <asp:CircleHotSpot Radius="50" X="40" Y="10" />
                                </asp:ImageMap>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>    
    </div>
    </form>
</body>
</html>
