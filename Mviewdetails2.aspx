<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Mviewdetails2.aspx.cs" Inherits="user_Registration.Mviewdetails2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 240px;
        }
        .auto-style13 {
            width: 272px;
        }
        .auto-style14 {
            width: 272px;
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="font-weight: bold; font-size: x-large; color: #000000">
    
        You Have Product in your cart&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddToCart.aspx">show cart</asp:HyperLink>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Login</asp:LinkButton>
&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">SignOut</asp:LinkButton>
&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">View WishList</asp:LinkButton>
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound">
                 <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style12">
                            <asp:Image ID="Image1" runat="server" ImageUrl= '<%#Eval("pendantimg") %>'/>
                        </td>
                        <td>
                            <br />
                            <table class="auto-style3">
                                <tr>
                                    <td class="auto-style14">Id:  <%#Eval("pendantid") %>
                                       
                                        <asp:Label ID="Label6" runat="server" Text=' <%#Eval("pendantid") %>' Visible="False"></asp:Label>
                                       
                                </td>
                                </tr>
                                <tr>
                                    <td class="auto-style14">Name:  <%#Eval("pendantname") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style14">Price:  <%#Eval("pendantprice") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style14">Description:  <%#Eval("pendantdescription") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style14">Size:  <%#Eval("pendantsize") %> mm
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">
                                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/bw.jpg" CommandArgument='<%#Eval("Pendantid")%>' CommandName="addtowishlist" />
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style14">Quantity<asp:DropDownList ID="DropDownList1" runat="server">
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
                                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/cart.jpg" CommandArgument='<%#Eval("Pendantid")%>' CommandName="addtocart" />
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
    
    </div>
</asp:Content>
