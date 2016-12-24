<%@ Page Language="C#" AutoEventWireup="true" CodeFile="paichedan.aspx.cs" Inherits="user_paichedan" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="images/font.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style2
        {
            width: 125px;
        }
        .style3
        {
            width: 101px;
        }
        .style4
        {
            width: 116px;
        }
        .style5
        {
            width: 100%;
            height: 82px;
            text-align: center;
        }
        .style6
        {
            width: 100%;
            height: 82px;
            font-weight: bold;
        }
        .style7
        {
            height: 18px;
            width: 230px;
        }
        .style8
        {
            text-align: right;
            width: 412px;
        }
    </style>
</head>
<body  leftmargin="0" topmargin="0" rightmargin="0"  bottommargin="0" 
    style="text-align: center" >
    <form id="formxx" runat="server">
    <div>
        <div style="text-align: left">
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" Height="289px" Width="877px">
                <span style="font-size: 20px"><strong><span style="font-family: 黑体; text-decoration: underline">
                    </span></strong>
                    <table style="width: 100%">
                        <tr>
                            <td colspan="3" style="text-align: center">
                                <strong><span style="font-size: 15pt; font-family: 黑体; text-decoration: underline">
                                定西市公务用车管理系统派车单</span></strong></td>
                        </tr>
                    </table>
                </span>
                <table style="width: 100%">
                    <tr>
                        <td style="text-align: left" class="style7">
                            &nbsp; &nbsp; 派车日期:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                        <td style="width: 83px; height: 18px; text-align: right">
                            派车人:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                </table>
            <table style="background-color: #000000; padding-right: 0px; padding-left: 0px; padding-bottom: 0px; margin: 0px; padding-top: 0px;">
                <tr>
                    <td style="width: 100px; padding-right: 0px; padding-left: 0px; padding-bottom: 0px; margin: 0px; border-top-style: none; padding-top: 0px; border-right-style: none; border-left-style: none; border-bottom-style: none; height: 147px;">
                        <table cellspacing="1" style="width: 867px; height: 248px">
                            <tr>
                                <td style="width: 100px; background-color: white; text-align: center;">
                                    车牌号</td>
                                <td style="background-color: white; text-align: center;" class="style2">
                                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
                                <td style="background-color: white; text-align: center;" class="style4">
                                    驾驶员</td>
                                <td style="width: 100px; background-color: white; text-align: center;">
                                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
                                <td style="background-color: white; text-align: center;" class="style3">
                                    出车日期</td>
                                <td style="width: 100px; background-color: white; text-align: center;">
                                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
                                <td style="width: 100px; background-color: white; text-align: center;">
                                    出车天数</td>
                                <td style="width: 100px; background-color: white; text-align: center;">
                                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 100px; background-color: white; text-align: center;">
                                    派车部门</td>
                                <td style="background-color: white; text-align: center;" class="style2">
                                    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td>
                                <td style="background-color: white; text-align: center;" class="style4">
                                    目的地</td>
                                <td colspan="5" style="background-color: white">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label8" runat="server" Text="Label" 
                                        style="text-align: center"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 100px; background-color: white; text-align: center;">
                                    出车原因</td>
                                <td colspan="4" style="background-color: white">
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></td>
                                <td style="background-color: white; vertical-align: text-top; text-align: left;" 
                                    colspan="3" rowspan="2">
                                    &nbsp;<asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 100px; background-color: white; height: 48px; text-align: center;">
                                    随行人员</td>
                                <td style="background-color: white; height: 48px; vertical-align: text-top; text-align: left;" 
                                    colspan="4">
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </asp:Panel>
            &nbsp;</div>
    
    </div>
    <asp:Panel ID="Panel2" runat="server" Height="112px" Width="747px">
        <table class="style5">
            <tr>
                <td class="style8">
                    &nbsp;<asp:Button ID="Button1" runat="server" CssClass="style6" Height="25px" 
                        onclick="Button1_Click1" Text="打印" Width="126px" />
                    &nbsp;
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" CssClass="style6" Height="25px" 
                        onclick="Button2_Click" Text="取消" Width="126px" />
                    &nbsp;&nbsp;
                </td>
            </tr>
        </table>
    </asp:Panel>
    </form>
</body>
</html>
