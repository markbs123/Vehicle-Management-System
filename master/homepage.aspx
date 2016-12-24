<%@ Page Language="C#" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="master_homepage" %>

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
        .style8
        {
            height: 93px;
        }
        .left_bt2
        {}
        .style18
        {
            height: 51px;
            text-align: center;
        }
        .style19
        {
            height: 23px;
        }
        .style24
        {
            font-size: small;
        }
        .style23
        {
            font-weight: bold;
        }
        .style27
        {
            color: #000000;
        }
        .style33
    {
        text-align: left;
    }
        .style37
        {
            color: #000000;
            text-align: center;
            height: 6px;
        }
        .style38
        {
            color: #000000;
            text-align: center;
            height: 23px;
            font-size: x-large;
        }
        .style39
        {
            height: 65px;
        }
                .style28
        {
            text-align: left;
        }
        .style3
    {
        font-size: x-large;
    }
        .style25
        {
            text-decoration: underline;
            font-family: 黑体;
        }
        .style40
        {
            height: 32px;
        }
        .style41
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
        <td height="31"><div class="titlebt">外出信息</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top" background="images/mail_rightbg.gif"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td valign="top" bgcolor="#F7F8F9" class="style8"><table width="100%" height="138" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td valign="top">
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="30"><table width="98%" border="0" align="center" cellpadding="0" 
                      cellspacing="0" style="height: 301px">
          <tr>
            <td ><table border="0" cellpadding="0" cellspacing="0" 
                    class="nowtable">
                <tr>
                <td width="100%" align="right" bgcolor="#66CCFF" class="style39" 
                        style="text-align: left" >
				<p style="height: 22px; font-size: large;" class="style28">
                    &nbsp;&nbsp;&nbsp;&nbsp; <span class="style3"><em><strong>&nbsp;&nbsp;<span 
                        class="style41"> </span> 
                    <span class="style25">外出车辆信息</span></strong></em></span></td>
                </tr>
                <tr>
                <td width="100%" align="right" bgcolor="#66CCFF" class="style40" 
                        style="text-align: left" >
				    </td>
                </tr>
                <tr>
                <td width="100%" align="right" bgcolor="#66CCFF" class="style38">
				    <span style="font-size: 9pt">
                    <asp:Button ID="Button5" runat="server" Height="21px" style="font-weight: 700" 
                        Text="查询外出车辆" Width="109px" onclick="Button5_Click" CssClass="style33" />
                    </span></td>
                </tr>
                <tr>
                <td width="100%" align="right" bgcolor="White" class="style37">
				    </td>
                </tr>
              <tr>
                <td bgcolor="White">
                   
                    <asp:DataList 
                        ID="DataList4" runat="server" 
                        
                          style="text-align: right; font-family: 宋体, Arial, Helvetica, sans-serif; font-size: small; margin-top: 5px;" 
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
                            <td style="width: 70px; height: 16px; background-color: background; text-align: center">
                                操作</td>
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
                <td class="style18" bgcolor="White">
                  <span class="style24"><strong>&nbsp;<span class="style27"> 当前第</span></strong></span><span 
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
                              &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnnext2" runat="server" OnClick="btnnext2_Click" 
                      Text="下一页" CssClass="style23" Height="24px" Width="70px" />
                            &nbsp; &nbsp;&nbsp; &nbsp;</span></td>
              </tr>
              <tr>
                <td class="style19" bgcolor="White"></td>
              </tr>
            </table></td>
          </tr>
          </table>
          	</td>
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
