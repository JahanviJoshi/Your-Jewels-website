<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLog.aspx.cs" Inherits="user_Registration.AdminLog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
            height: 653px;
        }
        .auto-style4 {
            height: 77px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Admin Login"></asp:Label>
        <br />
        <br />
                <table border="1" class="auto-style1" style="border: medium solid #000000; width: 51%; height: 189px">
                    <tr>
                        <td style="width: 215px; font-weight: bolder; font-size: large; color: #000000;">User Name</td>
                        <td style="height: 23px; width: 221px;">
                            <asp:TextBox ID="TextBox2" runat="server" Height="35px" Width="188px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 215px; font-size: large; font-weight: bolder; color: #000000;" aria-hidden="False">Password</td>
                        <td style="width: 221px">
                            <asp:TextBox ID="TextBox3" runat="server"  TextMode="Password" Width="189px"  Height="35px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 215px; height: 81px"></td>
                        <td class="auto-style4" style="height: 81px; width: 221px;">
                            <br />
                            <asp:Button ID="Button1" runat="server" Height="46px" OnClick="Button1_Click" Text="Login" Width="120px" />
                            <br />
                            <asp:Label ID="Label3" runat="server"></asp:Label>
                        &nbsp;<asp:HyperLink ID="HyperLink3" runat="server" ForeColor="Red" NavigateUrl="Forgetpsw.aspx">Forget Password Click Here</asp:HyperLink>
                        </td>
                    </tr>
                </table>
    
    </div>
    </form>
</body>
</html>
