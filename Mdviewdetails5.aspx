<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Mdviewdetails5.aspx.cs" Inherits="user_Registration.Mdviewdetails2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 240px;
        }
        .auto-style13 {
            width: 277px;
        }
        .auto-style16 {
            width: 277px;
            height: 51px;
        }
        .auto-style17 {
            width: 277px;
            height: 53px;
        }
        .auto-style18 {
            width: 277px;
            height: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="font-size: x-large; font-weight: bold; color: #000000">
    
        Your Product in Your Cart&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server">ShowCart</asp:HyperLink>
         <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemCommand="DataList1_ItemCommand" Height="339px" Width="539px" OnItemDataBound="DataList1_ItemDataBound">
                 <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style12">
                            <asp:Image ID="Image1" runat="server" ImageUrl= '<%#Eval("Ringimg") %>'/>
                        </td>
                        <td>
                            <br />
                            <table class="auto-style3">
                                <tr>
                                    <td class="auto-style16"> 
                                       
                                       
                                       
                                      Id:<asp:Label ID="Label3" runat="server" Text='<%#Eval("Ringid") %>'></asp:Label>
                                       
                                       
                                       
                                </td>
                                </tr>
                                <tr>
                                    <td class="auto-style17">Name:  <%#Eval("Ringname") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">Price:  <%#Eval("Ringprice") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style17">Description:  <%#Eval("Ringdescription") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style17">Size:  <%#Eval("Ringsize") %> mm
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style17">Stock Available:<asp:Label ID="Label6" runat="server"></asp:Label>
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
                                    <td class="auto-style13">
                                        <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument=' <%#Eval("Ringid") %>' CommandName="addtocart" ImageUrl="~/images/cart.jpg" />
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
