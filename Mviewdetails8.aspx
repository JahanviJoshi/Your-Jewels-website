<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Mviewdetails8.aspx.cs" Inherits="user_Registration.Mviewdetails8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 240px;
        }
        .auto-style13 {
            width: 278px;
        }
        .auto-style14 {
            width: 278px;
            height: 42px;
        }
        .auto-style15 {
            width: 278px;
            height: 50px;
        }
        .auto-style16 {
            width: 278px;
            height: 55px;
        }
        .auto-style17 {
            width: 278px;
            height: 60px;
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
                        <td class="auto-style12">
                            <asp:Image ID="Image1" runat="server" ImageUrl= '<%#Eval("Nacklaceimg") %>'/>
                        </td>
                        <td>
                            <br />
                            <table class="auto-style3">
                                <tr>
                                    <td class="auto-style15">  
                                       
                                       Id: <asp:Label ID="Label3" runat="server" Text=' <%#Eval("Nacklaceid") %>'></asp:Label>
                                       
                                </td>
                                </tr>
                                <tr>
                                    <td class="auto-style15">Name:  <%#Eval("Nacklacename") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style15">Price:  <%#Eval("Nacklaceprice") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style16">Description:  <%#Eval("Nacklacedescription") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style15">Size:  <%#Eval("Nacklacesize") %>  mm
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style17">Stock Available:<asp:Label ID="Label6" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style14">Quantity 
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
                                    <td class="auto-style13">
                                        <asp:ImageButton ID="ImageButton1" runat="server" CommandName="addtocart" ImageUrl="~/images/cart.jpg" CommandArgument='<%#Eval("Nacklaceid") %>' />
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
