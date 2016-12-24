<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cxwaichu.aspx.cs" Inherits="user_cxwaichu" %>

<%@ Register Src="paicheinfo.ascx" TagName="paicheinfo" TagPrefix="uc4" %>

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
        .left_bt2
        {}
        .style22
        {
            height: 280px;
            text-align: center;
        }
        .style3
    {
        font-size: x-large;
    }
        .style26
        {
            text-align: center;
        }
        .style29
        {
            font-family: Arial, Helvetica, sans-serif;
            line-height: 18px;
            color: #000000;
            height: 39px;
            }
        .style31
        {
            font-size: medium;
            font-family: 宋体, Arial, Helvetica, sans-serif;
        }
        .style32
        {
            font-family: Arial, Helvetica, sans-serif;
            line-height: 18px;
            color: #000000;
            height: 39px;
            text-align: center;
        }
        .style33
        {
            font-family: Arial, Helvetica, sans-serif;
            line-height: 18px;
            color: #000000;
            height: 100px;
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
        <td height="31"><div class="titlebt">外出查询</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top" background="images/mail_rightbg.gif"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td valign="top" bgcolor="#F7F8F9" class="style8"><table width="100%" height="138" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td valign="top"><table width="98%" border="0" align="center" cellpadding="0" 
                cellspacing="0" style="height: 377px">
          <tr>
            <td class="style22">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" 
                    bgcolor="White" style="height: 35px; margin-top: 0px;">
                <tr>
                <td width="100%" bgcolor="White" class="style33">
				    </td>
                </tr>
                <tr>
                <td width="100%" bgcolor="White" class="style29">
                   
                    <br />
                    </td>
                </tr>
                <tr>
                <td width="100%" bgcolor="#66CCFF" class="style29">
				    <span class="style31"><strong>输入人员姓名：</strong></span><span class="style3"><em><strong><asp:TextBox 
                        ID="TextBox1" runat="server" Height="16px" style="margin-top: 0px" 
                        Width="116px" ></asp:TextBox>
&nbsp;</strong></em></span><asp:ImageButton ID="ImageButton1" runat="server" Height="20px" 
                        ImageUrl="~/master/images/1200360.gif" onclick="ImageButton1_Click" 
                        style="margin-top: 6px" Width="65px" />
                    </td>
                </tr>
              </table>
                   
                    <asp:DataList 
                        ID="DataList1" runat="server" 
                        
                          style="text-align: right; font-family: 宋体, Arial, Helvetica, sans-serif; font-size: small; margin-top: 0px;" 
                        BorderStyle="Ridge" Width="1143px" BackColor="White" BorderColor="White" 
                        BorderWidth="2px" CellPadding="3" CellSpacing="1">
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <HeaderTemplate>
                     <table cellspacing="1" style="width: 1135px; color: #ffffff; height: 1px;">
                        <tr>
                            <td style="width: 180px; height: 16px; background-color: background; text-align: center">
                                车牌号</td>
                            <td style="width: 100px; height: 16px; background-color: background; text-align: center">
                                驾驶员</td>
                            <td style="width: 200px; height: 16px; background-color: background; text-align: center">
                                出车时间</td>
                            <td style="width: 100px; height: 16px; background-color: background; text-align: center">
                                目的地</td>
                            <td style="width: 100px; height: 16px; background-color: background; text-align: center">
                                出车范围</td>
                              <td style="width: 70px; height: 16px; background-color: background; text-align: center">
                                出车天数</td>
                            <td style="width: 100px; height: 16px; background-color: background; text-align: center">
                                出车原因</td>
                            <td style="width: 150px; height: 16px; background-color: background; text-align: center">
                                用车部门</td>
                            <td style="width: 100px; height: 16px; background-color: background; text-align: center">
                                随行人员</td>
                            <td style="width: 70px; height: 16px; background-color: background; text-align: center">
                                入库</td>
                             <td style="width: 70px; height: 16px; background-color: background; text-align: center">
                                派车单</td>
                        </tr>
                    </table>
                </HeaderTemplate>
                        <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
                <ItemTemplate>
                    <uc4:paicheinfo ID="Paicheinfo1" runat="server" carid='<%#DataBinder.Eval(Container.DataItem,"id")%>'/>
                </ItemTemplate>
                        <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
                  <br />
                      <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                          style="font-weight: 700" Text="返回" Width="65px" Visible="False" />
              </td>
          </tr>
          <tr>
            <td bgcolor="#66CCFF" class="style32">
				    <span class="style31"><strong style="text-align: center">输入车辆牌号：</strong></span><span class="style3"><em><strong><asp:TextBox 
                        ID="TextBox2" runat="server" Height="16px" style="margin-top: 0px" 
                        Width="116px"></asp:TextBox>
&nbsp;</strong></em></span><asp:ImageButton ID="ImageButton2" runat="server" Height="20px" 
                        ImageUrl="~/master/images/1200360.gif" onclick="ImageButton2_Click" 
                        style="margin-top: 6px" Width="65px" />
                  </td>
          </tr>
          <tr>
            <td>
                   
                    <asp:DataList 
                        ID="DataList2" runat="server" 
                        
                          style="text-align: right; font-family: 宋体, Arial, Helvetica, sans-serif; font-size: small; margin-top: 0px;" 
                        BorderStyle="Ridge" Width="1143px" BackColor="White" BorderColor="White" 
                        BorderWidth="2px" CellPadding="3" CellSpacing="1">
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <HeaderTemplate>
                     <table cellspacing="1" style="width: 1135px; color: #ffffff; height: 1px;">
                        <tr>
                            <td style="width: 180px; height: 16px; background-color: background; text-align: center">
                                车牌号</td>
                            <td style="width: 100px; height: 16px; background-color: background; text-align: center">
                                驾驶员</td>
                            <td style="width: 200px; height: 16px; background-color: background; text-align: center">
                                出车时间</td>
                            <td style="width: 100px; height: 16px; background-color: background; text-align: center">
                                目的地</td>
                            <td style="width: 100px; height: 16px; background-color: background; text-align: center">
                                出车范围</td>
                              <td style="width: 70px; height: 16px; background-color: background; text-align: center">
                                出车天数</td>
                            <td style="width: 100px; height: 16px; background-color: background; text-align: center">
                                出车原因</td>
                            <td style="width: 150px; height: 16px; background-color: background; text-align: center">
                                用车部门</td>
                            <td style="width: 100px; height: 16px; background-color: background; text-align: center">
                                随行人员</td>
                            <td style="width: 70px; height: 16px; background-color: background; text-align: center">
                                入库</td>
                             <td style="width: 70px; height: 16px; background-color: background; text-align: center">
                                派车单</td>
                        </tr>
                    </table>
                </HeaderTemplate>
                        <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
                <ItemTemplate>
                    <uc4:paicheinfo ID="Paicheinfo1" runat="server" carid='<%#DataBinder.Eval(Container.DataItem,"id")%>'/>
                </ItemTemplate>
                        <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
            <div class="style26">
                  <br />
                  <asp:Button ID="Button2" runat="server" onclick="Button1_Click" 
                      style="font-weight: 700" Text="返回" Width="65px" Visible="False" />
                  <br />
                </div>
                  </td>
          </tr>
          </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0" 
                style="height: 507px; margin-top: 0px;">
            <tr>
              <td height="30">&nbsp;</td>
            </tr>
            <tr>
              <td height="30">&nbsp;</td>
            </tr>
          </table>
          </td>
      </tr>
    </table></td>
    <td background="images/mail_rightbg.gif" class="style8">　</td>
  </tr>
  </table>  
    
    </div>
        <span style="font-size: 10pt">
</span>
    </form>
</body>
</html>
