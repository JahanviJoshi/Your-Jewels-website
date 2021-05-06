<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Mdviewdetails3.aspx.cs" Inherits="user_Registration.Mdviewdetails3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 461px;
        }
        .auto-style10 {
            width: 160px;
        }
        .auto-style11 {
            width: 298px;
        }
        .auto-style12 {
            width: 461px;
            height: 50px;
        }
        .auto-style13 {
            width: 1170px;
            height: 247px;
        }
        .auto-style16 {
            width: 1139px;
            height: 53px;
        }
        .auto-style17 {
            width: 1139px;
            height: 51px;
        }
        .auto-style18 {
            width: 1139px;
            height: 50px;
        }
        .auto-style19 {
            width: 1139px;
            height: 59px;
        }
        .auto-style20 {
            width: 1139px;
            height: 55px;
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
        <asp:DataList ID="DataList1" runat="server"  OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound" Height="338px" Width="540px"  >
            <ItemTemplate>
                <table class="auto-style1" style="height: 340px">
                    <tr>
                        <td class="auto-style13">
                            <asp:Image ID="Image1" runat="server" ImageUrl= '<%#Eval("Braceletimage") %>'/>
                        </td>
                        <td class="auto-style11">
                            <br />
                            <table class="auto-style3">
                                <tr>
                                    <td class="auto-style12">
                                       ID: <asp:Label ID="Label3" runat="server" Text='<% #Eval("Braceletid") %>'> 
                                        </asp:Label>
                                        

                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style17">Name:    <%#Eval("Braceletname") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">Price:    <%#Eval("Braceletprice") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style19">Description:    <%#Eval("Braceletdescription") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">Size:    <%#Eval("Braceletsize") %> mm
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style19">Quantity&nbsp;
                                        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="89px">
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
                                        <asp:Label ID="Label4" runat="server" Text="Stock Available :"></asp:Label> 
                                        &nbsp;
                                        <asp:Label ID="Label6" runat="server"></asp:Label> 
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%#Eval("Braceletid")%>' CommandName="addtocart" ImageUrl="~/images/cart.jpg" OnClick="ImageButton1_Click" />
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
