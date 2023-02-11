<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Example_22_5.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style4
        {
            width: 6px;
        }
        .style7
        {
            width: 14px;
        }
        .style9
        {
            width: 12px;
        }
        .style10
        {
            width: 85px;
        }
        .style11
        {
            width: 24px;
        }
    </style>
</head>
<body bgcolor="#b5beb1">
    <form id="form1" runat="server">
    <div>
    
    &nbsp;
        <table class="style1">
            <tr>
                <td class="style7">
                    <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                </td>
                <td class="style11">
                    <asp:TextBox ID="txtName" runat="server" Width="161px"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:Label ID="Label2" runat="server" Text="Size:"></asp:Label>
                </td>
                <td class="style9">
                    <asp:TextBox ID="txtSize" runat="server" Font-Size="12pt"></asp:TextBox>
                </td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    <asp:Label ID="Label3" runat="server" Text="Model:"></asp:Label>
                </td>
                <td class="style11">
                    <asp:DropDownList ID="txtModel" runat="server" Font-Size="12pt" Height="25px" 
                        Width="131px">
                        <asp:ListItem>مرد</asp:ListItem>
                        <asp:ListItem>زن</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style4">
                    <asp:Label ID="Label4" runat="server" Text="Tedad:"></asp:Label>
                </td>
                <td class="style9">
                    <asp:TextBox ID="txtTedad" runat="server" Font-Size="12pt"></asp:TextBox>
                </td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    <asp:Label ID="Label5" runat="server" Text="Pool:"></asp:Label>
                </td>
                <td class="style11">
                    <asp:TextBox ID="txtPool" runat="server" Font-Size="12pt" Width="157px"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:Label ID="Label6" runat="server" Text="Country:"></asp:Label>
                </td>
                <td class="style9">
                    <asp:TextBox ID="txtCountry" runat="server" Font-Size="12pt"></asp:TextBox>
                </td>
                <td class="style10">
                    <asp:Button ID="btnInsert" runat="server" onclick="btnInsert_Click" 
                        Text="Insert" Width="163px" />
                </td>
            </tr>
        </table>
        <br />
        <asp:GridView ID="GridView1" runat="server" Width="1116px">
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
