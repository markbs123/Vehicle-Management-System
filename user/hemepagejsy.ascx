<%@ Control Language="C#" AutoEventWireup="true" CodeFile="hemepagejsy.ascx.cs" Inherits="user_hemepagejsy" %>
<style type="text/css">
    .style1
    {
        font-weight: bold;
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
            <td style="width: 60px; height: 16px; background-color: menu; text-align: center">
            <asp:Label ID="Label9" runat="server" ForeColor="#000000" Text="Label"></asp:Label></td>
                     <td style="width: 150px; height: 16px; background-color: menu; text-align: center">
                         <asp:Button ID="Button1" runat="server" CssClass="style1" 
                             onclick="Button1_Click" Text="修改" Width="43px" />
                         <asp:Button ID="Button2" runat="server" CssClass="style1" 
                             onclick="Button2_Click" Text="删除" Width="43px" />
                   </td>
    </tr>
</table>
