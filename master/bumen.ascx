<%@ Control Language="C#" AutoEventWireup="true" CodeFile="bumen.ascx.cs" Inherits="master_bumen" %>
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
        text-align: center;
    }
    .style6
    {
        height: 17px;
    }
</style>
<table cellspacing="1" style="width: 460px">
    <tr>
        <td style="width: 150px; height: 16px;background-color: menu; text-align: center">
            &nbsp;<asp:Label ID="Label1" runat="server" Text="Label" 
                style="font-weight: 700"></asp:Label>
            <asp:Label ID="Label4" runat="server" Text="Label" 
                style="font-weight: 700"></asp:Label>
            </td>
              <td style="width: 100px; height: 16px;background-color: menu; text-align: center">
            &nbsp;<asp:Label ID="Label2" runat="server" Text="Label" 
                style="font-weight: 700"></asp:Label>
            </td>

        <td style="width: 200px; height: 16px;background-color: menu; text-align: center">
            <asp:Button ID="Button2" runat="server" style="font-weight: 700" Text="修改" 
                Width="55px" onclick="Button2_Click" CausesValidation="False" />
            &nbsp;<asp:Button 
                ID="Button1" runat="server" OnClick="Button1_Click" Text="删除" 
                Width="55px" onclientclick="return confirm('确认删除？')" 
                style="font-weight: 700" CausesValidation="False" />
            <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
    </tr>
</table>
<br />

<asp:Panel ID="Panel1" runat="server" Height="86px" Visible="False" 
    Width="459px">
    <table class="style1">
        <tr>
            <td class="style3">
                <span class="style2"><span style="text-decoration: underline"><strong>修改部门</strong></span></span></td>
        </tr>
        <tr>
            <td class="style5">
                <span style="font-size: 10pt; text-align: left;"><strong>部门:</strong><asp:DropDownList 
                    ID="DropDownList1" runat="server" Height="17px" Width="63px">
                </asp:DropDownList>
&nbsp;</span><asp:TextBox ID="TextBox1" runat="server" 
                        Width="57px"></asp:TextBox>
                &nbsp;<span style="font-size: 10pt"><strong>密码:</strong></span>&nbsp;<asp:TextBox 
                    ID="TextBox2" runat="server" Width="100px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvTxtmm2" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="名称不能空" 
                    style="color: #FF0000; font-size: small;"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="rfvTxtmm3" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="密码不能空" 
                    style="color: #FF0000; font-size: small;"></asp:RequiredFieldValidator>
                <br />
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="确定" 
        Width="52px" CssClass="style4" />
                &nbsp;<asp:Button ID="Button4" runat="server" CausesValidation="False" 
                    CssClass="style4" OnClick="Button4_Click" Text="取消" Width="52px" />
            </td>
        </tr>
    </table>
</asp:Panel>


