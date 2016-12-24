<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bumenzj.aspx.cs" Inherits="master_bumenzj" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .style1
        {
            width: 100%;
            height: 120px;
        }
        .style3
    {
        height: 20px;
        text-align: left;
    }
        .style2
    {
        font-size: small;
    }
    .style5
    {
        text-align: left;
            height: 55px;
        }
    .style9
    {
        text-align: left;
        font-size: small;
    }
    .style4
    {
        font-weight: bold;
    }
    .style11
    {
        height: 17px;
        width: 186px;
    }
    .style6
    {
        height: 17px;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <table class="style1">
        <tr>
            <td class="style3" colspan="2">
                <span class="style2">
                <span style="text-decoration: underline">
                <strong>增加单位</strong></span></span></td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                <span style="font-size: 10pt"><strong>单位地区:</strong> </span>
                <span class="style2">&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" 
                    Height="28px" Width="70px">
                </asp:DropDownList>
&nbsp;<strong>单位名称：</strong><asp:TextBox ID="TextBox1" runat="server" 
                        Width="97px"></asp:TextBox>
                </span><span class="style9"> &nbsp;<strong>密码</strong></span><span 
                    style="font-size: 10pt">:<asp:TextBox 
                    ID="TextBox2" runat="server" Width="100px"></asp:TextBox>
                </span>&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button3" runat="server" 
                    OnClick="Button3_Click" Text="确定" 
        Width="52px" CssClass="style4" />
                &nbsp;<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="取消" 
        Width="52px" CausesValidation="False" CssClass="style4" />
            </td>
        </tr>
        <tr>
            <td class="style11" style="text-align: left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="rfvTxtmm4" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="用户名不能空" 
                    style="color: #FF0000; font-size: small;"></asp:RequiredFieldValidator>
            </td>
            <td class="style6" style="text-align: left">
                <asp:RequiredFieldValidator ID="rfvTxtmm3" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="密码不能空" 
                    style="color: #FF0000; font-size: small; text-align: center;"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    
    </div>
    </form>
</body>
</html>
