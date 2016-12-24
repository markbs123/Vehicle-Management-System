<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Load.aspx.cs" Inherits="Load" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
           width: 577px;
           height: 63px;
       }
       .style5
       {
           height: 183px;
       }
       #table212
       {
           margin-top: 44px;
           margin-bottom: 10px;
           height: 194px;
       }
       .style17
       {
           font-family: Arial, Helvetica, sans-serif;
           font-size: large;
           line-height: 25px;
           color: #333333;
           font-weight: bold;
           height: 28px;
           text-align: center;
       }
       .style18
       {
           font-size: large;
           font-family: 华文楷体;
           font-weight: bold;
       }
       .style20
       {
           height: 13px;
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
              <td width="4%" class="style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <img alt="" class="style3" src="images/111.gif" />
                  </td>
            </tr>
            <tr>
              <td width="96%" height="38" style="text-align: left">&nbsp;</td>
            </tr>
            <tr>
              <td><table cellSpacing="0" cellPadding="0" width="100%" border="0" id="table211" height="328">
                  <tr>
                    <td colspan="2" align="middle" style="text-align: left" class="style5">
                                            <table cellSpacing="0" cellPadding="0" width="100%" border="0" id="table212">
                          <tr>
                            <td class="style17">
                                &nbsp;
                                <asp:Button ID="Button1" runat="server" BorderStyle="None" CssClass="style18" 
                                    Height="24px" onclick="Button1_Click" Text="登录部门界面" 
                                    Width="206px" />
                              &nbsp;
                                <br />
                                <br />
                                <asp:Button ID="Button4" runat="server" BorderStyle="None" CssClass="style18" 
                                    Height="24px" onclick="Button4_Click" Text="登录监管界面" 
                                    Width="206px" />
                                </td>
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
            </table>
          </td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="20"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="login-buttom-bg">
      <tr>
        <td align="center" class="style20"><span class="login-buttom-txt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <strong>您的支持是我们前进最大的动力！ MARK出品&nbsp;
			    <asp:Button ID="Button2" runat="server" BackColor="#1D3647" 
                BorderStyle="None" ForeColor="White" Height="16px" onclick="Button2_Click1" 
                Text="后台管理" Width="81px" style="font-size: x-small; color: #ABCAD3" />
            </strong></span></td>
      </tr>
    </table></td>
  </tr>
</table>
        
        
        
     </div>    
        
    </form>
</body>
</html>

