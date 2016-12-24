<%@ Page Language="C#" AutoEventWireup="true" CodeFile="paicheinfo.aspx.cs" Inherits="master_paicheinfo" %>

<%@ Register Src="paicheinfoall.ascx" TagName="paicheinfoall" TagPrefix="uc2" %>


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
      .style3
      {
          font-family: Arial, Helvetica, sans-serif;
          font-size: 11px;
          line-height: 18px;
          color: #000000;
          width: 503px;
          height: 236px;
      }
      .style4
      {
          font-family: Arial, Helvetica, sans-serif;
          font-size: 11px;
          line-height: 18px;
          color: #000000;
          width: 526px;
          height: 52px;
      }
      .style5
      {
          font-family: Arial, Helvetica, sans-serif;
          font-size: 11px;
          line-height: 18px;
          color: #000000;
          width: 50%;
          text-align: left;
          height: 236px;
      }
      .style7
      {
          font-family: Arial, Helvetica, sans-serif;
          font-size: 11px;
          line-height: 18px;
          color: #000000;
          width: 526px;
          height: 236px;
      }
      .style8
      {
          width: 526px;
      }
      .style9
      {
          font-family: Arial, Helvetica, sans-serif;
          font-size: 11px;
          line-height: 18px;
          color: #000000;
          width: 50%;
          text-align: left;
          height: 52px;
      }
      .style10
      {
          font-size: medium;
      }
      .style11
      {
          width: 680px;
      }
      .style12
      {
          width: 50%;
      }
      .style14
      {
          font-family: Arial, Helvetica, sans-serif;
          font-size: 11px;
          line-height: 18px;
          color: #000000;
          width: 51%;
          text-align: left;
          height: 236px;
      }
      .style15
      {
          width: 51%;
      }
      .style16
      {
          font-family: Arial, Helvetica, sans-serif;
          font-size: 11px;
          line-height: 18px;
          color: #000000;
          width: 50%;
          text-align: center;
          height: 52px;
      }
      .left_bt2
      {
          background-color: #FFFFFF;
      }
-->
</style>

