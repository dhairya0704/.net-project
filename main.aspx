<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 302px;
        }
        .auto-style2 {
            width: 90%;
            height: 138px;
        }
        </style>
</head>
<body style="height: 307px">
    <form id="form1" runat="server" class="auto-style1">
    <div style="margin-left: 80px">
        <table class="auto-style2">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Med-Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="192px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Price"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="193px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>
                </td>
                <td>
                    <textarea id="TextArea1" cols="20" name="S1" rows="2"></textarea></td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" Text="Button" />&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Button" />&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Button" />&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="Button" />
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="624px">
        </asp:GridView>
    </div>
    </form>
</body>
</html>
