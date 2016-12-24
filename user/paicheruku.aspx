<%@ Page Language="C#" AutoEventWireup="true" CodeFile="paicheruku.aspx.cs" Inherits="user_paicheruku" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="images/font.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            height: 44px;
            font-size: small;
            font-weight: bold;
            color: #000000;
            text-align: center;
        }
        .style2
        {
            font-size: small;
            font-weight: bold;
            color: #000000;
        }
        .style3
        {
            color: #000000;
        }
a:link {
	font-size: 12px;
	line-height: 25px;
	color: #333333;
	text-decoration: none;
}
        .style5
        {
            width: 400px;
            height: 18px;
        }
        .style6
        {
            height: 18px;
            font-size: small;
            font-weight: bold;
            color: #000000;
        }
        .style7
        {
            font-size: x-large;
            font-weight: normal;
        }
        .style8
        {
            font-size: small;
            font-weight: bold;
            color: #000000;
            height: 17px;
        }
        .style9
        {
            width: 400px;
            height: 17px;
        }
        .style10
        {
            color: #FF0000;
        }
    </style>
</head>
<body background="images/bg_top_goa.gif"　 style="text-align: left" >
    <form id="formxx" runat="server">
    <div>
 
            <table style="width: 513px">
                <tr>
                    <td align="center" bgcolor="#CCCCFF" colspan="2" 
                        class="style1">
                        <span class="style3"><span class="style7"><strong>车辆入库</strong></span></span></td>
                </tr>
                <tr>
                    <td align="center" bgcolor="#CCCCFF" class="style8">
                        <span class="style3">车牌号码</span></td>
                    <td bgcolor="menu" class="style9">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td align="center" bgcolor="#CCCCFF" class="style2">
                        驾 驶 员</td>
                    <td bgcolor="menu" style="width: 400px; height: 17px">
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td align="center" bgcolor="#CCCCFF" class="style2">
                        出车时间</td>
                    <td bgcolor="menu" style="width: 400px">
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td align="center" bgcolor="#CCCCFF" class="style2">
                        入库时间</td>
                    <td bgcolor="menu" style="width: 400px">
                        选择时间<asp:ImageButton ID="ImageButton1" runat="server" BackColor="Menu" BorderColor="Menu"
                            ImageUrl="~/master/images/date.jpg" OnClick="ImageButton1_Click" Style="border-top-style: none;
                            border-right-style: none; border-left-style: none; border-bottom-style: none" />
                        <asp:Label ID="Label13" runat="server" style="font-weight: 700"></asp:Label>
                        <span class="style10">&nbsp;(日期不能为空)</span><br />
                        <asp:Calendar ID="Calendar1" runat="server" Height="190px" Visible="False" 
                            Width="350px" OnSelectionChanged="Calendar1_SelectionChanged" 
                            BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" 
                            Font-Size="9pt" ForeColor="Black" NextPrevFormat="FullMonth">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                                VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                                Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                            <TodayDayStyle BackColor="#CCCCCC" />
                        </asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td align="center" bgcolor="#CCCCFF" class="style2">
                        出车天数</td>
                    <td bgcolor="menu" style="width: 400px">
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>天</td>
                </tr>
                <tr>
                    <td align="center" bgcolor="#CCCCFF" class="style6">
                        实际天数</td>
                    <td bgcolor="menu" class="style5">
                        <asp:TextBox ID="TextBox2" runat="server" Width="32px"></asp:TextBox>天&nbsp; </td>
                </tr>
                <tr>
                    <td align="center" bgcolor="#CCCCFF" class="style6">
                        出车范围</td>
                    <td bgcolor="menu" class="style5">
                        <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label> </td>
                </tr>
                <tr>
                    <td align="center" bgcolor="#CCCCFF" class="style2">
                        目 的 地</td>
                    <td bgcolor="menu" class="style9">
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td align="center" bgcolor="#CCCCFF" class="style2">
                        出车原因</td>
                    <td bgcolor="menu" style="width: 400px">
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td align="center" bgcolor="#CCCCFF" class="style2">
                        用车部门</td>
                    <td bgcolor="menu" style="width: 400px">
                        <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td align="center" bgcolor="#CCCCFF" class="style2">
                        随行人员</td>
                    <td bgcolor="menu" style="width: 400px">
                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td align="center" bgcolor="#CCCCFF" class="style2">
                        备注信息</td>
                    <td bgcolor="menu" style="width: 400px">
                        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td align="center" bgcolor="#CCCCFF" class="style8">
                        审批人</td>
                    <td bgcolor="menu" class="style9">
                        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td align="center" bgcolor="#CCCCFF" class="style2">
                        审批日期</td>
                    <td bgcolor="menu" style="width: 400px">
                        <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td align="center" bgcolor="White" style="color: #ffffff">
                    </td>
                    <td bgcolor="menu" style="width: 400px">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="确定入库" OnClick="Button1_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="取消入库" />
                    </td>
                </tr>

    
    </div>
    </form>
</body>
</html>
