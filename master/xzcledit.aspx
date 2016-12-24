<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xzcledit.aspx.cs" Inherits="master_xzcledit" %>

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
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
            line-height: 18px;
            color: #000000;
            height: 65px;
            width: 18%;
        }
        .style2
        {
            height: 65px;
        }
        .style3
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 11px;
            line-height: 18px;
            color: #000000;
            height: 40px;
            width: 18%;
        }
        .style5
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 11px;
            line-height: 18px;
            color: #666666;
            height: 40px;
        }
        .style8
        {
            width: 65%;
        }
        .style9
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
            line-height: 18px;
            color: #000000;
            width: 18%;
        }
        .style12
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 11px;
            line-height: 18px;
            color: #666666;
            height: 30px;
        }
        .style13
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
            line-height: 18px;
            color: #000000;
            height: 30px;
            width: 18%;
        }
        .style14
        {
            height: 30px;
        }
        .style15
        {
            font-size: small;
        }
-->
</style>

<link href="images/skin.css" rel="stylesheet" type="text/css" />
</head>
<body bgcolor="#ffffff" >
    <form id="formxx" runat="server">
    <div>
        <div style="text-align: left">
        
        
        <table width="100%" border="0" cellpadding="0" cellspacing="0" 
                style="height: 425px">
  <tr>
    <td width="17" height="29" valign="top" background="images/mail_leftbg.gif"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td width="935" height="29" valign="top" background="images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">车辆修改</div></td>
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
                    class="nowtable" bgcolor="White">
              <tr>
                <td class="left_bt2">&nbsp;&nbsp;&nbsp;&nbsp; <strong><em>请选择要修改资料的车辆</em> &nbsp; &nbsp;</strong></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td bgcolor="White"><table width="100%" border="0" cellspacing="0" cellpadding="0" 
                    style="margin-top: 13px">
              <tr>
                     <td height="30" align="right" bgcolor="White" class="style9">
				    <strong>汽车牌号：</strong></td>
                <td width="2%" bgcolor="White">　</td>
                <td width="19%" height="30" bgcolor="White">　
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
                <td width="67%" height="30" bgcolor="White" class="left_txt">　</td>
              </tr>
              <tr>
                <td height="30" align="right" bgcolor="White" class="style9">
				    <strong>汽车型号：</strong></td>
                <td width="2%" bgcolor="White">　</td>
                <td width="19%" height="30" bgcolor="White">　
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                <td width="67%" height="30" bgcolor="White" class="left_txt">　</td>
              </tr>
              <tr>
                <td height="30" align="right" class="style9" bgcolor="White">
				    <strong>发动机号：</strong></td>
                <td>　</td>
                <td height="30" bgcolor="White">　
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                <td height="30" class="left_txt" bgcolor="White">　
                         
                    <asp:RequiredFieldValidator 
                        ID="rfvTxtmm" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="发动机号不能空" 
                        style="color: #FF0000; font-size: small;"></asp:RequiredFieldValidator>
                        </td>
              </tr>
              <tr>
                <td height="30" align="right" class="style9" bgcolor="White"><strong>排气量：</strong></td>
                <td>&nbsp;</td>
                 <td height="30" bgcolor="White">　
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                  </td>
                <td height="30" class="left_txt" bgcolor="White">&nbsp;</td>
              </tr>
              <tr>
                <td height="30" align="right" class="style9" bgcolor="White"><strong>价格：</strong></td>
                <td>&nbsp;</td>
                 <td height="30" bgcolor="White">　
                 <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                  </td>
                <td height="30" class="left_txt" bgcolor="White">&nbsp;</td>
                        </td>
              </tr>
                <tr>
                <td height="30" align="right" class="style9" bgcolor="White"><strong>公里数:</strong></td>
                <td>&nbsp;</td>
                 <td height="30" bgcolor="White">　
                 <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                  </td>
                <td height="30" class="left_txt" bgcolor="White">&nbsp;</td>
                        </tr>
              <tr>
                <td align="right" bgcolor="White" class="style13">
				    <strong>购买日期：</strong></td>
                <td bgcolor="#f2f2f2" class="style14">　</td>
                <td bgcolor="White" colspan="2" class="style14">　
                         
                         
                    <asp:Label ID="Label1" runat="server" 
                        style="font-size: small; font-weight: 700"></asp:Label>
&nbsp;<span class="style5">选择日期：</span><asp:DropDownList ID="DropDownList4" runat="server" 
                        onselectedindexchanged="DropDownList4_SelectedIndexChanged1" >
                    </asp:DropDownList>
                    <span class="style3"><strong>年</strong></span><asp:DropDownList 
                        ID="DropDownList5" runat="server" 
                        onselectedindexchanged="DropDownList5_SelectedIndexChanged1">
                    </asp:DropDownList>
                    <span class="style3"><strong>月</strong></span><asp:DropDownList 
                        ID="DropDownList6" runat="server">
                    </asp:DropDownList>
                    <strong><span class="style3">日&nbsp;&nbsp; 
                    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                        style="font-weight: 700; height: 21px" Text="修改" Width="55px" />
                    </span></strong>&nbsp;&nbsp; </td>
              </tr>
              <tr>
                <td align="right" bgcolor="White" class="style13">
				    <strong>所属地区：</strong></td>
                <td bgcolor="#F7F8F9" class="style14">　</td>
                <td bgcolor="White" class="style14">　
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="20px" Width="83px">
                    </asp:DropDownList>
                    &nbsp;</td>
               <td bgcolor="White" class="style12">　&nbsp;&nbsp;&nbsp; </td>
              </tr>
                <tr>
                <td align="right" bgcolor="White" class="style13">
				    <strong>所属单位：</strong></td>
                  <td>&nbsp;</td>
                 <td height="30" bgcolor="White">　
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                  </td>
                 <td height="30" class="left_txt" bgcolor="White">&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="rfvTxtmm3" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="单位不能空" 
                        style="color: #FF0000; font-size: small;"></asp:RequiredFieldValidator>
                    </td>
                </tr>
              <tr>
                <td align="right" bgcolor="White" class="style13">
				    <strong>车种：</strong></td>
                  <td>&nbsp;</td>
                 <td height="30" bgcolor="White">　
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                  </td>
                 <td height="30" class="left_txt" bgcolor="White">&nbsp;</td>
              </tr>
				<tr>
                <td align="right" class="style1" bgcolor="White"><strong>备注信息：</strong></td>
                <td class="style2">　</td>
                <td class="style2" colspan="2" bgcolor="White">　
                        <asp:TextBox ID="TextBox6" runat="server" Width="631px" Height="87px" 
                        TextMode="MultiLine" style="margin-top: 14px"></asp:TextBox>　</td>
              </tr>
              <tr>
                <td height="17" colspan="4" align="right" bgcolor="White" class="style15" >&nbsp;</td>
              </tr>
              </table></td>
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
    </div>
        &nbsp;
          <table border="0" cellspacing="0" cellpadding="0" 
        style="margin-bottom: 17px; width: 126%; height: 48px;">
            <tr>
              <td height="30" align="right" style="text-align: center" class="style8">
                        &nbsp;<asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" 
                      style="font-weight: 700; margin-top: 0px;" Width="66px" Height="27px" />　&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                            ID="Button2" runat="server" Height="30px" onclick="Button2_Click" 
                      style="font-weight: 700; margin-top: 7px;" Text="取消" Width="65px" 
                            CausesValidation="False" />
                </td>
              <td width="6%" height="30" align="right" style="width: 50%">　　</td>
            </tr>
            </table>
    </form>
</body>
</html>
