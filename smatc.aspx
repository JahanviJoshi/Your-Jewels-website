<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="smatc.aspx.cs" Inherits="user_Registration.smatc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     You have Product in&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>s hopping cart&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/home.aspx">Continue Shopping</asp:HyperLink>
        &nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"></asp:LinkButton>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="400px"  Width="766px" ShowFooter="True" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="Productid" HeaderText="ProductId" />
                <asp:BoundField DataField="Srno" HeaderText="Srno">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Jewelery" HeaderText="Jewelery">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Style" HeaderText="Style">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Shape" HeaderText="Shape">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Metal" HeaderText="Metal" />
                <asp:BoundField DataField="Stone" HeaderText="Stone" />
                <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:ImageField>
                <asp:BoundField DataField="quantity" HeaderText="Qauntity" />
                <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
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


    <p>
            &nbsp;</p>
</asp:Content>
