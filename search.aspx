<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="user_Registration.search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 118px;
            height: 40px;
        }
        .auto-style13 {
            width: 118px;
            height: 49px;
        }
        .auto-style14 {
            height: 49px;
            width: 258px;
        }
        .auto-style15 {
            height: 40px;
            width: 258px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="font-size: x-large; font-weight: bold; color: #000000">
    <p>
        Search Product</p>
        <table border="1" class="auto-style1" style="border-color: #000000; height: 78px; width: 44%; background-color: #FFFFCC;">
            <tr>
                <td class="auto-style13">Search </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="202px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style15">
                    <asp:Button ID="Button1" runat="server" BorderColor="Black" Height="34px" Text="Search" Width="84px" BackColor="#FF9933" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
        
        <br />
    </div>
    <br />
     <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged"  RepeatColumns="3" RepeatDirection="Horizontal">
            <ItemTemplate>
                <table class="auto-style1" style="height: 340px; width: 99%">
                    <tr>
                        <td class="auto-style13">
                            <asp:Image ID="Image1" runat="server" ImageUrl= '<%#Eval("Productimage") %>'/>
                        </td>
                        <td>
                            <br />
                            <table class="auto-style3">
                                <tr>
                                    <td class="auto-style14">Id:  <%#Eval("Productid") %>
                                       
                                </td>
                                </tr>
                                <tr>
                                    <td class="auto-style15">Name:  <%#Eval("Productname") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style16">Price:  <%#Eval("Productprice") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style16">Description:  <%#Eval("Productdescription") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style16">Size:  <%#Eval("Productsize") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style16">Quantity
                                        <asp:DropDownList ID="DropDownList1" runat="server">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style12">
                                        <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%#Eval("Productid") %>' ImageUrl="~/images/cart.jpg"  />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
