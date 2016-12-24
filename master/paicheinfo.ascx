<%@ Control Language="C#" AutoEventWireup="true" CodeFile="paicheinfo.ascx.cs" Inherits="master_paicheinfo" %>
<table style="width: 1135px; color: #ffffff; border-top-style: none; border-left-style: none; border-bottom-style: none; padding-right: 0px; padding-left: 0px; padding-bottom: 0px; margin: 0px; padding-top: 0px;" cellspacing="1">
                    <tr>
                        <td style="width: 175px; height: 16px; background-color: menu; text-align: center;">
                            <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Label"></asp:Label></td>
                        <td style="width: 100px; height: 16px; background-color: menu; text-align: center;">
                            <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Label"></asp:Label></td>
                        <td style="width: 190px; height: 16px; background-color: menu; text-align: center;">
                            <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Label"></asp:Label></td>
                        <td style="width: 100px; height: 16px; background-color: menu; text-align: center;">
                            <asp:Label ID="Label4" runat="server" ForeColor="Black" Text="Label"></asp:Label></td>
                        <td style="width: 100px; height: 16px; background-color: menu; text-align: center;">
                            <asp:Label ID="Label10" runat="server" ForeColor="Black" Text="Label"></asp:Label></td>
                        <td style="width: 70px; height: 16px; background-color: menu; text-align: center;">
                            <asp:Label ID="Label11" runat="server" ForeColor="Black" Text="Label"></asp:Label></td>
                        <td style="width: 100px; height: 16px; background-color: menu; text-align: center;">
                            <asp:Label ID="Label5" runat="server" ForeColor="Black" Text="Label"></asp:Label></td>
                        <td style="width: 150px; height: 16px; background-color: menu; text-align: center;">
                            <asp:Label ID="Label9" runat="server" ForeColor="Black" Text="Label"></asp:Label>
                            <br />
                            <asp:Label ID="Label6" runat="server" ForeColor="Black" Text="Label"></asp:Label></td>
                        <td style="width: 100px; height: 16px; background-color: menu; text-align: center;">
                            <asp:Label ID="Label7" runat="server" ForeColor="Black" Text="Label"></asp:Label>
                            <asp:Label ID="Label8" runat="server" Text="Label" Visible="False"></asp:Label></td>
                        <td style="width: 60px; height: 16px; background-color: menu; text-align: center;">
                            <asp:Button ID="Button1" runat="server" Text="入 库" Width="55px" 
                                OnClick="Button1_Click" style="font-size: 12px; font-weight: 700;" 
                                Height="19px" onclientclick="return confirm('确认入库？')" /></td>
                        <td style="width: 60px; height: 16px; background-color: menu; text-align: center;">
                            <asp:Button ID="Button2" runat="server" Text="详 情" Width="55px" 
                                OnClick="Button2_Click" style="font-size: 12px; font-weight: 700;" 
                                Height="19px" />
                        </td>
                        <td style="width: 60px; height: 16px; background-color: menu; text-align: center;">
                            <asp:Button ID="Button3" runat="server" Text="删 除" Width="55px" 
                                OnClick="Button3_Click" style="font-size: 12px; font-weight: 700;" 
                                Height="19px" onclientclick="return confirm('确认删除？')" />
                        </td>
                    </tr>
                </table>