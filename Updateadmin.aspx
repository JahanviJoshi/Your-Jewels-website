<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.Master" AutoEventWireup="true" CodeBehind="Updateadmin.aspx.cs" Inherits="user_Registration.bu1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="YOUR JEWELS"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#FF9900" Text="Edit Your Products"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    
        <table border="1" class="auto-style1">
            <tr>
                <td class="auto-style3">Bracelect Id</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Height="26px" Width="179px"></asp:TextBox>
&nbsp;
                    <asp:Button ID="Button2" runat="server" BackColor="#FF9933" Text="Search" OnClick="Button2_Click1" />
                    <br />
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Bracelet Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="208px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Bracelet Price</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="21px" Width="207px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Bracelet Image</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox6" runat="server" Height="17px" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Bracelet Description</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="208px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Bracelet Size</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="21px" Width="207px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#FF9933" Height="34px" OnClick="Button1_Click" Text="Update" Width="129px" />
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    <p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Mbraceletgold.aspx">View All Products</asp:HyperLink>
        <br />
    </p>
</asp:Content>