<link href="images/skin.css" rel="stylesheet" type="text/css" />
</head>
<body >
    <form id="formxx" runat="server">
        <asp:Panel ID="Panel1" runat="server"  Width="100%">
        
        
        <table width="100%" border="0" cellpadding="0" cellspacing="0" >
  <tr>
    <td width="17" height="29" valign="top" background="images/mail_leftbg.gif"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td width="935" height="29" valign="top" background="images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">
            出车记录</div></td>
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
        <td valign="top"><table border="0" align="center" cellpadding="0" cellspacing="0" 
                style="width: 75%">
          <tr>
            <td class="style11"><table width="86%" border="0" cellpadding="0" cellspacing="0" class="nowtable">
              <tr>
                <td class="left_bt2" bgcolor="#66CCFF">&nbsp;&nbsp;&nbsp;&nbsp;<span 
                        style="text-decoration: underline;"><strong>按驾驶员查询</strong></span></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td class="style11"><table border="0" cellspacing="0" cellpadding="0" 
                    style="width: 106%">
              <tr>
                <td align="right" bgcolor="#f2f2f2" class="style4">
				    <asp:TextBox ID="TextBox5" runat="server" Width="100px" Height="26px"></asp:TextBox>
                        </td>
                  <td align="right" bgcolor="#f2f2f2" class="style16" width="100%"> 
                      <span class="style10"><strong>从</strong></span><asp:TextBox ID="TextBox1" runat="server" Width="100px"></asp:TextBox>
                          <asp:ImageButton ID="ImageButton1" runat="server" 
                              ImageUrl="~/master/images/date.jpg" OnClick="ImageButton1_Click" />
                  </td>
                  <td align="right" bgcolor="#f2f2f2" class="style16" width="100%">
                      <span class="style10"><strong>至</strong></span><asp:TextBox ID="TextBox2" runat="server" Width="100px"></asp:TextBox>
                      <asp:ImageButton ID="ImageButton2" runat="server" 
                          ImageUrl="~/master/images/date.jpg" OnClick="ImageButton2_Click" />
                  </td>
                  <td align="right" bgcolor="#f2f2f2" class="style9" width="100%">
                      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" 
                          style="font-weight: 700; margin-bottom: 0px;" Text="查询" Width="65px" />
                      <asp:Label ID="lblselect" runat="server" Text="Label" Visible="False"></asp:Label>
                  </td>
                  <td align="right" bgcolor="#f2f2f2" class="style9" width="100%">
                      &nbsp;</td>
                  <td align="right" bgcolor="#f2f2f2" class="style9" width="100%">
                      <asp:Button ID="Button4" runat="server" Height="25px" onclick="Button4_Click" 
                          style="font-weight: 700; text-align: right" Text="返回" Width="65px" />
                  </td>
              </tr>
                <tr>
                    <td align="right" bgcolor="#f2f2f2" class="style7" style="text-align: left">
                        &nbsp;</td>
                    <td align="right" bgcolor="#f2f2f2" class="style3" style="text-align: left">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
                            BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                            Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="150px" 
                            OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" 
                            style="text-align: right; margin-left: 0px" Visible="False" Width="200px">
                            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                            <OtherMonthDayStyle ForeColor="#CC9966" />
                            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                            <SelectorStyle BackColor="#FFCC66" />
                            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                                ForeColor="#FFFFCC" />
                            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                        </asp:Calendar>
                    </td>
                    <td align="right" bgcolor="#f2f2f2" class="style5" width="100%">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Calendar ID="Calendar2" runat="server" BackColor="#FFFFCC" 
                            BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                            Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="150px" 
                            OnSelectionChanged="Calendar2_SelectionChanged" ShowGridLines="True" 
                            style="text-align: right" Visible="False" Width="200px">
                            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                            <OtherMonthDayStyle ForeColor="#CC9966" />
                            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                            <SelectorStyle BackColor="#FFCC66" />
                            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                                ForeColor="#FFFFCC" />
                            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                        </asp:Calendar>
                    </td>
                    <td align="right" bgcolor="#f2f2f2" class="style5" width="100%">
                        &nbsp;</td>
                    <td align="right" bgcolor="#f2f2f2" class="style5" width="100%">
                        &nbsp;</td>
                    <td align="right" bgcolor="#f2f2f2" class="style5" width="100%">
                        &nbsp;</td>
                </tr>
              <tr>
                <td height="17" align="right" class="style8" >&nbsp;</td>
                  <td align="right" colspan="2" height="17">
                  </td>
                  <td align="right" height="17">
                      &nbsp;</td>
                  <td align="right" height="17">
                      &nbsp;</td>
                  <td align="right" height="17">
                      &nbsp;</td>
              </tr>
              </table></td>
          </tr>
        </table>
          <table border="0" cellspacing="0" cellpadding="0" align="center" 
                style="width: 75%">
            <tr>
              <td class="style11"><table width="86%" border="0" cellpadding="0" cellspacing="0" 
                      class="nowtable">
          <tr>
            <td bgcolor="#66CCFF" class="left_bt2">&nbsp;&nbsp;&nbsp;&nbsp;<span 
                    style="text-decoration: underline;"><strong>按车牌号查询</strong></span></td>
          </tr>
        </table>
          	</td>
            </tr>
              <tr>
                  <td class="style11">
                      <table border="0" cellpadding="0" cellspacing="0" style="width: 106%">
                          <tr>
                              <td align="right" bgcolor="#f2f2f2" class="style4">
                                  <asp:TextBox ID="TextBox6" runat="server" Width="100px" Height="26px"></asp:TextBox>
                              </td>
                              <td align="right" bgcolor="#f2f2f2" class="style16" width="100%">
                                  <span class="style10"><strong>从<asp:TextBox ID="TextBox3" runat="server" Width="100px"></asp:TextBox>
                                  </strong></span>
                                  <asp:ImageButton ID="ImageButton3" runat="server" 
                                      ImageUrl="~/master/images/date.jpg" OnClick="ImageButton3_Click" 
                                      Height="20px" />
                              </td>
                              <td align="right" bgcolor="#f2f2f2" class="style9" width="100%">
                                  <span class="style10"><strong>至</strong></span><asp:TextBox ID="TextBox4" runat="server" Width="100px"></asp:TextBox>
                                  <asp:ImageButton ID="ImageButton4" runat="server" 
                                      ImageUrl="~/master/images/date.jpg" OnClick="ImageButton4_Click" />
                              </td>
                              <td align="right" bgcolor="#f2f2f2" class="style9" width="100%">
                                  &nbsp;<br /> 
                                  <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" 
                                      style="font-weight: 700" Text="查询" Width="65px" />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </td>
                              <td align="right" bgcolor="#f2f2f2" class="style9">
                                  &nbsp;</td>
                              <td align="right" bgcolor="#f2f2f2" class="style9" width="100%">
                                  <asp:Button ID="Button5" runat="server" Height="25px" onclick="Button4_Click" 
                                      style="font-weight: 700; text-align: right" Text="返回" Width="65px" />
                              </td>
                          </tr>
                          <tr>
                              <td align="right" bgcolor="#f2f2f2" class="style7" style="text-align: left">
                                  &nbsp;</td>
                              <td align="right" bgcolor="#f2f2f2" class="style3" style="text-align: left">
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Calendar ID="Calendar3" runat="server" BackColor="#FFFFCC" 
                                      BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                                      Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="150px" 
                                      OnSelectionChanged="Calendar3_SelectionChanged" ShowGridLines="True" 
                                      Visible="False" Width="200px">
                                      <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                      <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                      <OtherMonthDayStyle ForeColor="#CC9966" />
                                      <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                      <SelectorStyle BackColor="#FFCC66" />
                                      <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                                          ForeColor="#FFFFCC" />
                                      <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                  </asp:Calendar>
                              </td>
                              <td align="right" bgcolor="#f2f2f2" class="style5" width="100%">
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Calendar ID="Calendar4" runat="server" BackColor="#FFFFCC" 
                                      BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                                      Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="150px" 
                                      OnSelectionChanged="Calendar4_SelectionChanged" ShowGridLines="True" 
                                      Visible="False" Width="200px">
                                      <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                      <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                      <OtherMonthDayStyle ForeColor="#CC9966" />
                                      <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                      <SelectorStyle BackColor="#FFCC66" />
                                      <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                                          ForeColor="#FFFFCC" />
                                      <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                  </asp:Calendar>
                              </td>
                              <td align="right" bgcolor="#f2f2f2" class="style14">
                                  &nbsp;</td>
                              <td align="right" bgcolor="#f2f2f2" class="style5">
                                  &nbsp;</td>
                              <td align="right" bgcolor="#f2f2f2" class="style5" width="100%">
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td align="right" class="style8" height="17">
                                  &nbsp;</td>
                              <td align="right" colspan="2" height="17">
                              </td>
                              <td align="right" height="17" class="style15">
                                  &nbsp;</td>
                              <td align="right" class="style12" height="17">
                                  &nbsp;</td>
                              <td align="right" height="17">
                                  &nbsp;</td>
                          </tr>
                      </table>
                  </td>
              </tr>
          </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="30">　</td>
            </tr>
          </table>
          </td>
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

            <span style="font-size: 10pt; text-decoration: underline"></span>
        </asp:Panel>
        <div style="text-align: left">
            <asp:Panel ID="Panel2" runat="server" Height="50px" Width="100%" Wrap="False" Visible="False">
                
                <table width="100%" border="0" cellpadding="0" cellspacing="0" >
  <tr>
    <td width="17" height="29" valign="top" background="images/mail_leftbg.gif"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td width="935" height="29" valign="top" background="images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table1">
      <tr>
        <td height="31"><div class="titlebt">
            出车记录</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top" background="images/mail_rightbg.gif"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td height="71" valign="middle" background="images/mail_leftbg.gif">　</td>
    <td valign="top" bgcolor="#F7F8F9"><table height="138" border="0" cellpadding="0" 
            cellspacing="0" style="width: 102%">
      <tr>
        <td height="13" valign="top">&nbsp;</td>
      </tr>
      <tr>
        <td valign="top"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="nowtable">
              <tr>
                <td class="left_bt2">&nbsp;&nbsp;&nbsp;&nbsp;<strong><asp:Label ID="Label1" 
                        runat="server" ForeColor="#FF0000" Text="Label"></asp:Label>
                    </strong><span style="font-size: 10pt"><strong>&nbsp; 从 </strong></span><strong>
                    <asp:Label ID="Label2" runat="server" ForeColor="#FF0000" Text="Label"></asp:Label>
                    </strong><span style="font-size: 10pt"><strong>至 </strong></span><strong>
                    <asp:Label ID="Label3" runat="server" style="color: #ff0000" Text="Label"></asp:Label>
                    </strong><span style="font-size: 10pt"><strong>出车记录</strong></span></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="100%" height="30" align="right" bgcolor="#f2f2f2" class="left_txt2">
				<p align="left">
                <asp:DataList ID="DataList2" runat="server" BackColor="White" BorderColor="White" 
                        BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" 
                       Width="1143px" style="font-size: small">
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <HeaderTemplate>
                        <table cellspacing="1" style="width: 1135px; color: #ffffff;">
                            <tr>
                                <td style="background-color: background; height: 20px; text-align: center; width: 150px;">
                                    <span style="color: #ffffff">车牌号</span></td>
                                <td style="height: 20px; background-color: background; text-align: center; width: 60px;">
                                    <span style="color: #ffffff">驾驶员</span></td>
                                <td style="height: 20px; background-color: background; text-align: center; width: 150px;">
                                    <span style="color: #ffffff">出车时间</span></td>
                                <td style="height: 20px; background-color: background; text-align: center; width: 150px;">
                                    入库时间</td>
                                <td style="width: 100px ; height:20px; text-align: center; background-color: background;">
                                    出车范围</td>
                                <td style="width: 60px ; height:20px; text-align: center; background-color: background;">
                                    目的地</td>
                                <td style="width: 100px; height: 20px; background-color: background; text-align: center;">
                                    出车原因</td>
                                <td style="width: 100px; height: 20px; background-color: background; text-align: center;">
                                    随行人员</td>

                                <td style="width: 60px; height: 20px; background-color: background; text-align: center;">
                                    实际天数</td>
                                <td style="width: 60px; height: 20px; background-color: background; text-align: center;">
                                    审批人</td>
                                <td style="width: 60px; height: 20px; background-color: background; text-align: center;">
                                    查看详细</td>
                            </tr>
                        </table>
                    </HeaderTemplate>
                    <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <ItemTemplate>
                        <uc2:paicheinfoall ID="Paicheinfoall1" runat="server" caridall='<%#DataBinder.Eval(Container.DataItem,"id")%>'/>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                </asp:DataList>&nbsp;</td>
              </tr>
              <tr>
                <td height="17" align="right" ></td>
              </tr>
              </table></td>
          </tr>
        </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="30" style="text-align: center">
                  <span style="font-size: 9pt"><strong>当前第</strong></span><strong><asp:Label 
                      ID="nowpage" runat="server"></asp:Label>
                  </strong><span style="font-size: 9pt"><strong>/</strong></span><strong><asp:Label 
                      ID="allpage" runat="server"></asp:Label>
                  </strong><span style="font-size: 9pt"><strong>页 当前</strong></span><strong><asp:Label 
                      ID="Label4" runat="server"></asp:Label>
                  </strong><span style="font-size: 9pt"><strong>条记录&nbsp; 每页30条记录</strong></span><strong> 
                  &nbsp; &nbsp;&nbsp;<asp:Button ID="btnback" runat="server" OnClick="btnback_Click" 
                      style="font-weight: 700" Text="上一页" />
                  &nbsp; &nbsp;<asp:Button ID="btnnext" runat="server" OnClick="btnnext_Click" 
                      style="font-weight: 700" Text="下一页" />
                  &nbsp; &nbsp;
                  <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" 
                      style="font-weight: 700" Text="返回" Width="62px" />
                  </strong></td>
            </tr>
          </table>
          </td>
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
        </div>
    </form>
</body>
</html>
