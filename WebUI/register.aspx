<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebBookStore.WebUI.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center" style="width: 728px">
            <asp:Label ID ="Label1" runat="server" Font-Bold="true" Font-Italic="false" Font-Names="方正桃体" Font-Size="Larger" Text="新用户注册" ForeColor="#FF9900"></asp:Label>
        </div>
        <div>
            <div class="left">
                <div>
                    <asp:Label ID="Label2" runat="server" Font-Names="华文楷体" Font-Size="Medium" Text="用户名："></asp:Label>
                    &nbsp;&nbsp;<asp:TextBox ID="TBx_Usr" runat="server" Font-Size="Medium" Width="90px">
                    </asp:TextBox><asp:RequiredFieldValidator ID="ReqName" runat="server" ControlToValidate="TBx_Usr" Font-Bold="True" ForeColor="Red" ErrorMessage="用户名不能为空" Font-Size="Small">（必填）</asp:RequiredFieldValidator>
                    <br /><br />
                </div>
                <div>
                    <asp:Label ID="Label3" runat="server" Font-Names="华文楷体" Font-Size="Medium" Text="密 码："></asp:Label>
                    &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TBx_Pwd" runat="server" Width="94px" TextMode="Password"></asp:TextBox>
                    <br /><br />
                </div>
                <div>
                    <asp:Label ID="Label10" runat="server" Font-Names="华文楷体" Font-Size="Medium" Text="确认密码："></asp:Label>
                    <asp:TextBox ID="TBx_RPwd" runat="server" Width="90px" TextMode="Password">
                    </asp:TextBox><asp:CompareValidator ID="ComparePassword" runat="server" ControlToCompare="TBx_Pwd" ControlToValidate="TBx_RPwd" Font-Bold="True" ForeColor="Red" ErrorMessage="两次输入密码必须一致" Font-Size="Small">（不一致）</asp:CompareValidator>
                    <br /><br />
                </div>
                <div>
                    <asp:Label ID="Label4" runat="server" Font-Names="华文楷体" Font-Size="Medium" Text="性 别："></asp:Label>
                    &nbsp;&nbsp;&nbsp;<asp:RadioButton ID="RBtn_male" runat="server" Font-Names="华文新魏" Font-Size="Medium" Text="男" Checked="True" GroupName="sexchoice" />&nbsp;
                    &nbsp;<asp:RadioButton ID="RBtn_female" runat="server" Font-Names="华文新魏" Font-Size="Medium" Text="女" GroupName="sexchoice" />
                    <br /><br />
                </div>
                <div>
                    <asp:Label ID="Label8" runat="server" Font-Names="华文楷体" Font-Size="Medium" Text="年 龄："></asp:Label>
                    &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TBx_Age" runat="server" Width="94px">
                    </asp:TextBox><asp:RangeValidator ID="RngAge" runat="server" ControlToValidate="TBx_Age" MaximumValue="100" MinimumValue="5" Type="Integer" Font-Bold="True" ForeColor="Red" ErrorMessage="允许的年龄范围为5~100岁" Font-Size="Small">（超范围）</asp:RangeValidator>
                    <br /><br />
                </div>
                <div>
                    <asp:Label ID="Label5" runat="server" Font-Names="华文楷体" Font-Size="Medium" Text="出生日期："></asp:Label>
                    <asp:TextBox ID="TBx_Date" runat="server" Width="164px" ReadOnly="True"></asp:TextBox>
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="Lime" ForeColor="Black" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                </div>
            </div>
            <div class="right">
                <div>
                    <asp:Label ID="Label6" runat="server" Font-Names="华文楷体" Font-Size="Medium" Text="学 历："></asp:Label>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/重新填写.png" align="right" ToolTip="重新填写" />
                    <br />
                    <asp:ListBox ID="ListBox1" runat="server" Height="99px" Width="228px">
                        <asp:ListItem>小学</asp:ListItem>
                        <asp:ListItem>初中</asp:ListItem>
                        <asp:ListItem Value="高中">高中/中专技校</asp:ListItem>
                        <asp:ListItem Selected="True" Value="大学">本科（大专）/高职高专/自考本科</asp:ListItem>
                        <asp:ListItem Value="研究生">硕士/工程硕士</asp:ListItem>
                        <asp:ListItem Value="博士">博士（后）/海归</asp:ListItem>
                        <asp:ListItem Value="不详">以上都不是</asp:ListItem>
                    </asp:ListBox>
                    <br /><br /><br />
                </div>
                <div>
                    <asp:Label ID="Label7" runat="server" Font-Names="华文楷体" Font-Size="Medium" Text="密码提示问题："></asp:Label>&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem Value="0">请任选一项</asp:ListItem>
                        <asp:ListItem Value="1">母亲的生日</asp:ListItem>
                        <asp:ListItem Value="2">最喜欢看的书</asp:ListItem>
                        <asp:ListItem Value="3">最难忘的日子</asp:ListItem>
                    </asp:DropDownList><asp:RequiredFieldValidator ID="ReqQuestion" runat="server" ControlToValidate="DropDownList1" Font-Bold="True" ForeColor="Red" InitialValue="0" ErrorMessage="必须选择设置一个密码提示问题" Font-Size="Small">（必选）</asp:RequiredFieldValidator>
                    <br />
                </div>
                <div>
                    <asp:Label ID="Lbl_Answer" runat="server" Font-Names="华文楷体" Font-Size="Medium" Text="密码提示答案："></asp:Label>&nbsp;
                    <asp:TextBox ID="TBx_Answer" runat="server"></asp:TextBox>
                    <br /><br /><br />
                </div>
                <div>
                    <asp:Label ID="Label9" runat="server" Font-Names="华文楷体" Font-Size="Medium" Text="兴趣爱好（多选）："></asp:Label>
                    <br />
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="唱歌" Font-Names="华文新魏" Font-Size="Medium" />&nbsp;
                    <asp:CheckBox ID="CheckBox2" runat="server" Font-Names="华文新魏" Text="阅读" />&nbsp;
                    <asp:CheckBox ID="CheckBox3" runat="server" Font-Names="华文新魏" Font-Size="Medium" Text="跳舞" />&nbsp;
                    <asp:CheckBox ID="CheckBox4" runat="server" Font-Names="华文新魏" Font-Size="Medium" Text="游泳" />&nbsp;
                    <asp:CheckBox ID="CheckBox5" runat="server" Font-Names="华文新魏" Font-Size="Medium" Text="旅行" />
                    <br /><br /><br />
                </div>
                <div>
                    <asp:Label ID="Label11" runat="server" Font-Names="华文楷体" Font-Size="Medium" Text="电子邮件："></asp:Label>
                    <asp:TextBox ID="TBx_Email" runat="server" Font-Size="Medium" Width="160px">
                    </asp:TextBox><asp:RegularExpressionValidator ID="RegularEmail" runat="server" ControlToValidate="TBx_Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="电子邮件地址必须采用name@domain.xyz格式" Font-Bold="True" ForeColor="Red" Font-Size="Small">（无效格式）</asp:RegularExpressionValidator>
                    <br /><br />
                </div>
                <div>
                    <div style="width: 385px; height: 36px">
                        <asp:CheckBox ID="CBx_LicenseAgreement" runat="server" Font-Names="华文楷体" Font-Size="Medium" Text="我已阅读并同意遵守" AutoPostBack="True" OnCheckedChanged="CBx_LicenseAgreement_CheckedChanged" />
                        <asp:HyperLink ID="HyperLink1" runat="server" BorderColor="#FFCC66" Font-Italic="True" Font-Names="黑体" Font-Size="Medium" Font-Underline="True">网站服务条款</asp:HyperLink>
                        <asp:Button ID="Btn_Submit" runat="server" Font-Bold="False" Font-Names="隶书" Font-Size="X-Large" ForeColor="Gray" Text="提 交" align="right" Height="30px" style="margin-left: 0px" Enabled="False" OnClick="Btn_Submit_Click" />                        
                    </div>
                </div>
            </div>
        </div>
        <div>
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="黑体" Font-Size="Small" ForeColor="Red" />
        </div>
    </form>
</body>
</html>
