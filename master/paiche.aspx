<%@ Page Language="C#" AutoEventWireup="true" CodeFile="paiche.aspx.cs" Inherits="master_paiche" %>

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
        height: 56px;
    }
    .style2
    {
        font-size: x-large;
        font-family: 黑体;
    }
    .style4
    {
        font-size: small;
        color: #FF0000;
    }
    .style5
    {
        font-size: small;
    }
    .style6
    {
        width: 48%;
    }
    .style7
    {
        font-family: Arial, Helvetica, sans-serif;
        font-size: small;
        line-height: 18px;
        color: #000000;
        font-weight: bold;
        width: 23%;
    }
-->
</style>

<link href="images/skin.css" rel="stylesheet" type="text/css" />
</head>
<body bgcolor="#ffffff" >
    <form id="formxx" runat="server">
    <div></div>
    
    <asp:Panel ID="Panel1" runat="server" Width="100%">
    
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" height="29" valign="top" background="images/mail_leftbg.gif"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td width="935" height="29" valign="top" background="images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">车辆外出</div></td>
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
                <td class="left_bt2" bgcolor="#66CCFF">&nbsp;&nbsp;&nbsp;&nbsp;<strong><span class="style2"><em>派车信息</em></span></strong></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="30" align="right" bgcolor="White" class="style7">
				车牌号码：</td>
                <td width="3%" bgcolor="White">　</td>
                <td height="30" bgcolor="White" class="style6">
                    <asp:TextBox ID="TextBox11" runat="server" Width="107px"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="rfvTxtmm" runat="server" 
                        ControlToValidate="TextBox11" CssClass="style5" ErrorMessage="车号不能空" 
                        style="color: #FF0000"></asp:RequiredFieldValidator>
                  </td>
                <td width="45%" height="30" bgcolor="White" class="left_txt">
                    &nbsp;</td>
              </tr>
              <tr>
                <td height="30" align="right" class="style7" bgcolor="White">驾 驶 员：</td>
                <td bgcolor="White">　</td>
                <td height="30" bgcolor="White" class="style6">
                    <asp:TextBox ID="TextBox12" runat="server" Width="107px"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="rfvTxtmm0" runat="server" 
                        ControlToValidate="TextBox12" CssClass="style5" ErrorMessage="人员不能空" 
                        style="color: #FF0000"></asp:RequiredFieldValidator>
                  </td>
                <td height="30" class="left_txt" bgcolor="White">
                    &nbsp;</td>
              </tr>
              <tr>
                <td height="30" align="right" bgcolor="White" class="style7">
				出车时间：</td>
                <td bgcolor="White">　</td>
                <td height="30" bgcolor="White" class="style6">
                    <span style="font-size: 9pt">选择日期</span><asp:ImageButton ID="ImageButton1" 
                        runat="server" BackColor="Menu" BorderColor="Menu"
                        ImageUrl="~/master/images/date.jpg" OnClick="ImageButton1_Click" 
                        Style="border-top-style: none;
                        border-right-style: none; border-left-style: none; border-bottom-style: none" 
                        CausesValidation="False" />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <span class="style4">（日期不能为空）</span>&nbsp;&nbsp;
                    <asp:Calendar ID="Calendar1" 
                        runat="server" BackColor="White"
                        BorderColor="White" BorderWidth="1px"
                        Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="181px" Visible="False"
                        Width="342px" OnSelectionChanged="Calendar1_SelectionChanged" 
                        NextPrevFormat="FullMonth">
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#333333" Font-Bold="True" 
                            VerticalAlign="Bottom" />
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True"
                            Font-Size="12pt" ForeColor="#333399" />
                    </asp:Calendar>
                    </td>
                <td height="30" bgcolor="White" class="left_txt">
                    &nbsp;</td>
              </tr>
              <tr>
                <td height="30" align="right" class="style7" bgcolor="White">出车范围： </td>
                <td bgcolor="White">　</td>
                <td height="30" bgcolor="White" class="style6">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        RepeatDirection="Horizontal" 
                        style="text-align: left; font-weight: 700; font-size: small">
                        <asp:ListItem>城区内</asp:ListItem>
                        <asp:ListItem>城区外</asp:ListItem>
                        <asp:ListItem>乡镇内</asp:ListItem>
                        <asp:ListItem>乡镇外</asp:ListItem>
                    </asp:RadioButtonList>
                  </td>
                <td height="30" class="left_txt" bgcolor="White">
                    &nbsp;</td>
              </tr>
                <tr>
                    <td align="right" bgcolor="White" class="style7" height="30">
                        出车天数：</td>
                    <td bgcolor="White">
                        &nbsp;</td>
                    <td bgcolor="White" class="style6" height="30" style="text-align: left">
                        <asp:TextBox ID="TextBox4" runat="server" Width="37px"></asp:TextBox>
                        <strong><span class="style5">天</span></strong> <span class="style4">
                        （城区、乡镇内可不填，城区、乡镇外必填）</span></td>
                    <td bgcolor="White" class="left_txt" height="30">
                        &nbsp;</td>
                </tr>
              <tr>
                <td height="30" align="right" bgcolor="White" class="style7">
				目 的 地：</td>
                <td bgcolor="White">　</td>
                <td height="30" bgcolor="White" class="style6">
                    <asp:TextBox ID="TextBox5" runat="server" Width="218px"></asp:TextBox></td>
                <td height="30" bgcolor="White" class="left_txt">
                    &nbsp;</td>
              </tr>
              <tr>
                <td height="30" align="right" bgcolor="White" class="style7">
				出车原因：</td>
                <td bgcolor="White">　</td>
                <td height="30" bgcolor="White" class="style6">
                    <asp:TextBox ID="TextBox6" runat="server" Width="218px"></asp:TextBox></td>
                <td height="30" bgcolor="White" class="left_txt">
                    &nbsp;</td>
              </tr>
              <tr>
                <td height="30" align="right" class="style7" bgcolor="White">用车部门：</td>
                <td bgcolor="White">　</td>
                <td height="30" bgcolor="White" class="style6">
                    <asp:DropDownList ID="DropDownList6" runat="server">
                    </asp:DropDownList>
                    <asp:TextBox ID="TextBox14" runat="server" Width="100px"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="rfvTxtmm1" runat="server" 
                        ControlToValidate="TextBox14" CssClass="style5" ErrorMessage="部门不能空" 
                        style="color: #FF0000"></asp:RequiredFieldValidator>
                  </td>
                <td height="30" bgcolor="White">&nbsp;</td>
              </tr>
              <tr>
                <td height="30" align="right" bgcolor="White" class="style7">
				随行人员： </td>
                <td bgcolor="White">　</td>
                <td height="30" bgcolor="White" colspan="2">
                    <asp:TextBox ID="TextBox9" runat="server" Height="39px" TextMode="MultiLine" 
                        Width="333px"></asp:TextBox></td>
              </tr>
              <tr>
                <td height="30" align="right" class="style7" bgcolor="White">备注信息：</td>
                <td bgcolor="White">　</td>
                <td height="30" bgcolor="White" colspan="2">
                    <asp:TextBox ID="TextBox10" runat="server" Height="77px" TextMode="MultiLine" 
                        Width="476px"></asp:TextBox></td>
              </tr>
                <tr>
                    <td align="right" bgcolor="White" class="style7" height="30">
                        审批人：</td>
                    <td bgcolor="White">
                        &nbsp;</td>
                    <td bgcolor="White" colspan="2" height="30">
                        <asp:TextBox ID="TextBox13" runat="server" Width="70px"></asp:TextBox>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="rfvTxtmm2" runat="server" 
                            ControlToValidate="TextBox13" CssClass="style5" ErrorMessage="审批人不能空" 
                            style="color: #FF0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
              <tr>
                <td height="17" colspan="4" align="right" bgcolor="White" class="style5" >&nbsp;</td>
              </tr>
              </table></td>
          </tr>
        </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="50%" align="right" class="style1">　
                    <asp:Button ID="Button1" runat="server" Text="确认派车" OnClick="Button1_Click" 
                      style="font-weight: 700" onclientclick="return confirm('确认派车？')" />　</td>
              <td width="6%" align="right" class="style1">　</td>
              <td width="44%" class="style1">　<asp:Button ID="Button2" runat="server" 
                      OnClick="Button2_Click" Text="取消派车" style="font-weight: 700" 
                      CausesValidation="False" />
                </td>
            </tr>
            <tr>
              <td height="30" colspan="3">　</td>
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
        </asp:Panel>
    </form>
</body>
</html>
