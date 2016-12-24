<%@ Control Language="C#" AutoEventWireup="true" CodeFile="yonghu.ascx.cs" Inherits="master_yonghu" %>
<style type="text/css">

        .style1
        {
            width: 100%;
            height: 48px;
        }
        .style2
    {
        font-size: small;
    }
    .style3
    {
        height: 20px;
        text-align: left;
    }
    .style4
    {
        font-weight: bold;
    }
    .style5
    {
        text-align: left;
    }
    .style6
    {
        height: 17px;
    }
    .style7
    {
        height: 16px;
        width: 100px;
    }
    .style9
    {
        text-align: left;
        font-size: small;
    }
    .style11
    {
        height: 17px;
        width: 139px;
    }
</style>
<table cellspacing="1" style="width: 450px">
    <tr>
        <td style="width: 100px; height: 16px;background-color: menu; text-align: center" class="style7">
            &nbsp;<strong><asp:Label ID="Label1" runat="server" Text="Label" 
                CssClass="style2"></asp:Label>
            </strong><span class="style2"><strong>纪检委</strong></span></td>
            <td style="width: 120px; height: 16px;background-color: menu; text-align: center" class="style7">
            &nbsp;<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>

        <td style="width: 200px; height: 16px;background-color: menu; text-align: center">
            <asp:Button ID="Button2" runat="server" style="font-weight: 700" Text="修改" 
                Width="55px" onclick="Button2_Click" CausesValidation="False" />
            &nbsp;&nbsp; <asp:Button 
                ID="Button1" runat="server" OnClick="Button1_Click" Text="删除" 
                Width="55px" onclientclick="return confirm('确认删除？')" 
                style="font-weight: 700" CausesValidation="False" />
            </td>
    </tr>
</table>
<br />

<asp:Panel ID="Panel1" runat="server" Height="68px" Visible="False" 
    Width="450px">
    <table class="style1">
        <tr>
            <td class="style3" colspan="2">
                <span class="style2"><span style="text-decoration: underline"><strong>修改用户</strong></span></span></td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                <span style="font-size: 10pt">用户名: </span>
                <asp:TextBox ID="TextBox1" runat="server" 
                        Width="45px"></asp:TextBox>
                <span class="style2">纪检委</span><span class="style9"> 密码</span><span style="font-size: 10pt">:<asp:TextBox 
                    ID="TextBox2" runat="server" Width="100px"></asp:TextBox>
                </span>&nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="确定" 
        Width="52px" CssClass="style4" />
                &nbsp;<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="取消" 
        Width="52px" CausesValidation="False" CssClass="style4" />
            </td>
        </tr>
        <tr>
            <td class="style11" style="text-align: left">
                &nbsp;<asp:RequiredFieldValidator ID="rfvTxtmm4" runat="server" 
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
</asp:Panel>

