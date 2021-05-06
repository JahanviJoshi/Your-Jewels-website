<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.Master" AutoEventWireup="true" CodeBehind="Addadmin.aspx.cs" Inherits="user_Registration.bu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 70%;
            height: 218px;
            background-color: #FFFFCC;
        }
        .auto-style3 {
            width: 159px;
        }
        .auto-style4 {
            width: 159px;
            height: 28px;
        }
        .auto-style5 {
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="YOUR JEWELS"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#FF9900" Text="Add Your Products"></asp:Label>
    </p>
    
        <table border="1" class="auto-style1">
            <tr>
                <td class="auto-style3">Bracelect Id</td>
                <td>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Bracelet Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="287px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Bracelet Price</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="287px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Bracelet Image</td>
                <td class="auto-style5">
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="40px" Width="194px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Bracelet Description</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="287px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Bracelet Size</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="26px" Width="287px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#FF9933" Height="34px" OnClick="Button1_Click" Text="Add" Width="129px" />
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
