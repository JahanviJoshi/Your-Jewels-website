<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wishlist.aspx.cs" Inherits="user_Registration.wishlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="YOUR JEWEL'S"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Products in WishList"></asp:Label>
&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/home.aspx">Continue Shopping</asp:HyperLink>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Productid" HeaderText="ProductId" />
                <asp:BoundField DataField="Productname" HeaderText="ProductName" />
                <asp:BoundField DataField="Productdescription" HeaderText="ProductDescription" />
                <asp:ImageField DataImageUrlField="Productimage" HeaderText="ProductImage">
                </asp:ImageField>
                <asp:BoundField DataField="Productsize" HeaderText="ProductsSize" />
                <asp:BoundField DataField="Productprice" HeaderText="ProductPrice" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <br />
        <br />
    
    </div>
    </form>
    <p>
&nbsp;&nbsp;
    </p>
</body>
</html>
