<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rysearch.aspx.cs" Inherits="user_rysearch" %>


<%@ Register Src="hemepagejsy.ascx" TagName="hemepagejsy" TagPrefix="uc3" %>

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
        .style8
        {
            height: 93px;
        }
        .style9
        {
            font-size: medium;
        }
        .left_bt2
        {}
        .style22
        {
            height: 221px;
            text-align: center;
        }
        .style3
    {
        font-size: x-large;
    }
        .style24
        {
            font-size: small;
        }
        .style23
        {
            font-weight: bold;
        }
        .style25
        {
            text-decoration: underline;
        }
        .style26
        {
            text-align: center;
        }
        .style27
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 11px;
            line-height: 18px;
            color: #000000;
            height: 65px;
        }
        .style28
        {
            text-align: left;
        }
        .style29
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 11px;
            line-height: 18px;
            color: #000000;
            height: 26px;
            text-align: center;
        }
        .style33
        {
            font-family: 黑体;
        }
        -->
</style>
    <link href="images/skin.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: left">
    
  
    
<table width="100%" border="0" cellpadding="0" cellspacing="0" 
            style="height: 429px; margin-bottom: 5px;">
  <tr>
    <td width="935" height="29" valign="top" background="images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table1">
      <tr>
        <td height="31"><div class="titlebt">人员信息</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top" background="images/mail_rightbg.gif"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td valign="top" bgcolor="#F7F8F9" class="style8"><table width="100%" height="138" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="13" valign="top">&nbsp;</td>
      </tr>
      <tr>
        <td valign="top"><table width="98%" border="0" align="center" cellpadding="0" 
                cellspacing="0" style="height: 377px">
          <tr>
            <td class="style22"><table width="100%" border="0" cellspacing="0" cellpadding="0" 
                    bgcolor="White" style="height: 35px">
                <tr>
                <td width="100%" align="right" bgcolor="#66CCFF" class="style27">
				<p style="height: 22px; font-size: large;" class="style28">
                    &nbsp;&nbsp;&nbsp;&nbsp; <span class="style3"><em><strong>&nbsp;&nbsp; 
                    <span class="style25">人员信息</span></strong></em></span></td>
                </tr>
                <tr>
                <td width="100%" bgcolor="#66CCFF" class="style29">
				    <span style="font-size: 9pt">
                    <asp:Button ID="Button4" runat="server" Height="21px" style="font-weight: 700" 
                        Text="新增人员" Width="74px" onclick="Button4_Click" CssClass="style33" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button5" runat="server" Height="21px" style="font-weight: 700" 
                        Text="查询人员" Width="74px" onclick="Button5_Click" CssClass="style33" />
                    </span></td>
                </tr>
              <tr>
                <td width="100%" align="right" bgcolor="#f2f2f2" class="left_txt2">
				    &nbsp;</td>
              </tr>
              </table>
                    <asp:DataList 
                        ID="DataList2" runat="server" 
                        
                        style="text-align: right; font-family: 宋体, Arial, Helvetica, sans-serif; font-size: small; margin-left: 1px;" 
                        Width="1143px" BorderStyle="Ridge" BackColor="White" BorderColor="White" 
                        BorderWidth="2px" CellPadding="3" CellSpacing="1" >
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <HeaderTemplate>
                    <table cellspacing="1" style="width: 1135px; color: #ffffff; border-top-style: none;
                        border-right-style: none; border-left-style: none; border-collapse: collapse;
                        border-bottom-style: none">
                        <tr>
                            <td style="width: 150px; height: 16px; background-color: background; text-align: center">
                                姓名</td>
                            <td style="width: 50px; height: 16px; background-color: background; text-align: center">
                                性别</td>
                            <td style="width: 200px; height: 16px; background-color: background; text-align: center">
                                出生年月</td>
                            <td style="width: 200px; height: 16px; background-color: background; text-align: center">
                                身份证号</td>
                            <td style="width: 150px; height: 16px; background-color: background; text-align: center">
                                驾驶证号</td>
                            <td style="width: 100px; height: 16px; background-color: background; text-align: center">
                                联系方式</td>
                              <td style="width: 100px; height: 16px; background-color: background; text-align: center">
                                所属地区</td>
                            <td style="width: 150px; height: 16px; background-color: background; text-align: center">
                                所属单位</td>
                            <td style="width: 150px; height: 16px; background-color: background; text-align: center">
                                常配车辆</td>
                            <td style="width: 60px; height: 16px; background-color: background; text-align: center">
                                状态</td>
                            <td style="width: 150px; height: 16px; background-color: background; text-align: center">
                                操作</td>

                        </tr>
                    </table>
                </HeaderTemplate>
                        <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
                <ItemTemplate>
                    <uc3:hemepagejsy ID="hemepagejsy1" runat="server" carid1='<%#DataBinder.Eval(Container.DataItem,"id")%>'/>
                </ItemTemplate>
                        <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
                  <div class="style26">
                  <br />
                  <span class="style24"><strong>当前第</strong></span><strong><asp:Label 
                      ID="nowpage" runat="server" CssClass="style24"></asp:Label>
                  </strong>
                  <span class="style24"><strong>/</strong></span><strong><asp:Label ID="allpage"
                                runat="server" CssClass="style24"></asp:Label>
                  </strong>
                  <span class="style24"><strong>页 当前</strong></span><strong><asp:Label 
                      ID="Label1" runat="server" CssClass="style24"></asp:Label>
                  </strong>
                  <span class="style24"><strong>条记录&nbsp;
                            每页30条记录
                            </strong></span>
                  <span
                              style="font-size: 9pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button 
                      ID="btnback" runat="server" OnClick="btnback_Click"
                                Text="上一页" CssClass="style23" Height="24px" Width="70px" />
                              &nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnnext" runat="server" OnClick="btnnext_Click" 
                      Text="下一页" CssClass="style23" Height="24px" Width="70px" />
                            &nbsp; &nbsp;&nbsp; &nbsp;<asp:Button ID="Button3" runat="server" 
                      OnClick="Button3_Click" Text="返回" Width="70px" CssClass="style23" 
                      Height="24px" /></span>
                </div>
              </td>
          </tr>
          <tr>
            <td>
&nbsp;&nbsp;
                    &nbsp;</td>
          </tr>
          <tr>
            <td>
                    &nbsp;</td>
          </tr>
          </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0" 
                style="height: 507px; margin-top: 0px;">
            <tr>
              <td height="30">&nbsp;</td>
            </tr>
          </table>
          </td>
      </tr>
    </table></td>
    <td background="images/mail_rightbg.gif" class="style8">　</td>
  </tr>
  <tr>
      <td valign="top" background="images/buttom_bgs.gif" class="style9">&nbsp;</td>
    <td background="images/mail_rightbg.gif"><img src="images/buttom_right2.gif" width="16" height="17" /></td>
  </tr>
</table>  
    
    </div>
        <span style="font-size: 10pt">
</span>
    </form>
</body>
</html>