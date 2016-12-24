<%@ Page Language="C#" AutoEventWireup="true" CodeFile="top.aspx.cs" Inherits="keshi_top" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="images/skin.css" rel="stylesheet" type="text/css">
    <style type="text/css">
        .style2
        {
            width: 18%;
            height: 32px;
        }
        .style3
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            color: #FFFFFF;
            text-decoration: none;
            height: 38px;
            width: 88%;
            position: 固定;
            line-height: 38px;
            text-align: left;
        }
        .style5
        {
            font-family: 华文楷体;
            font-size: medium;
            color: #FFFF00;
        }
        .style6
        {
            width: 18%;
            height: 32px;
            color: #FFFFFF;
            font-family: 黑体;
            font-size: x-large;
        }
    </style>
</head>
<body leftmargin="0" topmargin="0">
    <form id="form1" runat="server">
    <div>
<table width="100%" height="64" border="0" cellpadding="0" cellspacing="0" class="admin_topbg">
  <tr>
    <td height="64" class="style6">
        <strong>定西市公务用车管理系统</strong></td>
    <td width="39%" valign="top" rowspan="2"><table width="100%" border="0" cellspacing="0" 
            cellpadding="0" style="height: 60px">
      <tr>
        <td height="38" class="style3" style="vertical-align: middle"><strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label 
                ID="Label1" runat="server" ForeColor="#FFFF66"
                Text="Label" CssClass="style5"></asp:Label><span class="style5">管理员 </span>您好,欢迎登陆使用定西市公务用车管理系统！！</strong></td>
        <td width="22%"><a href="loginout.aspx" target="_parent">
            <img src="images/out.gif" 
                alt="安全退出" border="0" style="height: 26px; width: 76px; margin-left: 0px"></a></td>
        <td width="4%">　</td>
      </tr>
      <tr>
        <td colspan="3" style="height: 19px">　</td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td height="64" class="style2" style="height: 32px">
        &nbsp;</td>
  </tr>
</table>
    </div>
    </form>
</body>
</html>
