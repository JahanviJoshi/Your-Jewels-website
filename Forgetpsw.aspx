<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Forgetpsw.aspx.cs" Inherits="user_Registration.Forgetpswd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 312px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label1" runat="server" ForeColor="#FF3300" Text="Send Forget Password To EmailAddress"></asp:Label>
        <br />
    </p>
    <table border="1" class="auto-style1" style="height: 156px; width: 52%; background-color: #FFFFCC;">
        <tr>
            <td class="auto-style12">UserName</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="45px" Width="240px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Enter UserName" ForeColor="#FF3300"></asp:RequiredFieldValidator>
&nbsp;
                <br />
&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">EmailId</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="45px" Width="240px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Enter Your Valid Id" ForeColor="#FF3300"></asp:RequiredFieldValidator>
&nbsp;
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Valid EmailId" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#FFCC00" Height="40px" OnClick="Button1_Click" Text="Send Forget Password" Width="180px" />
            </td>
        </tr>
    </table>
    <p>
        <asp:Label ID="Label2" runat="server" ForeColor="#FF3300"></asp:Label>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
