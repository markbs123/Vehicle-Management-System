<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yonghu.aspx.cs" Inherits="master_yonghu" %>

<%@ Register Src="yonghu.ascx" TagName="yonghu" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="images/font.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #formxx
        {
            height: 167px;
        }
        .left_topbg {
	background-image: url('images/content-bg.gif');
	background-repeat: repeat-x;
            height: 22px;
        }
.titlebt {
	font-size: 12px;
	line-height: 26px;
	font-weight: bold;
	color: #000000;
	background-image: url('images/top_bt.jpg');
	background-repeat: no-repeat;
	display: block;
	text-indent: 15px;
	padding-top: 5px;
}

        .style1
        {
            width: 100%;
            height: 68px;
        }
        
        </style>
</head>
<body background="images/bg_top_goa.gif"  >
    <form id="formxx" runat="server">
    <div style="height: 26px">
        <table width="100%" border="0" 
            cellpadding="0" cellspacing="0" class="left_topbg" id="table1">
      <tr>
        <td height="31"><div class="titlebt">
            用户信息</div></td>
      </tr>
    </table>
        <br />
    </div>
        <asp:DataList ID="DataList1" runat="server" BackColor="White" style="text-align: right"
            BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
            CellSpacing="1" Width="460px">
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <HeaderTemplate>
                <table cellspacing="1" style="width: 450px"color: #ffffff; border-top-style: none;
                        border-right-style: none; border-left-style: none; border-collapse: collapse;
                        border-bottom-style: none">
                    <tr>
                        <td style="width: 100px; height: 16px; background-color: background; text-align: center">
                           用户名</td>
                        <td style="width: 120px; height: 16px; background-color: background; text-align: center">
                           密码</td>
                        <td style="width: 200px; height: 16px; background-color: background; text-align: center">
                           操作</td>
                    </tr>
                </table>
            </HeaderTemplate>
            <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
            <ItemTemplate>
                <uc1:yonghu ID="yonghu1" runat="server" yonghuid='<%#DataBinder.Eval(Container.DataItem,"id")%>'/>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <br />
        <table class="style1">
            <tr>
                <td>
        <span style="font-size: 10pt"><span style="text-decoration: underline"><strong>添加新用户</strong></span></span></td>
            </tr>
            <tr>
                <td>
                    <span style="font-size: 10pt">用户名: </span>
                    <asp:TextBox ID="TextBox3" 
                        runat="server" Width="45px"></asp:TextBox>纪检委 &nbsp;密码：<asp:TextBox ID="TextBox4" 
                        runat="server" Width="100px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" 
        Width="52px" CssClass="style2" />
    &nbsp;&nbsp;&nbsp; 
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="取消" 
        Width="52px" CausesValidation="False" CssClass="style2" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            </table>
        <br />
    <br />
    <br />
    <br />
    </form>
</body>
</html>

