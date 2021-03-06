<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="PlaceOrder.aspx.cs" Inherits="user_Registration.PlaceOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 215px;
        }
        .auto-style11 {
            width: 207px;
        }
        .auto-style13 {
            width: 1723px;
            height: 114px;
        }
        .auto-style14 {
            width: 556px;
            height: 114px;
        }
        .auto-style15 {
            width: 556px;
        }
        .auto-style16 {
            width: 129px;
        }
        .auto-style17 {
            width: 1723px;
            height: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        <asp:Label ID="Label1" runat="server" ForeColor="#FF9900" Text="Checkout in ShoppingCart"></asp:Label>
    </p>
    
        <table class="auto-style1" style="height: 68px; width: 61%">
            <tr>
                <td class="auto-style16">Order ID</td>
                <td>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">Order Date</td>
                <td>
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
    
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" ShowFooter="True" Width="553px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="srno" HeaderText="Srno" />
                <asp:BoundField DataField="Productid" HeaderText="ProductId" />
                <asp:BoundField DataField="Productname" HeaderText="ProductName" />
                <asp:ImageField DataImageUrlField="Productimage" HeaderText="ProductImage">
                </asp:ImageField>
                <asp:BoundField DataField="Productsize" HeaderText="ProductSize" />
                <asp:BoundField DataField="Productprice" HeaderText="ProductPrice" />
                <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="totalprice" HeaderText="TotalPrice" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" Height="40px" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
    </p>
    <p>
    </p>
    <table class="auto-style1" style="height: 190px; width: 77%; background-color: #CCFFFF">
        <tr>
            <td class="auto-style14">Enter Your Address</td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox1" runat="server" Height="116px" style="margin-left: 1px" TextMode="MultiLine" Width="341px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Enter Your Correct Address" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Enter Your Vaild Address" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">Mobile No</td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox2" runat="server" Height="37px" Width="339px"></asp:TextBox>
                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TextBox2" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>--%>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Enter 10 Digit No" Font-Bold="True" ForeColor="Red" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Enter Your 10 Digit  No" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="PlaceOrder" />
    <p>
    </p>


</asp:Content>
