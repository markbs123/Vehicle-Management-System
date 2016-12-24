<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="keshi_main" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>定西市公务用车管理系统  [监管平台]</title>
    <link href="images/font.css" rel="stylesheet" type="text/css" />
</head>
<frameset rows="64,*"  frameborder="NO" border="0" framespacing="0">
	<frame src="top.aspx" noresize="noresize" frameborder="NO" name="topFrame" scrolling="no" marginwidth="0" marginheight="0" target="main" />
  <frameset  rows="560,*" id="frame">
	<frameset cols="200,*" id="Frameset1">
	<frame src="meun.aspx" name="leftFrame" noresize="noresize" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" target="main" />
	<frame src="homepage.aspx" name="mainFrame" marginwidth="0" marginheight="0" frameborder="0" scrolling="auto" target="_self" />
  </frameset>
<noframes>
  <body></body>
    </noframes>
	<noframes>
	<body>
	<p>.</p>
	</body>
	</noframes>
</frameset>
</html>
