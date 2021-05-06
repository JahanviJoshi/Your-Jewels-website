<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Mdviewdetails7.aspx.cs" Inherits="user_Registration.Mdviewdetails7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            width: 240px;
        }
        .auto-style14 {
            width: 268px;
        }
        .auto-style15 {
            width: 268px;
            height: 48px;
        }
        .auto-style16 {
            width: 268px;
            height: 59px;
        }
        .auto-style17 {
            width: 268px;
            height: 50px;
        }
        .auto-style18 {
            width: 268px;
            height: 49px;
        }
        .auto-style19 {
            width: 268px;
            height: 57px;
        }
        .auto-style20 {
            width: 268px;
            height: 52px;
        }
        .auto-style21 {
            width: 268px;
            height: 58px;
        }
        .auto-style22 {
            width: 268px;
            height: 46px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div style="font-size: x-large; font-weight: bold; color: #000000">
    
        Your Product in Your Cart&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddToCart.aspx">ShowCart</asp:HyperLink>
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server"  OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style13">
                            <asp:Image ID="Image1" runat="server" ImageUrl= '<%#Eval("Mangalsutraimage") %>'/>
                        </td>
                        <td>
                            <br />
                            <table class="auto-style3">
                                <tr>
                                    <td class="auto-style16">  
                                       
                                       Id: <asp:Label ID="Label3" runat="server" Text='<%#Eval("Mangalsutraid") %>'></asp:Label>
                                       
                                </td>
                                </tr>
                                <tr>
                                    <td class="auto-style17">Name:  <%#Eval("Mangalsutraname") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">Price:  <%#Eval("Mangalsutraprice") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style19">Description: <%#Eval("Mangalsutradescription") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">Size: <%#Eval("Mangalsutrasize") %> mm

                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">Stock Available:<asp:Label ID="Label6" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style22">Quantity
                                        <asp:DropDownList ID="DropDownList1" runat="server">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style14">
                                        <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%#Eval("Mangalsutraid") %>' CommandName="addtocart" ImageUrl="~/images/cart.jpg" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    
    </div>
</asp:Content>
