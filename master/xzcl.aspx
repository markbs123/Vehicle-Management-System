<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xzcl.aspx.cs" Inherits="master_xzcl" %>

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
        text-align: left;
        }
    .style2
    {
        width: 81%;
    }
    .style3
    {
        font-size: x-large;
        text-decoration: underline;
    }
    .style4
    {
        font-size: small;
    }
    .style5
    {
        font-family: Arial, Helvetica, sans-serif;
        font-size: small;
        line-height: 18px;
        color: #000000;
        width: 162px;
        text-align: right;
    }
    .style6
    {
        text-align: left;
        }
    .style7
    {
        width: 35px;
    }
    .style8
    {
        text-align: right;
        font-size: small;
    }
    .style9
    {
        font-family: Arial, Helvetica, sans-serif;
        font-size: small;
        line-height: 18px;
        color: #000000;
        width: 162px;
        text-align: right;
        height: 30px;
    }
    .style10
    {
        width: 35px;
        height: 30px;
    }
    .style11
    {
        text-align: left;
        height: 30px;
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
        <td height="31"><div class="titlebt">新增车辆</div></td>
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
                <td class="left_bt2">&nbsp;&nbsp;&nbsp;&nbsp;<span class="style3"><em><strong>车辆信息</strong></em></span></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="30" bgcolor="#f2f2f2" class="style5">
				    <strong>汽车型号：</strong></td>
                <td bgcolor="#f2f2f2" class="style7">&nbsp;</td>
                <td height="30" bgcolor="#f2f2f2" class="style6">&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    &nbsp;</td>
                <tr>
                <td height="30" bgcolor="#f2f2f2" class="style5">
				    <strong>汽车牌号：</strong></td>
                <td bgcolor="#f2f2f2" class="style7">&nbsp;</td>
                <td height="30" bgcolor="#f2f2f2" class="style6">&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="rfvTxtmm" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="车牌号不能空" 
                        style="color: #FF0000; font-size: small;"></asp:RequiredFieldValidator>
                              </td>
              </tr>
              <tr>
                <td bgcolor="#f2f2f2" class="style9">
				    <strong>发动机号：</strong></td>
                <td bgcolor="#f2f2f2" class="style10"></td>
                <td bgcolor="#f2f2f2" class="style11">&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="rfvTxtmm1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="发动机号不能空" 
                        style="color: #FF0000; font-size: small;"></asp:RequiredFieldValidator>
                              </td>
              </tr>
              <tr>
    <td height="30" bgcolor="#f2f2f2" class="style5">
				    <strong>排气量：</strong></td>
                <td bgcolor="#f2f2f2" class="style7">&nbsp;</td>
                <td height="30" bgcolor="#f2f2f2" class="style6">&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server" Width="64px"></asp:TextBox>
                    &nbsp;L</td>
                <tr>
                <td height="30" bgcolor="#f2f2f2" class="style5">
				    <strong>价格</strong>：</td>
                <td bgcolor="#f2f2f2" class="style7">&nbsp;</td>
                <td height="30" bgcolor="#f2f2f2" class="style6">&nbsp;
                    <asp:TextBox ID="TextBox5" runat="server" Width="64px"></asp:TextBox>
                    &nbsp;</td>
              </tr>
              <tr>
                <td height="30" bgcolor="#f2f2f2" class="style5">
				    <strong>公里数：</strong></td>
                <td bgcolor="#f2f2f2" class="style7">&nbsp;</td>
                <td height="30" bgcolor="#f2f2f2" class="style6">&nbsp;
                    <asp:TextBox ID="TextBox8" runat="server" Width="64px"></asp:TextBox>
                    &nbsp;km</td>
              </tr>
              <tr>
                <td height="30" class="style5"><strong>购买日期： </strong> </td>
                <td class="style7">　&nbsp;</td>
                <td height="30" class="style1">&nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList><strong><span class="style4">年</span></strong><asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True"
                        onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                    </asp:DropDownList><strong><span class="style4">月</span></strong><asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True"  >
                    </asp:DropDownList>
                    <strong><span class="style4">日</span></strong>&nbsp;</td>
              </tr>
              <tr>
                <td height="30" class="style5"><strong>所属地区：</strong></td>
                <td class="style7">&nbsp;</td>
                <td height="30" class="style1">&nbsp;
                    <asp:DropDownList ID="DropDownList5" runat="server">
                    </asp:DropDownList>
                    &nbsp;</td>
              </tr>
              <tr>
                <td height="30" bgcolor="#F2F2F2" class="style5">
				    <strong>所属单位：</strong></td>
                <td class="style7">&nbsp;</td>
                <td height="30" class="style1">&nbsp;
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    &nbsp;</td>
              </tr>
              <tr>
                <td height="30" bgcolor="#F2F2F2" class="style5">
				    <strong>车种：</strong></td>
                <td bgcolor="#F2F2F2" class="style7">&nbsp;</td>
                <td height="30" bgcolor="#F2F2F2" class="style6">&nbsp;
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    &nbsp;</td>
              </tr>
				<tr>
                <td height="30" class="style5"><strong>备注信息：</strong></td>
                <td class="style7">　</td>
                <td height="30" class="style1">　
                        <asp:TextBox ID="TextBox7" runat="server" Width="537px" Height="109px" 
                        TextMode="MultiLine" style="margin-top: 22px"></asp:TextBox>　</td>
              </tr>
              <tr>
                <td height="17" colspan="3" class="style8" >&nbsp;</td>
              </tr>
              </table></td>
          </tr>
        </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0" 
                style="height: 38px">
            <tr>
              <td height="30" align="right" style="text-align: center" class="style2">　
                        <asp:Button ID="Button1" runat="server" Text="增加" OnClick="Button1_Click" 
                      style="font-weight: 700" Width="66px" Height="24px" />　&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                  <asp:Button ID="Button2" runat="server" Height="24px" onclick="Button2_Click" 
                      style="font-weight: 700" Text="取消" Width="66px" CausesValidation="False" />
                </td>
              <td width="6%" height="30" align="right" style="width: 50%">
                        &nbsp;</td>
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
        &nbsp;
    </form>
</body>
</html>
