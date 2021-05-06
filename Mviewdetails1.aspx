<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Mviewdetails1.aspx.cs" Inherits="user_Registration.Mviewdetails1" %>
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
        .auto-style16 {
            width: 272px;
            height: 46px;
        }
        .auto-style17 {
            width: 272px;
            height: 51px;
        }
        .auto-style18 {
            width: 272px;
            height: 54px;
        }
        .auto-style19 {
            width: 272px;
            height: 52px;
        }
        .auto-style20 {
            width: 272px;
            height: 55px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="font-size: x-large; font-weight: bold; color: #000000">
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>

        &nbsp;

        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Login</asp:LinkButton>

        &nbsp;

        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">SignOut</asp:LinkButton>

        &nbsp;&nbsp;

        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">View WishList</asp:LinkButton>
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged1" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound">
            <ItemTemplate>
                <table class="auto-style1">
                   <tr>
                       
                        <td class="auto-style12">
                            <asp:Image ID="Image1" runat="server" ImageUrl= '<%#Eval("Earringimg") %>'/>
                        </td>
                       
                    <td>
                            <br />
                            <table class="auto-style3">
                                <tr>
                                    <td class="auto-style17"> 
                                       
                                        Id:<asp:Label ID="Label3" runat="server" Text='<%# Eval("Earringid") %>'></asp:Label>
                                       
                                </td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">Name:  <%#Eval("Earringname") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">Price:  <%#Eval("Earringprice") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style17">Description:  <%#Eval("Earringdescription") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style19">Size:  <%#Eval("Earringsize") %> mm
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">Stock Available:<asp:Label ID="Label6" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">
                                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                        <br />
                                         <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%#Eval("Earringid")%>' CommandName="addtowishlist" />
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
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList>

                                    </td>

                                </tr>
                                <tr>
                                    <td class="auto-style16">
                                        <br />
                                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/cart.jpg" CommandArgument='<%#Eval("Earringid")%>' CommandName="addtocart" />
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
