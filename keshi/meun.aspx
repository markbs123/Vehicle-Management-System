<%@ Page Language="C#" AutoEventWireup="true" CodeFile="meun.aspx.cs" Inherits="keshi_meun" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
<style>
body {
	font:12px Arial, Helvetica, sans-serif;
	color: #000;
	background-color: #EEF2FB;
	margin: 0px;
}

    .style3
    {
        font-size: medium;
        font-family: 楷体;
    }
    
    .style4
    {
        font-family: 华文楷体;
        font-size: large;
    }
    .style5
    {
        font-family: 华文楷体;
    }
    
</style>
</head>
<body >
    <form id="form1" runat="server">
    <div>
&nbsp;<table border="0" width="182" cellspacing="0" cellpadding="0">
		<tr>
			<td background="images/menu_bgs.gif" height="30" 
                style="font-size: large; text-align: center" class="style5">
			    <strong>车辆管理</strong></td>
		</tr>
		<tr>
			<td height="1">
			<img border="0" src="images/menu_topline.gif" width="182" height="5"></td>
		</tr>
		<tr>
			<td background="images/menu_bg1.gif" height="30">
			<p align="center"><span style="font-size: 9pt">
                    <asp:HyperLink ID="HyperLink5" runat="server" ForeColor="Black" 
                    Target="mainFrame" NavigateUrl="~/keshi/clsearch.aspx" Font-Underline="False" 
                    CssClass="style3">全体车辆信息</asp:HyperLink></span></td>
		</tr>
		<tr>
			<td background="images/menu_bg1.gif" height="30">
			<p align="center"><span style="font-size: 9pt">
                    <asp:HyperLink ID="HyperLink8" runat="server" ForeColor="Black" 
                    Target="mainFrame" NavigateUrl="~/keshi/homepage.aspx" Font-Underline="False" 
                    CssClass="style3">外出车辆信息</asp:HyperLink></span></td>
		</tr>
		<tr>
			<td background="images/menu_bg1.gif" height="30">
			<p align="center">
			    <span style="font-size: 9pt">
                    <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="Black" 
                    Target="mainFrame" NavigateUrl="~/keshi/paicheinfo.aspx" Font-Underline="False" 
                    CssClass="style3">出车记录查询</asp:HyperLink></span></td>
		</tr>
	</table>
	<table border="0" width="182" cellspacing="0" cellpadding="0">
		<tr>
			<td background="images/menu_bgs.gif" height="30" 
                style="font-size: large; text-align: center" class="style5">
			    <strong>人员管理</strong></td>
		</tr>
		<tr>
			<td height="1">
			<img border="0" src="images/menu_topline.gif" width="182" height="5"></td>
		</tr>
		<tr>
			<td background="images/menu_bg1.gif" height="30">
			<p align="center"><span style="font-size: 9pt">
                    <asp:HyperLink ID="HyperLink7" runat="server" ForeColor="Black" 
                    Target="mainFrame" NavigateUrl="~/keshi/rysearch.aspx" Font-Underline="False" 
                    CssClass="style3">驾驶人员信息</asp:HyperLink></span></td>
		</tr>
		</table>
<table border="0" width="182" cellspacing="0" cellpadding="0">
		<tr>
			<td background="images/menu_bgs.gif" height="30" class="style4" 
                style="text-align: center">
			    <strong>用户管理</strong></td>
		</tr>
		<tr>
			<td height="1">
			<img border="0" src="images/menu_topline.gif" width="182" height="5"></td>
		</tr>
		<tr>
			<td background="images/menu_bg1.gif" height="30">
			<p align="center"><span style="font-size: 9pt">
                    <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Black" 
                    Target="mainFrame" NavigateUrl="~/keshi/password.aspx" Font-Underline="False" 
                    CssClass="style3">密码修改</asp:HyperLink></span></td>
		</tr>
		<tr>
			<td background="images/menu_bg1.gif" height="30" style="text-align: center">
			    &nbsp;</td>
		</tr>
	</table>

    
    </div>
    </form>
</body>
</html>

