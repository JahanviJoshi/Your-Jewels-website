<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Mdviewdetails2.aspx.cs" Inherits="user_Registration.Mdviewdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 283px;
        }
        .auto-style13 {
            width: 240px;
        }
        .auto-style14 {
            width: 283px;
            height: 44px;
        }
        .auto-style16 {
            width: 283px;
            height: 40px;
        }
        .auto-style17 {
            width: 283px;
            height: 49px;
        }
        .auto-style18 {
            width: 283px;
            height: 56px;
        }
        .auto-style19 {
            width: 283px;
            height: 58px;
        }
        .auto-style20 {
            width: 283px;
            height: 65px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="font-size: x-large; font-weight: bold; color: #000000">
    
        Your&nbsp; Product in Your Cart&nbsp; &nbsp;<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        &nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddToCart.aspx">ShowCart</asp:HyperLink>
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server"  OnItemCommand="DataList1_ItemCommand1" OnItemDataBound="DataList1_ItemDataBound">
            <ItemTemplate>
                <table class="auto-style1" style="height: 340px; width: 99%">
                    <tr>
                        <td class="auto-style13">
                            <asp:Image ID="Image1" runat="server" ImageUrl= '<%#Eval("Pendantimage") %>'/>
                        </td>
                        <td>
                            <br />
                            <table class="auto-style3">
                                <tr>
                                    <td class="auto-style14"> 
                                       
                                      Id:<asp:Label ID="Label3" runat="server" Text='<%#Eval("Pendantid") %>'></asp:Label>
                                       
                                </td>
                                </tr>
                                <tr>
                                    <td class="auto-style14">Name:  <%#Eval("Pendantname") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style17">Price:  <%#Eval("Pendantprice") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">Description:  <%#Eval("Pendantdescription") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style19">Size:  <%#Eval("Pendantsize") %> mm
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">Stock Available:<asp:Label ID="Label6" runat="server"></asp:Label>
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
                                        <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%#Eval("Pendantid") %>'  ImageUrl="~/images/cart.jpg" CommandName="addtocart" />
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
