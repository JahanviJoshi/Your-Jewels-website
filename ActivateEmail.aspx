<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ActivateEmail.aspx.cs" Inherits="user_Registration.ActivateEmail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 77%;
            height: 143px;
        }
        .auto-style2 {
            width: 188px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="YOUR JEWEL'S"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Activate Your Email"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Your Activataion Code</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Verify Email" />
                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="Label4" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
