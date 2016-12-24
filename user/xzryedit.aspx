<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xzryedit.aspx.cs" Inherits="user_xzryedit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #F8F9FA;
}
    .style1
    {
        width: 88%;
    }
    .style2
    {
        height: 60px;
    }
    .style3
    {
        font-family: Arial, Helvetica, sans-serif;
        font-size: 11px;
        line-height: 18px;
        color: #000000;
        font-weight: bold;
    }
    .style4
    {
    }
    .style5
    {
        font-size: small;
    }
    .style6
    {
        font-family: Arial, Helvetica, sans-serif;
        font-size: small;
        line-height: 18px;
        color: #000000;
        font-weight: bold;
    }
-->
</style>

<link href="images/skin.css" rel="stylesheet" type="text/css" />
</head>
<body >
    <form id="formxx" runat="server">
    <div>
    
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" height="29" valign="top" background="images/mail_leftbg.gif"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td width="935" height="29" valign="top" background="images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">人员修改</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top" background="images/mail_rightbg.gif"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td height="71" valign="middle" background="images/mail_leftbg.gif">　</td>
    <td valign="top" bgcolor="#F7F8F9"><table width="100%" height="138" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="13" valign="top">&nbsp;</td>
      </tr>
      <tr>
        <td valign="top"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td>　</td>
          </tr>
          <tr>
            <td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="nowtable">
              <tr>
                <td class="style2" bgcolor="White">&nbsp;&nbsp;&nbsp;&nbsp; <strong><em>请选择要修改资料的驾驶员：</em></strong></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="12%" height="30" align="right" bgcolor="White" class="style6">
				    姓名：</td>
                <td width="2%" bgcolor="White">　</td>
                <td height="30" bgcolor="White" class="style4">　
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                <td width="67%" height="30" bgcolor="White" class="left_txt">
                <asp:RequiredFieldValidator ID="rfvTxtmm" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="姓名不能空" 
                        style="color: #FF0000; font-size: small;"></asp:RequiredFieldValidator>
                              　</td>
              </tr>
              <tr>
                <td height="30" align="right" bgcolor="White" class="style6">
				    性别：</td>
                <td bgcolor="White">　</td>
                <td height="30" bgcolor="White" class="style4">　
                         
                     
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="20px" Width="57px">
                        <asp:ListItem Selected="True">男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList>
                  </td>
                <td height="30" bgcolor="White" class="left_txt">　</td>
              </tr>
				<tr>
                <td height="30" align="right" class="style6">出生日期：</td>
                <td>　</td>
                <td height="30" class="style4" colspan="2">　
                         
                    <asp:Label ID="Label1" runat="server" 
                        style="font-size: small; font-weight: 700"></asp:Label>
&nbsp;&nbsp; <span class="style5">选择日期：</span><asp:DropDownList ID="DropDownList4" runat="server" 
                        onselectedindexchanged="DropDownList4_SelectedIndexChanged1" >
                    </asp:DropDownList>
                    <span class="style3"><strong>年</strong></span><asp:DropDownList 
                        ID="DropDownList5" runat="server" 
                        onselectedindexchanged="DropDownList5_SelectedIndexChanged1">
                    </asp:DropDownList>
                    <span class="style3"><strong>月</strong></span><asp:DropDownList 
                        ID="DropDownList6" runat="server">
                    </asp:DropDownList>
                    <strong><span class="style3">日&nbsp;&nbsp; 
                    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                        style="font-weight: 700" Text="修改" Width="55px" />
                    </span></strong></td>
              </tr>
				<tr>
                <td height="30" align="right" class="style6">身份证号码：</td>
                <td>&nbsp;</td>
                <td height="30" class="style4">&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>&nbsp;</td>
                <td height="30">
                <asp:RequiredFieldValidator ID="rfvTxtmm1" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="身份证号不能空" 
                        style="color: #FF0000; font-size: small;"></asp:RequiredFieldValidator>
                              </td>
              </tr>
				<tr>
                <td height="30" align="right" class="style6">驾驶证号码：</td>
                <td>&nbsp;</td>
                <td height="30" class="style4">&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>&nbsp;</td>
                <td height="30">
                <asp:RequiredFieldValidator ID="rfvTxtmm2" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="驾驶证号不能空" 
                        style="color: #FF0000; font-size: small;"></asp:RequiredFieldValidator>
                              </td>
              </tr>
				<tr>
                <td height="30" align="right" class="style6">联系方式：</td>
                <td>&nbsp;</td>
                <td height="30" class="style4">&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>&nbsp;</td>
                <td height="30">&nbsp;</td>
              </tr>
				<tr>
                <td height="30" align="right" class="style6">所属单位：</td>
                <td>&nbsp;</td>
                <td height="30" class="style4">&nbsp;&nbsp;&nbsp;
                        &nbsp;<asp:Label ID="Label2" runat="server" 
                        style="font-weight: 700; font-size: small" Text="Label"></asp:Label>
                    </td>
                <td height="30"></td>
              </tr>
				<tr>
                <td height="30" align="right" class="style6">常配车辆：</td>
                <td>&nbsp;</td>
                <td height="30" class="style4">&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>&nbsp;</td>
                <td height="30">&nbsp;</td>
              </tr>
              <tr>
                <td height="17" colspan="4" align="right" class="style5" >&nbsp;</td>
              </tr>
              </table></td>
          </tr>
        </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0" 
                style="margin-bottom: 5px; height: 43px;">
            <tr>
              <td height="30" align="right" style="text-align: center" class="style1">　
                        <asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" 
                      Width="73px" Height="26px" style="font-weight: 700" />&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 　<asp:Button 
                      ID="Button2" runat="server" onclick="Button2_Click" Text="取消" Width="72px" 
                      style="font-weight: 700" Height="28px" CausesValidation="False" />
                </td>
              <td width="6%" height="30" align="right" style="width: 50%">　　</td>
            </tr>
            </table></td>
      </tr>
    </table></td>
    <td background="images/mail_rightbg.gif">　</td>
  </tr>
  <tr>
    <td valign="middle" background="images/mail_leftbg.gif"><img src="images/buttom_left2.gif" width="17" height="17" /></td>
      <td height="17" valign="top" background="images/buttom_bgs.gif"><img src="images/buttom_bgs.gif" width="17" height="17" /></td>
    <td background="images/mail_rightbg.gif"><img src="images/buttom_right2.gif" width="16" height="17" /></td>
  </tr>
</table>

    
    
        <div style="text-align: left">
        </div>
    </div>
    </form>
</body>
</html>

