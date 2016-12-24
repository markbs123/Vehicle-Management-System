<%@ Page Language="C#" AutoEventWireup="true" CodeFile="password.aspx.cs" Inherits="keshi_password" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="images/font.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #formxx
        {
            height: 233px;
        }
        .style1
        {
            width: 100%;
            height: 141px;
        }
        .left_topbg {
	background-image: url('images/content-bg.gif');
	background-repeat: repeat-x;
}
.titlebt {
	font-size: 12px;
	line-height: 26px;
	font-weight: bold;
	color: #000000;
	background-image: url('images/top_bt.jpg');
	background-repeat: no-repeat;
	display: block;
	text-indent: 15px;
	padding-top: 5px;
}

        .style2
        {
            width: 131px;
        }
        .style3
        {
            width: 171px;
        }
        .style4
        {
            width: 131px;
            font-weight: bold;
        }

    </style>
</head>
<body background="images/bg_top_goa.gif"  >
    <form id="formxx" runat="server">
    <div>
        <table width="100%" height="31" border="0" 
            cellpadding="0" cellspacing="0" class="left_topbg" id="table1">
      <tr>
        <td height="31"><div class="titlebt">
            修改密码</div></td>
      </tr>
    </table>
        </div>
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    <strong>用户名：</strong></td>
                <td class="style3">
                    <strong>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    纪检委</strong></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    原密码：</td>
                <td class="style3">
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                <asp:RequiredFieldValidator ID="rfvTxtmm0" runat="server" 
                    ControlToValidate="txtpassword" ErrorMessage="原密码不能空" 
                        style="color: #FF0000; font-size: small;"></asp:RequiredFieldValidator>
                              </td>
            </tr>
            <tr>
                <td class="style4">
                    新密码：</td>
                <td class="style3">
                    <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox></td>
                <td>
                <asp:RequiredFieldValidator ID="rfvTxtmm1" runat="server" 
                    ControlToValidate="password" ErrorMessage="新密码不能空" 
                        style="color: #FF0000; font-size: small;"></asp:RequiredFieldValidator>
                              </td>
            </tr>
            <tr>
                <td class="style4">
                    确认密码：</td>
                <td class="style3">
                    <asp:TextBox ID="password1" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
    </table>
    <br />
                    <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="确定" 
        Width="56px" />
&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="返回" 
        Width="56px" CausesValidation="False" />
    <br />
        <span style="font-size: 10pt">&nbsp;<br />
            &nbsp;</span><br />
    <br />
    </form>
</body>
</html>
