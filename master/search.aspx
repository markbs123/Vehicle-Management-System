<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="master_search" %>

<%@ Register Src="hemepagejsy.ascx" TagName="hemepagejsy" TagPrefix="uc3" %>

<%@ Register Src="homepagechelian.ascx" TagName="homepagechelian" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server"> 

</script>
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
        .style8
        {
            height: 93px;
        }
        .left_bt2
        {}
        .style22
        {
            height: 316px;
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
            line-height: 18px;
            color: #000000;
            height: 39px;
            }
        .style30
        {
            height: 39px;
            text-align: center;
        }
        .style31
        {
            font-size: medium;
            font-family: 宋体, Arial, Helvetica, sans-serif;
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
        <td height="31"><div class="titlebt">信息查询</div></td>
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
                <td width="100%" align="right" bgcolor="White" class="style27">
				<p style="height: 22px; font-size: large;" class="style28">
                    &nbsp;&nbsp;&nbsp;&nbsp; <span class="style3"><em><strong>&nbsp;&nbsp;<span class="style25">信息查询</span></strong></em></span></td>
                </tr>
                <tr>
                <td width="100%" bgcolor="#66CCFF" class="style29" id="TextBox1">
				    <span class="style31"><strong>输入车辆牌号：</strong></span><span class="style3"><em><strong><asp:TextBox 
                        ID="TextBox1" runat="server" Height="16px" style="margin-top: 0px" 
                        Width="116px"></asp:TextBox>
&nbsp; </strong></em></span>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" 
                        ImageUrl="~/master/images/1200360.gif" onclick="ImageButton1_Click" 
                        style="margin-top: 6px" Width="65px" />
                    </td>
                </tr>
              <tr>
                <td width="100%" align="right"class="left_txt2">
				    &nbsp;</td>
              </tr>
              </table>
                    <asp:DataList 
                        ID="DataList1" runat="server"
                        
                        
                        style="text-align: right; font-family: 宋体, Arial, Helvetica, sans-serif; font-size: small; margin-left: 1px;" 
                        Width="1160px" BorderStyle="Ridge" BackColor="White" BorderColor="White" 
                        BorderWidth="2px" CellPadding="3" CellSpacing="1" Visible="False">
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <HeaderTemplate>
                    <table cellspacing="1" style="width: 1150px; color: #ffffff; border-top-style: none;
                        border-right-style: none; border-left-style: none; border-collapse: collapse;
                        border-bottom-style: none">
                        <tr>
                            <td style="width: 80px; height: 16px; background-color: background; text-align: center">
                                汽车型号</td>
                            <td style="width: 150px; height: 16px; background-color: background; text-align: center">
                                汽车牌号</td>
                            <td style="width: 80px; height: 16px; background-color: background; text-align: center">
                                在岗情况</td>
                            <td style="width: 150px; height: 16px; background-color: background; text-align: center">
                                发动机号</td>
                            <td style="width: 80px; height: 16px; background-color: background; text-align: center">
                                排气量</td>
                            <td style="width: 80px; height: 16px; background-color: background; text-align: center">
                                价格</td>
                            <td style="width: 150px; height: 16px; background-color: background; text-align: center">
                                购车时间</td>
                            <td style="width: 80px; height: 16px; background-color: background; text-align: center">
                                所属地区</td>
                            <td style="width: 100px; height: 16px; background-color: background; text-align: center">
                                所属单位</td>
                             <td style="width: 70px; height: 16px; background-color: background; text-align: center">
                                车种</td>
                            <td style="width: 100px; height: 16px; background-color: background; text-align: center">
                                备注信息</td>
                            <td style="width: 200px; height: 16px; background-color: background; text-align: center">
                                操作</td>
                        </tr>
                    </table>
                </HeaderTemplate>
                        <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
                <ItemTemplate>
                    <uc2:homepagechelian ID="homepagechelian1" runat="server" carid1='<%#DataBinder.Eval(Container.DataItem,"id")%>'/>
                </ItemTemplate>
                        <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
                  <div class="style26">
                      <br />
                      <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                          style="font-weight: 700" Text="返回" Width="65px" Visible="False" />
                  <br />
                </div>
              </td>
          </tr>
          <tr>
            <td bgcolor="#66CCFF" class="style30">
				    <span class="style31"><strong>输入人员姓名：</strong></span><span class="style3"><em><strong><asp:TextBox 
                        ID="TextBox2" runat="server" Height="16px" style="margin-top: 0px" 
                        Width="116px"></asp:TextBox>
&nbsp;&nbsp; </strong></em></span><asp:ImageButton ID="ImageButton2" runat="server" Height="20px" 
                        ImageUrl="~/master/images/1200360.gif" onclick="ImageButton2_Click" 
                        style="margin-top: 6px" Width="65px" />
                  </td>
          </tr>
          <tr>
            <td>
                    <asp:DataList 
                        ID="DataList2" runat="server" 
                        
                        style="text-align: right; font-family: 宋体, Arial, Helvetica, sans-serif; font-size: small; margin-left: 1px;" 
                        Width="1160px" BorderStyle="Ridge" BackColor="White" BorderColor="White" 
                        BorderWidth="2px" CellPadding="3" CellSpacing="1" Visible="False" >
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <HeaderTemplate>
                    <table cellspacing="1" style="width: 1150px; color: #ffffff; border-top-style: none;
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
                            <td style="width: 80px; height: 16px; background-color: background; text-align: center">
                                状态</td>
                             <td style="width: 200px; height: 16px; background-color: background; text-align: center">
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
