<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xzry.aspx.cs" Inherits="master_xzry" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
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
        width: 68%;
    }
    .style2
    {
        font-size: x-large;
    }
    .style3
    {
        font-size: small;
    }
    .style4
    {
        text-decoration: underline;
    }
    .style5
    {
        font-family: Arial, Helvetica, sans-serif;
        font-size: small;
        line-height: 18px;
        color: #000000;
        width: 154px;
    }
    .style6
    {
    }
    .style7
    {
        width: 2%;
    }
-->
</style>

<link href="images/skin.css" rel="stylesheet" type="text/css" />
</head>
<body >
    <form id="formxx" runat="server">
    <div>
        <div style="text-align: left">
        
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" height="29" valign="top" background="images/mail_leftbg.gif"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td width="935" height="29" valign="top" background="images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">
            新增人员</div></td>
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
            <td><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" 
                    class="nowtable" bgcolor="#66CCFF">
              <tr>
                <td class="left_bt2">&nbsp;&nbsp;&nbsp;<strong><span class="style2"><em>&nbsp;<span 
                        class="style4">驾驶员信息</span></em></span></strong></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="30" align="right" bgcolor="White" class="style5">
				    <strong>姓名：</strong></td>
                <td bgcolor="White" class="style7">　</td>
                <td height="30" bgcolor="White" class="style6">　<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>　<asp:RequiredFieldValidator 
                        ID="rfvTxtmm" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="姓名不能空" 
                        style="color: #FF0000; font-size: small;"></asp:RequiredFieldValidator>
                              </td>
              </tr>
              <tr>
                <td height="30" align="right" bgcolor="White" class="style5">
				    <strong>性别：</strong></td>
                <td bgcolor="White" class="style7">　</td>
                <td height="30" bgcolor="White" class="style6">　<asp:DropDownList ID="DropDownList5" 
                        runat="server">
                    <asp:ListItem>男</asp:ListItem>
                    <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList>
                    　</td>
              </tr>
				<tr>
                <td height="30" align="right" class="style5"><strong>出生日期：</strong></td>
                <td class="style7">　</td>
                <td height="30">　<asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                    <span class="style3"><strong>年</strong></span><asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                    <span class="style3"><strong>月</strong></span><asp:DropDownList ID="DropDownList3" runat="server">
                    </asp:DropDownList>
                    <strong><span class="style3">日</span></strong></td>
              </tr>
				<tr>
                <td height="30" align="right" class="style5"><strong>身份证号码：</strong></td>
                <td class="style7">&nbsp;</td>
                <td height="30" class="style6">&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox5" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTxtmm1" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="身份证号不能空" 
                        style="color: #FF0000; font-size: small;"></asp:RequiredFieldValidator>
                              </td>
              </tr>
				<tr>
                <td height="30" align="right" class="style5"><strong>驾驶证号码</strong>：</td>
                <td class="style7">&nbsp;</td>
                <td height="30" class="style6">&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTxtmm2" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="驾驶证号不能空" 
                        style="color: #FF0000; font-size: small;"></asp:RequiredFieldValidator>
                              </td>
              </tr>
				<tr>
                <td height="30" align="right" class="style5"><strong>联系方式：</strong></td>
                <td class="style7">&nbsp;</td>
                <td height="30" class="style6">&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>&nbsp;</td>
              </tr>
				<tr>
                <td height="30" align="right" class="style5"><strong>所属地区：</strong></td>
                <td class="style7">&nbsp;</td>
                
                  <td height="30" class="style6">&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList7" runat="server">
                    </asp:DropDownList>
                    </td>


              </tr>
				<tr>
                <td height="30" align="right" class="style5"><strong>所属单位：</strong></td>
                <td class="style7">&nbsp;</td>
                <td height="30" class="style6">&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTxtmm3" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="单位不能空" 
                        style="color: #FF0000; font-size: small;"></asp:RequiredFieldValidator>
                    </td>
              </tr>
				<tr>
                <td height="30" align="right" class="style5"><strong>常配车辆：</strong></td>
                <td class="style7">&nbsp;</td>
                <td height="30" class="style6">&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </td>
              </tr>
              <tr>
                <td height="17" colspan="3" align="right" class="style3" >&nbsp;</td>
              </tr>
              </table></td>
          </tr>
        </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0" 
                style="height: 53px">
            <tr>
              <td height="30" align="right" style="text-align: center" class="style1">　
                        <asp:Button ID="Button1" runat="server" Text="增加" OnClick="Button1_Click" 
                      Width="72px" Height="25px" style="font-weight: 700; margin-top: 0px" />　&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                  <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="取消" 
                      Width="74px" Height="27px" style="font-weight: 700" 
                      CausesValidation="False" />
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
        </div>
    </div>
    </form>
</body>
</html>
