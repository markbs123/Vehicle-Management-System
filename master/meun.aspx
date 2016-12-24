<%@ Page Language="C#" AutoEventWireup="true" CodeFile="meun.aspx.cs" Inherits="master_meun" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
   <style>
body {
	font:12px Arial, Helvetica, sans-serif;
	color: #000;
	background-color: #EEF2FB;
	margin: 0px;
}

       .style2
       {
           height: 28px;
           text-align: center;
           font-size: large;
           font-family: 华文楷体;
       }

       .style5
       {
           height: 1px;
       }

       .style6
       {
           font-size: large;
           font-family: 华文楷体;
       }
       .style7
       {
           font-family: 楷体;
           font-size: medium;
       }

       </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

<table border="0" width="182" cellspacing="0" cellpadding="0">
		<tr>
			<td background="images/menu_bgs.gif" height="30" class="style6" 
                style="text-align: center">
			    <strong>车辆管理</strong></td>
		</tr>
		<tr>
			<td height="1">
			<img border="0" src="images/menu_topline.gif" width="182" height="5"></td>
		</tr>
		<tr>
			<td background="images/menu_bg1.gif" height="26">
			<p align="center">
                    <span style="font-size: 9pt">
                    <asp:HyperLink ID="HyperLink10" runat="server" ForeColor="Black" 
                        Target="mainFrame" NavigateUrl="~/master/clsearch.aspx" 
                        Font-Underline="False" CssClass="style7">全体车辆信息</asp:HyperLink></span></td>
		</tr>
		<tr>
			<td background="images/menu_bg1.gif" height="26">
			<p align="center">
                    <span style="font-size: 9pt">
                    <asp:HyperLink ID="HyperLink18" runat="server" ForeColor="Black" 
                        Target="mainFrame" NavigateUrl="~/master/homepage.aspx" 
                        Font-Underline="False" CssClass="style7">外出车辆信息</asp:HyperLink></span></td>
		</tr>
		<tr>
			<td background="images/menu_bg1.gif" height="26">
			<p align="center">
                    <span style="font-size: 9pt">
                    <asp:HyperLink ID="HyperLink16" runat="server" ForeColor="Black" 
                        Target="mainFrame" NavigateUrl="~/master/paiche.aspx" Font-Underline="False" 
                        CssClass="style7">车辆外出</asp:HyperLink></span></td>
		</tr>
        <tr>
			<td background="images/menu_bg1.gif" height="26">
			<p align="center">
                    <span style="font-size: 9pt">
                    <asp:HyperLink ID="HyperLink17" runat="server" ForeColor="Black" 
                        Target="mainFrame" NavigateUrl="~/master/paicheinfo.aspx" 
                        Font-Underline="False" CssClass="style7">出车记录查询</asp:HyperLink></span></td>
		</tr>
	</table>

<table border="0" width="182" cellspacing="0" cellpadding="0">
		<tr>
			<td background="images/menu_bgs.gif" height="30" class="style6" 
                style="text-align: center">
			    <strong>人员管理</strong></td>
		</tr>
		<tr>
			<td height="1">
			<img border="0" src="images/menu_topline.gif" width="182" height="5"></td>
		</tr>
		<tr>
			<td background="images/menu_bg1.gif" height="26">
			<p align="center">
                    <span style="font-size: 9pt">
                    <asp:HyperLink ID="HyperLink9" runat="server" ForeColor="Black" 
                        Target="mainFrame" NavigateUrl="~/master/rysearch.aspx" 
                        Font-Underline="False" CssClass="style7">驾驶人员信息</asp:HyperLink></span></td>
		</tr>
		</table>

<table border="0" width="182" cellspacing="0" cellpadding="0">
		<tr>
			<td background="images/menu_bgs.gif" class="style2">
			    <strong>系统管理</strong></td>
		</tr>
		<tr>
			<td class="style5">
			<img border="0" src="images/menu_topline.gif" width="182" height="5"></td>
		</tr>
		<tr>
			<td background="images/menu_bg1.gif" height="26">
                    <p align="center"><span style="font-size: 9pt">
                    <asp:HyperLink ID="HyperLink12" runat="server" ForeColor="Black" 
                        Target="mainFrame" NavigateUrl="~/master/bumen.aspx" Font-Underline="False" 
                            CssClass="style7">单位用户信息</asp:HyperLink></span></td>
		</tr>
		

		<tr>
			<td background="images/menu_bg1.gif" height="26">
                     <p align="center"><span style="font-size: 9pt">
                    <asp:HyperLink ID="HyperLink13" runat="server" ForeColor="Black" 
                        Target="mainFrame" NavigateUrl="~/master/yonghu.aspx" 
                        Font-Underline="False" CssClass="style7">监管部门管理</asp:HyperLink></span></td>
		</tr>
        <td background="images/menu_bg1.gif" height="26">
                     <p align="center"><span style="font-size: 9pt">
                    <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Black" 
                        Target="mainFrame" NavigateUrl="~/master/password.aspx" 
                        Font-Underline="False" CssClass="style7">管理员密码修改</asp:HyperLink></span></td>
		<tr>
			<td background="images/menu_bg1.gif" height="26"><p align="center">
                    &nbsp;</td>
		</tr>
		</table>

    </div>
    </form>
</body>
</html>
