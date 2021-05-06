<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Successfully1.aspx.cs" Inherits="user_Registration.Successfully1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label1" runat="server" ForeColor="#FF6600" Text="Generate Invoice as PDF "></asp:Label>
    </p>
    <p>
        Order ID:&nbsp;
        <asp:Label ID="Label2" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" BackColor="#FFCC99" Text="Download Invoice" OnClick="Button1_Click" />
    </p>
    <p>
    </p>
    <asp:Panel ID="Panel1" runat="server">
    
        &nbsp;<table border="1" class="auto-style1">
            <tr>
                <td class="auto-style12" style="text-align: center">Retail Invoice</td>
            </tr>
            <tr>
                <td class="auto-style13">Order No:
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                    <br />
                    <br />
                    Order Date:
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <table border="1" class="auto-style1" style="height: 112px">
                        <tr>
                            <td class="auto-style14">Buyer Address:<br />
                                <asp:Label ID="Label5" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style15">Sender Address:<br />
                                Your Jewels</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="140px" Width="936px" >
                        <Columns>
                            <asp:BoundField DataField="sno" HeaderText="Srno">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="productname" HeaderText="ProductName">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="quantity" HeaderText="Quantity">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dateoforder" HeaderText="Dateoforder">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="returndate" HeaderText="Returndate">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="price" HeaderText="ProductPrice">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Grand Total:<asp:Label ID="Label7" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Declaration: We declare that this invoice shows actual Price of the goods described inclusive of taxes and that all particulars are true and correct.<br />
                    Incase you find the selling price on this invoice more than MRP mention on product.Please inform to<br />
                    <br />
                    THIS IS COMPUTER GENERATED AND DOES NOT REQUIRED SIGNATURE!</td>
            </tr>
        </table>
        &nbsp;</asp:Panel>
        <br />
    
    <p>
    </p>
    <p>
    </p>

</asp:Content>
