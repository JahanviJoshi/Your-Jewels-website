<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Mdviewdetails8.aspx.cs" Inherits="user_Registration.Mdviewdetails8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 241px;
        }
        .auto-style13 {
            width: 280px;
        }
        .auto-style14 {
            width: 280px;
            height: 42px;
        }
        .auto-style15 {
            width: 280px;
            height: 43px;
        }
        .auto-style16 {
            width: 280px;
            height: 51px;
        }
        .auto-style17 {
            width: 280px;
            height: 52px;
        }
        .auto-style18 {
            width: 280px;
            height: 54px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 1980px; width: 810px; margin-right: 0px; font-size: x-large; font-weight: bold; color: #000000;">
    
        <br />
        <br />
        Your Product in Your Cart&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddToCart.aspx">ShowCart</asp:HyperLink>
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound">
             <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style12">
                            <asp:Image ID="Image1" runat="server" ImageUrl= '<%#Eval("Necklaceimage") %>'/>
                        </td>
                        <td>
                            <br />
                            <table class="auto-style3">
                                <tr>
                                    <td class="auto-style15">  
                                       
                                        Id:<asp:Label ID="Label3" runat="server" Text='<%#Eval("Necklaceid") %>'></asp:Label>
                                       
                                </td>
                                </tr>
                                <tr>
                                    <td class="auto-style16">Name:  <%#Eval("Necklacename") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style16">Price:  <%#Eval("Necklaceprice") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style17">Description:  <%#Eval("Necklacedescription") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style17">Size:  <%#Eval("Necklacesize") %> mm
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">Stock Available:<asp:Label ID="Label6" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">Quantity
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
                                    <td class="auto-style13">
                                        <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%#Eval("Necklaceid") %>' CommandName="addtocart" ImageUrl="~/images/cart.jpg" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <br />
    
    </div>
</asp:Content>
