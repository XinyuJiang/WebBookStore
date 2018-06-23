<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="browseBookBuy.aspx.cs" Inherits="WebBookStore.WebUI.browseBookBuy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="数量" Font-Names="隶书" Font-Size="Larger" ForeColor="#000000"></asp:Label>
        &nbsp;<asp:TextBox ID="TBx_Quantity" runat="server" Width="30px"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="本" Font-Names="隶书" Font-Size="Larger" ForeColor="#000000"></asp:Label>
        <br /><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#FFFFFF" Font-Bold="True" Font-Names="华文仿宋" HorizontalAlign="Left" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="BookName" HeaderText="书                       名" />
                <asp:BoundField DataField="Isbn" HeaderText="I S B N" />
                <asp:BoundField DataField="Price" HeaderText="价     格  ￥">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:CommandField ButtonType="Button" HeaderText="操     作" SelectText="购  买" ShowSelectButton="True">
                <ControlStyle Font-Names="华文新魏" Font-Size="Medium" />
                </asp:CommandField>
            </Columns>
            <HeaderStyle BackColor="#FFCC66" Font-Bold="True" Font-Names="华文楷体" Font-Size="Large" ForeColor="#000000" HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:GridView>
    </div>        
    </form>
</body>
</html>
