<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Mviewdetails3.aspx.cs" Inherits="user_Registration.Mviewdetails3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            height: 242px;
        }
        .auto-style13 {
            width: 292px;
        }
        .auto-style14 {
            height: 242px;
            width: 240px;
        }
        .auto-style19 {
            width: 292px;
            height: 55px;
        }
        .auto-style20 {
            width: 292px;
            height: 52px;
        }
        .auto-style22 {
            width: 292px;
            height: 66px;
        }
        .auto-style23 {
            width: 292px;
            height: 47px;
        }
        .auto-style25 {
            width: 292px;
            height: 56px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="font-size: x-large; font-weight: bold; color: #000000">
    
        You have Product in Your Cart
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound">
            <ItemTemplate>
                <table class="auto-style1" style="height: 202px; width: 99%; background-color: #FFFFFF;">
                    <tr>
                        <td class="auto-style14">
                            <asp:Image ID="Image1" runat="server" ImageUrl= '<%#Eval("Braceletimg") %>'/>
                        </td>
                        <td class="auto-style12">
                            <br />
                            <table class="auto-style3" style="font-weight: bold; color: #000000">
                                <tr>
                                   <td class="auto-style19">
                                       Id:<asp:Label ID="Label3" runat="server" Text='<%#Eval("Braceletid") %>'></asp:Label>
                                       
                                </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">Name:  <%#Eval("Braceletname") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">Price:  <%#Eval("Braceletprice") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style22">Description:  <%#Eval("Braceletdescription") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style23">Size:  <%#Eval("Braceletsize") %> mm
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style19">Stock Available:<asp:Label ID="Label6" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style25">Quantity
                                        <asp:DropDownList ID="DropDownList1" runat="server">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">
                                        <br />
                                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/cart.jpg" CommandArgument='<%#Eval("Braceletid")%>' CommandName="addtocart" />
                                        <br />
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
