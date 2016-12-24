<%@ Page Language="C#" AutoEventWireup="true" CodeFile="meun.aspx.cs" Inherits="user_meun" %>

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
        height: 31px;
        font-family: 华文楷体;
        font-size: large;
    }
    .style3
    {
        font-size: medium;
        font-family: 楷体;
    }

    .style4
    {
        font-size: large;
        font-family: 华文楷体;
    }

    </style>
</head>
<body >
    <form id="form1" runat="server">
    <div>
        <table border="0" width="182" cellspacing="0" cellpadding="0">
		<tr>
			<td background="images/menu_bgs.gif" height="30">
    <table border="0" cellspacing="0" cellpadding="0" style="width: 177px">
		<tr>
			<td background="../people/images/menu_bgs.gif" class="style2" 
                style="text-align: center">
			    <strong>车辆管理</strong></td>
		</tr>
		<tr>
			<td height="1">
			<img border="0" src="images/menu_topline.gif" width="182" height="5"></td>
		</tr>
		<tr>
			<td background="images/menu_bg1.gif" height="30">
			<p align="center" style="height: 16px"><span style="font-size: 9pt">
                    <span style="font-size: 9pt"style="height: 16px">
                    <asp:HyperLink ID="HyperLink5" runat="server" ForeColor="Black" 
                    Target="mainFrame" NavigateUrl="~/user/clsearch.aspx" Font-Underline="False" 
                    CssClass="style3">全体车辆信息</asp:HyperLink></span></span></td>
		</tr>
		<tr>
			<td background="images/menu_bg1.gif" height="30">
			<p align="center"><span style="font-size: 9pt"style="height: 16px">
                    <asp:HyperLink ID="HyperLink18" runat="server" ForeColor="Black" 
                    Target="mainFrame" NavigateUrl="~/user/homepage.aspx" Font-Underline="False" 
                    CssClass="style3">外出车辆信息</asp:HyperLink></span></td>
		</tr>
		<tr>
		<td background="images/menu_bg1.gif" height="30">
			<p align="center"><span style="font-size: 9pt">
                    <asp:HyperLink ID="HyperLink17" runat="server" ForeColor="Black" 
                    Target="mainFrame" NavigateUrl="~/user/paiche.aspx" Font-Underline="False" 
                    CssClass="style3">车辆外出</asp:HyperLink></span></td>
		</tr>
		</table>
	        </td>
		</tr>
		<tr>
			<td background="images/menu_bg1.gif" height="30">
			<p align="center"><span style="font-size: 9pt">
                    <span style="font-size: 9pt"style="height: 16px">
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Black" 
                    Target="mainFrame" NavigateUrl="~/user/paicheinfo.aspx" Font-Underline="False" 
                    CssClass="style3">出车记录查询</asp:HyperLink></span></span></td>
		</tr>
		</table>
	<table border="0" width="182" cellspacing="0" cellpadding="0">
		<tr>
			<td background="images/menu_bgs.gif" height="30" style="text-align: center" 
                class="style4">
			    <strong>人员管理</strong></td>
		</tr>
		<tr>
			<td height="1">
			<img border="0" src="images/menu_topline.gif" width="182" height="5"></td>
		</tr>
		<tr>
			<td background="images/menu_bg1.gif" height="30">
			<p align="center"><span style="font-size: 9pt">
                    <asp:HyperLink ID="HyperLink15" runat="server" ForeColor="Black" 
                    NavigateUrl="~/user/rysearch.aspx" Target="mainFrame" Font-Underline="False" 
                    CssClass="style3">驾驶人员信息</asp:HyperLink></span></td>
		</tr>
		</table>
	<table border="0" width="182" cellspacing="0" cellpadding="0">
		<tr>
			<td background="images/menu_bg1.gif" height="26">
			</td>
		</tr>
	</table>
    
    </div>
    </form>
</body>
</html>
