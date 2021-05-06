<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="user_Registration.loginpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- <p style="text-align: center">-->


    <br />


    <table class="auto-style1" style="height: 553px; width: 94%">
        <tr>
            <td style="height: 174px; width: 201px"></td>
            <td style="height: 174px; width: 572px">
                <table border="1" class="auto-style1" style="border: medium solid #000000; width: 97%; height: 58px">
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
            </td>
            <td style="height: 174px"></td>
        </tr>
    </table>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
