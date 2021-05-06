<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Mdviewdetails1.aspx.cs" Inherits="user_Registration.Mdviewdetails1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 230px;
            height: 358px;
        }
        .auto-style13 {
            width: 297px;
        }
        .auto-style16 {
            height: 358px;
        }
        .auto-style17 {
            width: 297px;
            height: 40px;
        }
        .auto-style19 {
            width: 297px;
            height: 46px;
        }
        .auto-style20 {
            width: 297px;
            height: 64px;
        }
        .auto-style21 {
            width: 297px;
            height: 74px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="font-size: x-large; font-weight: bold; color: #000000">
    
        Your
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp;Product in Your Cart&nbsp;&nbsp;
&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddToCart.aspx">ShowCart</asp:HyperLink>
        <br />
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound">
             <ItemTemplate>
                <table class="auto-style1" style="height: 340px">
                    <tr>
                        <td class="auto-style12">
                            <asp:Image ID="Image1" runat="server" ImageUrl= '<%#Eval("Earringimage") %>'/>
                        </td>
                        <td class="auto-style16">
                            <br />
                            <table class="auto-style3">
                                <tr>
                                    <td class="auto-style17">
                                       
                                       ID: <asp:Label ID="Label3" runat="server" Text=' <%#Eval("Earringid") %>'>

                                           </asp:Label>
                                       
                                </td>
                                </tr>
                                <tr>
                                    <td class="auto-style17">Name:    <%#Eval("Earringname") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style19">Price:  <%#Eval("Earringprice") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">Description:    <%#Eval("Earringdescription") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style17">Size:    <%#Eval("Earringsize") %> mm
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">Stock Available:<asp:Label ID="Label6" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style17">Quantity
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
                                        <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%#Eval("Earringid") %>' CommandName="addtocart" ImageUrl="~/images/cart.jpg" Height="70px" Width="142px" />
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
