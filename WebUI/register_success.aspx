<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register_success.aspx.cs" Inherits="WebBookStore.WebUI.register_success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

        <asp:Label ID="Lbl_Welcome" runat="server" Font-Names="华文琥珀" Font-Size="Large" ForeColor="#FF0066"></asp:Label>
        <br /><br />
        <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Names="方正姚体" Text="您的注册信息如下："></asp:Label>
        <br />
        <asp:TextBox ID="TBx_Info" runat="server" BorderStyle="None" Height="136px" ReadOnly="True" TextMode="MultiLine" Width="271px" BackColor="#CCCCCC" BorderColor="White" Font-Names="幼圆" Font-Size="Medium"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label3" runat="server" Font-Names="华文楷体" Text="请保管好您的个人信息，切勿泄露！祝购书愉快。"></asp:Label>


        </div>
    </form>
</body>
</html>
