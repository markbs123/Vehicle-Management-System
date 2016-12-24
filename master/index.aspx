<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="master_index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>定西市公务用车管理系统</title>
<link href="images/skin.css" rel="stylesheet" type="text/css">
   <style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #1D3647;
}
       .style1
       {
           width: 1%;
       }
       .style2
       {
           height: 130px;
           width: 100%;
       }
       .style3
       {
           width: 555px;
           height: 64px;
       }
       .style4
       {
           width: 38%;
           text-align: center;
       }
       .style5
       {
           height: 183px;
       }
       .style7
       {
           text-align: left;
           font-family: Arial, Helvetica, sans-serif;
           font-size: x-large;
           line-height: 25px;
           color: #666666;
           height: 38px;
       }
       #table212
       {
           margin-top: 44px;
           margin-bottom: 10px;
           height: 194px;
       }
       .style12
       {
           font-size: large;
       }
       .style13
       {
           font-size: medium;
       }
       .style14
       {
           font-family: Arial, Helvetica, sans-serif;
           font-size: large;
           line-height: 25px;
           color: #333333;
           font-weight: bold;
           width: 15%;
           height: 55px;
       }
       .style15
       {
           height: 55px;
       }
       .style16
       {
           font-size: large;
       }
       .style17
       {
           font-family: Arial, Helvetica, sans-serif;
           font-size: large;
           line-height: 25px;
           color: #333333;
           font-weight: bold;
           width: 15%;
           height: 46px;
       }
       .style18
       {
           height: 46px;
       }
-->
</style>

</head>
<body leftmargin="0" topmargin="0" rightmargin="0"  bottommargin="0" style="text-align: center" >
    <form id="form1" runat="server">
        <div style="text-align: center">
        <table width="100%" height="166" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="42" valign="top"><table width="100%" height="42" border="0" cellpadding="0" cellspacing="0" class="login_top_bg">
      <tr>
        <td width="1%" height="21">　</td>
        <td height="42">　</td>
        <td width="17%">　</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td valign="top"><table width="100%" height="532" border="0" cellpadding="0" cellspacing="0" class="login_bg">
      <tr>
        <td align="right" class="style1"></td>
        <td width="1%" ></td>
        <td width="50%" valign="bottom">
          </td>
      </tr>
      <tr>
        <td align="right" class="style1"></td>
        <td width="1%" >　</td>
        <td width="50%" valign="bottom">
            &nbsp;<table width="100%" height="59" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="4%" class="style2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <img alt="" class="style3" src="images/111.gif" />
                  </td>
            </tr>
            <tr>
              <td class="style4" rowspan="3">&nbsp;</td>
              <td width="96%" height="38" style="text-align: left">&nbsp;</td>
            </tr>
            <tr>
              <td width="96%" class="style7"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;登陆后台管理</strong></td>
            </tr>
            <tr>
              <td rowspan="4"><table cellSpacing="0" cellPadding="0" width="100%" border="0" id="table211" height="328">
                  <tr>
                    <td colspan="2" align="middle" style="text-align: left" class="style5">
                                            <table cellSpacing="0" cellPadding="0" width="100%" border="0" id="table212">
                          <tr>
                            <td class="style17">管理员：</td>
                            <td class="style18" style="text-align: left" colspan="2">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="126px" CssClass="style16">
                        </asp:DropDownList>
                                &nbsp;<asp:TextBox ID="txtcname" runat="server" style="font-size: large" 
                                    Visible="False"></asp:TextBox>
                              </td>
                          </tr>
                          <tr>
                            <td class="style17">密&nbsp;&nbsp;&nbsp; 码： </td>
                            <td class="style18" style="text-align: left">
                        <asp:TextBox ID="txtcpwd" runat="server" TextMode="Password" Width="125px" 
                                    CssClass="style16"></asp:TextBox>
                              &nbsp;&nbsp;&nbsp;&nbsp;
                              </td>
                            <td class="style18" style="text-align: left">
                <asp:RequiredFieldValidator ID="rfvTxtmm" runat="server" 
                    ControlToValidate="txtcpwd" ErrorMessage="密码不能空" style="color: #FF0000"></asp:RequiredFieldValidator>
                              </td>
                          </tr>
                          <tr>
                            <td class="style14" >验证码：</td>
                            <td class="style15" style="text-align: left">
                    <asp:TextBox ID="txtyzm" runat="server" Width="125px" CssClass="style16"></asp:TextBox>
                                <asp:Label ID="lblyzm" runat="server" Text="Label" BackColor="#E0E0E0" 
                                    BorderColor="#FFFF80" Font-Bold="True" Font-Size="18px" ForeColor="Olive" 
                                    Height="24px" Width="48px"></asp:Label>&nbsp;&nbsp;</td>
                            <td class="style15" style="text-align: left">
                                <asp:RequiredFieldValidator 
                                    ID="rfvTxtyzm" runat="server" 
                    ControlToValidate="txtyzm" ErrorMessage="验证码不能空" style="color: #FF0000"></asp:RequiredFieldValidator>
                              </td>
                          </tr>
                          <tr>
                            <td height="35" class="style12" colspan="3" >&nbsp;&nbsp; 
                                <asp:Button ID="btn1" 
                                    runat="server" OnClick="btn1_Click" Text="登入" 
                                    Width="91px" Height="27px" style="font-weight: 700" CssClass="style13" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" CausesValidation="False" Text="返回" UseSubmitBehavior="False"
                            Width="93px" Height="26px" style="font-weight: 700; margin-top: 10px;" 
                                    CssClass="style13" onclick="Button1_Click" />&nbsp;
                        <asp:Label ID="yzxx" runat="server" ForeColor="Red" Visible="False" Width="96px" 
                                    Height="23px" style="font-size: small"></asp:Label></td>
                          </tr>
                        </table>
                        <br>
                        </td>
                  </tr>
                  <tr>
                    <td width="433" height="164" align="right" valign="bottom">&nbsp;</td>
                    <td width="57" align="right" valign="bottom">　</td>
                  </tr>
              </table></td>
            </tr>
            <tr>
              <td class="style4"></td>
            </tr>
            <tr>
              <td class="style4"></td>
            </tr>
            <tr>
              <td class="style4"></td>
            </tr>
          </table>
          </td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="20"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="login-buttom-bg">
      <tr>
        <td align="center"><span class="login-buttom-txt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            您的支持是我们前进最大的动力！ MARK出品</span></td>
      </tr>
    </table></td>
  </tr>
</table>
        
        
        
     </div>    
        
    </form>
</body>
</html>
