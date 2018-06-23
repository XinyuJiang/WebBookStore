<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="WebBookStore.WebUI.menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <asp:TreeView ID="TreeView1" runat="server" Font-Bold="False" Font-Names="黑体" Font-Size="Small" Font-Underline="False" ForeColor="Black" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" ShowLines="True">
            <RootNodeStyle Font-Bold="True" Font-Names="华文新魏" Font-Size="Larger" ForeColor="Black" />
            <SelectedNodeStyle Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#FF3300" />
        </asp:TreeView>    
        </div>
    </form>
</body>
</html>
