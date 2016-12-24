<%@ Page Language="C#" AutoEventWireup="true" CodeFile="paiche.aspx.cs" Inherits="keshi_paiche" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
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
        height: 56px;
    }
    .style2
    {
        font-size: x-large;
    }
    .style3
    {
        font-family: Arial, Helvetica, sans-serif;
        font-size: small;
        line-height: 18px;
        color: #000000;
        font-weight: bold;
    }
    .style4
    {
        font-family: 宋体;
        font-size: small;
        font-weight: bold;
    }
    .style5
    {
        font-size: small;
    }
-->
</style>

<link href="images/skin.css" rel="stylesheet" type="text/css" />
</head>
<body >
    <form id="formxx" runat="server">
    <div></div>
    
    <asp:Panel ID="Panel1" runat="server" Width="100%">
    
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" height="29" valign="top" background="images/mail_leftbg.gif"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td width="935" height="29" valign="top" background="images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">派车申请</div></td>
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
                <td class="left_bt2" bgcolor="#66CCFF">&nbsp;&nbsp;&nbsp;&nbsp;<strong><span class="style2"><em>派车申请</em></span></strong></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="20%" height="30" align="right" bgcolor="#f2f2f2" class="style3">
				车牌号码：</td>
                <td width="3%" bgcolor="#f2f2f2">　</td>
                <td width="32%" height="30" bgcolor="#f2f2f2">
                    <asp:TextBox ID="TextBox11" runat="server" Width="107px"></asp:TextBox>
                  </td>
                <td width="45%" height="30" bgcolor="#f2f2f2" class="left_txt">
                    选择本次出车的车牌号</td>
              </tr>
              <tr>
                <td height="30" align="right" class="style3">驾 驶 员：</td>
                <td>　</td>
                <td height="30">
                    <asp:TextBox ID="TextBox12" runat="server" Width="107px"></asp:TextBox>
                  </td>
                <td height="30" class="left_txt">
                    选择本次出车的驾驶员</td>
              </tr>
              <tr>
                <td height="30" align="right" bgcolor="#f2f2f2" class="style3">
				出车时间：</td>
                <td bgcolor="#f2f2f2">　</td>
                <td height="30" bgcolor="#f2f2f2">
                    <span style="font-size: 9pt">选择日期</span><asp:ImageButton ID="ImageButton1" runat="server" BackColor="Menu" BorderColor="Menu"
                        ImageUrl="~/master/images/date.jpg" OnClick="ImageButton1_Click" Style="border-top-style: none;
                        border-right-style: none; border-left-style: none; border-bottom-style: none" />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
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
                <td height="30" bgcolor="#f2f2f2" class="left_txt">
                    本次出车的时间</td>
              </tr>
              <tr>
                <td height="30" align="right" class="style3">出车天数： </td>
                <td>　</td>
                <td height="30">
                    <asp:TextBox ID="TextBox4" runat="server" Width="37px"></asp:TextBox>天</td>
                <td height="30" class="left_txt">
                    预计出车天数</td>
              </tr>
              <tr>
                <td height="30" align="right" bgcolor="#f2f2f2" class="style3">
				目 的 地：</td>
                <td bgcolor="#f2f2f2">　</td>
                <td height="30" bgcolor="#f2f2f2">
                    <asp:TextBox ID="TextBox5" runat="server" Width="218px"></asp:TextBox></td>
                <td height="30" bgcolor="#f2f2f2" class="left_txt">
                    出车的目的地</td>
              </tr>
              <tr>
                <td height="30" align="right" bgcolor="#F7F8F9" class="style3">
				出车原因：</td>
                <td bgcolor="#F7F8F9">　</td>
                <td height="30" bgcolor="#F7F8F9">
                    <asp:TextBox ID="TextBox6" runat="server" Width="218px"></asp:TextBox></td>
                <td height="30" bgcolor="#F7F8F9" class="left_txt">
                    本次出车的原因</td>
              </tr>
                <tr>
                    <td align="right" class="style3" height="30">
                        用车部门：</td>
                    <td>
                        　</td>
                    <td height="30">
                        <asp:Label ID="Label2" runat="server" CssClass="style4" Text="Label"></asp:Label>
                        <asp:DropDownList ID="DropDownList5" runat="server" CssClass="style4">
                        </asp:DropDownList>
                    </td>
                    <td height="30">
                        <span class="left_txt">本次使用车辆的部门</span></td>
                </tr>
              <tr>
                <td height="30" align="right" bgcolor="#f2f2f2" class="style3">
				随行人员： </td>
                <td bgcolor="#f2f2f2">　</td>
                <td height="30" bgcolor="#f2f2f2">
                    <asp:TextBox ID="TextBox9" runat="server" Height="39px" TextMode="MultiLine" Width="244px"></asp:TextBox></td>
                <td height="30" bgcolor="#f2f2f2"><span class="left_txt">本次随行的人员</span></td>
              </tr>
              <tr>
                <td height="30" align="right" class="style3">备注信息：</td>
                <td>　</td>
                <td height="30">
                    <asp:TextBox ID="TextBox10" runat="server" Height="52px" TextMode="MultiLine" Width="243px"></asp:TextBox></td>
                <td height="30" class="left_txt">
                    记录相关的补充信息</td>
              </tr>
              <tr>
                <td height="17" colspan="4" align="right" class="style5" >&nbsp;</td>
              </tr>
              </table></td>
          </tr>
        </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="50%" align="right" class="style1">　
                    <asp:Button ID="Button1" runat="server" Text="申请派车" OnClick="Button1_Click" 
                      style="font-weight: 700" />　</td>
              <td width="6%" align="right" class="style1">　</td>
              <td width="44%" class="style1">　<asp:Button ID="Button2" runat="server" 
                      OnClick="Button2_Click" Text="取消申请" style="font-weight: 700" />
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

