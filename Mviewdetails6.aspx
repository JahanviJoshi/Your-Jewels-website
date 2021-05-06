<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Mviewdetails6.aspx.cs" Inherits="user_Registration.Mviewdetails6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 240px;
        }
        .auto-style13 {
            width: 277px;
        }
        .auto-style17 {
            width: 277px;
            height: 51px;
        }
        .auto-style18 {
            width: 277px;
            height: 50px;
        }
        .auto-style19 {
            width: 277px;
            height: 52px;
        }
        .auto-style20 {
            width: 277px;
            height: 54px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="font-weight: bold; font-size: x-large; color: #000000">
    
        Your product in Your Cart&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddToCart.aspx">Show Cart</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
        <br />
    
        <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style12">
                            <asp:Image ID="Image1" runat="server" ImageUrl= '<%#Eval("Nosepinimg") %>'/>
                        </td>
                        <td>
                            <br />
                            <table class="auto-style3">
                                <tr>
                                    <td class="auto-style17">  
                                       
                                       Id: <asp:Label ID="Label3" runat="server" Text='<%#Eval("Nosepinid") %>'></asp:Label>
                                       
                                </td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">Name:  <%#Eval("Nosepinname") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">Price:  <%#Eval("Nosepinprice") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style19">Description:  <%#Eval("Nosepindescription") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style17">Size:  <%#Eval("Nosepinsize") %> mm
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style17">Stock Available:<asp:Label ID="Label6" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">Quantity<asp:DropDownList ID="DropDownList1" runat="server">
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
                                        <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%#Eval("Nosepinid") %>' CommandName="addtocart" ImageUrl="~/images/cart.jpg"/>
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
