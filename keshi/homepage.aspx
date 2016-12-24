<%@ Page Language="C#" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="keshi_homepage" %>


<%@ Register Src="paicheinfo.ascx" TagName="paicheinfo" TagPrefix="uc4" %>

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
        .style24
        {
            font-size: small;
        }
        .style27
        {
            color: #000000;
        text-align: center;
    }
        .style23
        {
            font-weight: bold;
        }
        .style28
    {
        text-align: center;
    }
    .style29
    {
        height: 26px;
        text-align: center;
    }
        .style3
    {
        font-size: x-large;
    }
        .style25
        {
            text-decoration: underline;
        }
        .style33
    {
        text-align: left;
    }
    .style34
    {
        color: #000000;
        text-align: center;
        height: 62px;
    }
    .style35
    {
        height: 20px;
        text-align: center;
        background-color: #66CCFF;
    }
-->
</style>

<link href="images/skin.css" rel="stylesheet" type="text/css" />
</head>
<body >
    <form id="formXX" runat="server">
    <div style="text-align: left">
    
    <table width="100%" border="0" cellpadding="0" cellspacing="0" >
  <tr>
    <td width="17" height="29" valign="top" background="images/mail_leftbg.gif"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td width="935" height="29" valign="top" background="images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">外出信息</div></td>
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
        <td height="13" valign="top">&nbsp;</td>
      </tr>
      <tr>
        <td valign="top"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="nowtable">
              <tr>
                <td class="style29">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" 
                    bgcolor="White" style="height: 94px; margin-bottom: 3px;">
                <tr>
                <td width="100%" align="right" bgcolor="#66CCFF" class="style34">
				<p style="height: 22px; font-size: large;" class="style33">
                    &nbsp; <span class="style3"><em><strong><span class="style25">外出车辆信息</span></strong></em></span></td>
                </tr>
                <tr>
                <td width="100%" bgcolor="White" class="style35">
				    <span style="font-size: 9pt">
                    <br />
                    <asp:Button ID="Button5" runat="server" Height="21px" style="font-weight: 700" 
                        Text="查询外出车辆" Width="109px" onclick="Button5_Click" CssClass="style33" />
                    </span></td>
                </tr>
              </table>
                    </td>
              </tr>
              </table></td>
          </tr>
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="100%" height="30" align="right" bgcolor="#f2f2f2" class="left_txt2">
				<p align="left">
                    <asp:DataList 
                        ID="DataList4" runat="server" 
                        
                        style="text-align: left; font-family: 宋体, Arial, Helvetica, sans-serif; font-size: small; margin-left: 0px; margin-top: 0px;" 
                        Width="1143px" BorderStyle="Ridge" BackColor="White" BorderColor="White" 
                        BorderWidth="2px" CellPadding="3" CellSpacing="1">
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <HeaderTemplate>
                    <table cellspacing="1" style="width: 1135px; color: #ffffff; border-top-style: none;
                        border-right-style: none; border-left-style: none; border-collapse: collapse;
                        border-bottom-style: none">
                        <tr>
                              <td style="width: 200px; height: 16px; background-color: background; text-align: center">
                                车牌号</td>
                            <td style="width: 100px; height: 16px; background-color: background; text-align: center">
                                驾驶员</td>
                            <td style="width: 200px; height: 16px; background-color: background; text-align: center">
                                出车时间</td>
                            <td style="width: 100px; height: 16px; background-color: background; text-align: center">
                                目的地</td>
                            <td style="width: 100px; height: 16px; background-color: background; text-align: center">
                                出车范围</td>
                              <td style="width: 95px; height: 16px; background-color: background; text-align: center">
                                出车天数</td>
                            <td style="width: 200px; height: 16px; background-color: background; text-align: center">
                                出车原因</td>
                            <td style="width: 150px; height: 16px; background-color: background; text-align: center">
                                用车部门</td>
                            <td style="width: 100px; height: 16px; background-color: background; text-align: center">
                                随行人员</td>
              

                        </tr>
                    </table>
                </HeaderTemplate>
                        <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
                <ItemTemplate>
                    <uc4:paicheinfo ID="Paicheinfo1" runat="server" carid='<%#DataBinder.Eval(Container.DataItem,"id")%>'/>
                </ItemTemplate>
                        <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            </asp:DataList></td>
              </tr>
              <tr>
                <td height="17" align="right" ></td>
              </tr>
              </table></td>
          </tr>
        </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
            <tr>
              <td height="30" class="style28">　<span class="style24"><strong>&nbsp;<span class="style27"> 当前第</span></strong></span><span 
                        class="style27"><strong><asp:Label 
                      ID="nowpage2" runat="server" CssClass="style24"></asp:Label>
                  </strong>
                  <span class="style24"><strong>/</strong></span><strong><asp:Label ID="allpage2"
                                runat="server" CssClass="style24"></asp:Label>
                  </strong>
                  <span class="style24"><strong>页 当前</strong></span><strong><asp:Label 
                      ID="Label2" runat="server" CssClass="style24"></asp:Label>
                  </strong>
                  <span class="style24"><strong>条记录&nbsp;
                            每页30条记录
                            </strong></span>
                    </span>
                  <span
                              style="font-size: 9pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button 
                      ID="btnback2" runat="server" OnClick="btnback2_Click"
                                Text="上一页" CssClass="style23" Height="24px" Width="70px" />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnnext2" runat="server" OnClick="btnnext2_Click" 
                      Text="下一页" CssClass="style23" Height="24px" Width="70px" />
                            &nbsp; &nbsp;&nbsp; &nbsp;</span></td>
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

    
</div>
        
    </form>
</body>
</html>
