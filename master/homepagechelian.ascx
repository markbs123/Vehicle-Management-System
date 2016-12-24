<%@ Control Language="C#" AutoEventWireup="true" CodeFile="homepagechelian.ascx.cs" Inherits="master_homepagechelian" %>
<style type="text/css">
    .style1
    {
        text-align: center;
    }
</style>
<table cellspacing="1" style="border-style: none; width: 1155px; color: #ffffff; border-collapse: collapse;
    height: 20px; ">
    <tr>
        <td style="height: 16px; background-color: menu; text-align: center; width: 80px;">
            <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Label"></asp:Label>
        </td>
        <td style="height: 16px; background-color: menu; text-align: center; width: 150px;">
            <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Label"></asp:Label>
        </td>
        <td style="height: 16px; background-color: menu; text-align: center; width: 80px;">
            <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Label"></asp:Label>
        </td>
        <td style="height: 16px; background-color: menu; text-align: center; width: 150px;">
            <asp:Label ID="Label4" runat="server" ForeColor="Black" Text="Label"></asp:Label>
        </td>
        <td style="height: 16px; background-color: menu; text-align: center; width: 80px;">
            <asp:Label ID="Label5" runat="server" ForeColor="Black" Text="Label"></asp:Label>
        </td>
         <td style="height: 16px; background-color: menu; text-align: center; width: 80px;">
            <asp:Label ID="Label6" runat="server" ForeColor="Black" Text="Label"></asp:Label>
        </td>
        <td style="height: 16px; background-color: menu; text-align: center; width: 80px;">
            <asp:Label ID="Label13" runat="server" ForeColor="Black" Text="Label"></asp:Label>
        </td>
        <td style="height: 16px; background-color: menu; text-align: center; width: 150px;">
            <asp:Label ID="Label7" runat="server" ForeColor="Black" Text="Label"></asp:Label>
        </td>
         <td style="height: 16px; background-color: menu; text-align: center; width: 80px;">
            <asp:Label ID="Label8" runat="server" ForeColor="Black" Text="Label"></asp:Label>
        </td>
        <td style="height: 16px; background-color: menu; text-align: center; width: 100px;">
            <asp:Label ID="Label9" runat="server" ForeColor="Black" Text="Label"></asp:Label>
        </td>
         <td style="height: 16px; background-color: menu; text-align: center; width: 70px;">
            <asp:Label ID="Label10" runat="server" ForeColor="Black" Text="Label"></asp:Label>
        </td>
        <td style="height: 16px; background-color: menu; text-align: center; width: 100px;">
            <asp:Label ID="Label11" runat="server" ForeColor="Black" Text="Label"></asp:Label>
            <asp:Label ID="Label12" runat="server" ForeColor="Black" Text="Label" 
                Visible="False"></asp:Label>
        </td>
           <td style="height: 16px; background-color: menu; width: 200px;" 
            class="style1">
               <asp:Button ID="Button2" runat="server" style="font-weight: 700" Text="修改" 
                   Width="55px" onclick="Button2_Click" />
        &nbsp;<asp:Button ID="Button1" runat="server" style="font-weight: 700" Text="删除" 
                   Width="55px" onclick="Button1_Click" 
                   onclientclick="return confirm('确认删除？')" />
        </td>
    </tr>
</table>
