<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bumencx.aspx.cs" Inherits="master_yhcx" %>

<%@ Register Src="bumen.ascx" TagName="danwei" TagPrefix="uc1" %>

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
            text-align: left;
        }
        .style23
        {
            font-weight: bold;
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
            height: 24px;
            text-align: center;
        }
        .style30
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 11px;
            line-height: 18px;
            color: #000000;
            height: 51px;
            text-align: center;
        }
        .style31
        {
            font-size: medium;
            font-family: 宋体, Arial, Helvetica, sans-serif;
        }
        .style3
    {
        font-size: x-large;
    }
        .style37
        {
            color: #FF0000;
            font-size: small;
        }
        .style25
        {
            text-decoration: underline;
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
        <td height="31"><div class="titlebt">单位查询</div></td>
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
            <td class="style22">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" 
                    bgcolor="White" style="height: 106px">
                <tr>
                <td width="100%" align="right" bgcolor="#66CCFF" class="style27">
				<p style="height: 22px; font-size: large;" class="style28">
                    &nbsp;&nbsp;&nbsp;&nbsp;<span class="style3"><em><strong><span class="style25">单位查询</span></strong></em></span></td>
                </tr>
                <tr>
                <td width="100%" bgcolor="#66CCFF" class="style30">
				    <span class="style31"><strong>输入单位名称：</strong></span><span class="style3"><em><strong><asp:TextBox 
                        ID="TextBox1" runat="server" Height="16px" style="margin-top: 0px" 
                        Width="116px"></asp:TextBox>
&nbsp; </strong></em></span>
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="20px" 
                        ImageUrl="~/master/images/1200360.gif" onclick="ImageButton3_Click" 
                        Width="65px" />
                    &nbsp;<br />
                    <span class="style37">(如输入“XX县XX局”)</span></td>
                </tr>
              <tr>
                <td width="100%" align="right" bgcolor="#f2f2f2" class="style29" >
        <asp:DataList ID="DataList1" runat="server" BackColor="White" style="font-size: small; "
            BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
            CellSpacing="1" Width="360px" HorizontalAlign="Center" Visible="False">
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <HeaderTemplate>
                <table cellspacing="1" style="width: 460px"color: #ffffff; border-top-style: none;
                        border-right-style: none; border-left-style: none; border-collapse: collapse;
                        border-bottom-style: none">
                    <tr>
                        <td style="width: 150px; height: 16px; background-color: background; text-align: center">
                           单位名</td>
                        <td style="width: 100px; height: 16px; background-color: background; text-align: center">
                           密码</td>
                        <td style="width: 200px; height: 16px; background-color: background; text-align: center">
                           操作</td>
                    </tr>
                </table>
            </HeaderTemplate>
            <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
            <ItemTemplate>
                <uc1:danwei ID="danwei1" runat="server" danweiid='<%#DataBinder.Eval(Container.DataItem,"id")%>'/>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
                    <br />
                    <span
                              style="font-size: 9pt"> 
                    <asp:Button ID="Button1" runat="server" 
                      OnClick="Button1_Click" Text="返回" Width="70px" CssClass="style23" 
                      Height="24px" Visible="False" /></span>
                  </td>
              </tr>
              </table>
                  <div class="style26">
                  <br />
                </div>
              </td>
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
