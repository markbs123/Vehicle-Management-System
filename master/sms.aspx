<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sms.aspx.cs" Inherits="master_sms" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 107px">
        <asp:Label ID="Label1" runat="server" Text="派车提醒:" 
            style="font-style: italic; font-weight: 700; font-size: x-large"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;<asp:Label ID="lblusername" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="于"></asp:Label>
        <asp:Label ID="lbltime" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="驾驶"></asp:Label>
        <asp:Label ID="lblcarid" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label4" runat="server" Text="去"></asp:Label>
        <asp:Label ID="lblmdd" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label5" runat="server" Text="。用车科室:"></asp:Label>
        <asp:Label ID="lblycks" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="lblday" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label7" runat="server" Text="天。"></asp:Label>
        <asp:Label ID="lblsj" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:Label ID="lblurl" runat="server" Text="Label" Visible="False"></asp:Label>
        </strong>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="发送" 
            CssClass="style1" Width="75px" />&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" CssClass="style1" Height="21px" 
            Text="取消" Width="75px" />
    </div>
    </form>
</body>
</html>
