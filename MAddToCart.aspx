<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="MAddToCart.aspx.cs" Inherits="user_Registration.MAddToCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
    
        <asp:Label ID="Label1" runat="server" Text="YOUR JEWEL'S"></asp:Label>
         <br />
        <br />
        You have&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>&nbsp;Product in shopping cart&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/home.aspx">Continue Shopping</asp:HyperLink>
        &nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">LinkButton</asp:LinkButton>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="400px"  Width="766px" ShowFooter="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="Productid" HeaderText="ProductId" />
                <asp:BoundField DataField="Srno" HeaderText="Srno">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Productname" HeaderText="ProductName">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Productdescription" HeaderText="ProductDescription">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Productsize" HeaderText="ProductSize">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="Productimage" HeaderText="ProductImage">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:ImageField>
                <asp:BoundField DataField="quantity" HeaderText="Qauntity" />
                <asp:BoundField DataField="Productprice" HeaderText="ProductPrice">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                 <asp:CommandField SelectText="Modify" ShowSelectButton="True" />
                 <asp:CommandField DeleteText="Remove" ShowDeleteButton="True">
                <ItemStyle HorizontalAlign="Center" />
                     </asp:CommandField>
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
        
               
    </div>

        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="CheckBox" OnClick="Button1_Click" />
        </p>

</asp:Content>
