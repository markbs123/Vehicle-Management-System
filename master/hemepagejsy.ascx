<%@ Control Language="C#" AutoEventWireup="true" CodeFile="hemepagejsy.ascx.cs" Inherits="master_hemepagejsy" %>
<style type="text/css">
    .style1
    {
        text-align: center;
    }
</style>
<table cellspacing="1" style="width: 1135px; color: #ffffff; border-collapse: collapse;height: 20px; ">
    <tr>
                   <td style="width: 150px; height: 16px; background-color: menu; text-align: center">
            <asp:Label ID="Label1" runat="server" ForeColor="#000000" Text="Label"></asp:Label></td>
                   <td style="width: 50px; height: 16px; background-color: menu; text-align: center">
            <asp:Label ID="Label2" runat="server" ForeColor="#000000" Text="Label"></asp:Label></td>
                   <td style="width: 200px; height: 16px; background-color: menu; text-align: center">
            <asp:Label ID="Label3" runat="server" ForeColor="#000000" Text="Label"></asp:Label></td>
                   <td style="width: 200px; height: 16px; background-color: menu; text-align: center">
            <asp:Label ID="Label4" runat="server" ForeColor="#000000" Text="Label"></asp:Label></td>
                   <td style="width: 150px; height: 16px; background-color: menu; text-align: center">
            <asp:Label ID="Label5" runat="server" ForeColor="#000000" Text="Label"></asp:Label></td>
                   <td style="width: 100px; height: 16px; background-color: menu; text-align: center">
            <asp:Label ID="Label10" runat="server" ForeColor="#000000" Text="Label"></asp:Label></td>
                   <td style="width: 100px; height: 16px; background-color: menu; text-align: center">
            <asp:Label ID="Label6" runat="server" ForeColor="#000000" Text="Label"></asp:Label></td>
                   <td style="width: 150px; height: 16px; background-color: menu; text-align: center">
            <asp:Label ID="Label7" runat="server" ForeColor="#000000" Text="Label"></asp:Label>
                       <asp:Label ID="Label11" runat="server" ForeColor="Black" Text="Label" 
                           Visible="False"></asp:Label>
                   </td>
                   <td style="width: 150px; height: 16px; background-color: menu; text-align: center">
            <asp:Label ID="Label8" runat="server" ForeColor="#000000" Text="Label"></asp:Label></td>
            <td style="width: 80px; height: 16px; background-color: menu; text-align: center">
            <asp:Label ID="Label9" runat="server" ForeColor="#000000" Text="Label"></asp:Label></td>
            <td style="width: 150px; height: 16px; background-color: menu; " class="style1">
                <asp:Button ID="Button2" runat="server" Text="修改" Width="45px" 
                    onclick="Button2_Click" style="font-weight: 700" /> 
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    style="font-weight: 700" Text="删除" Width="45px" 
                    onclientclick="return confirm('确认删除？')" />
                   </td>
    </tr>
</table>
