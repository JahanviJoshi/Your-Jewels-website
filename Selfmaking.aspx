<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Selfmaking.aspx.cs" Inherits="user_Registration.Family" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style16 {
            width: 208px;
            height: 42px;
        }
        .auto-style17 {
            height: 42px;
        }
        .auto-style13 {
            width: 208px;
        }
        .auto-style14 {
            width: 208px;
            height: 30px;
        }
        .auto-style15 {
            height: 30px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                <br />
                <table class="auto-style1" style="border: thin groove #000000; height: 249px; font-size: large; font-weight: bold; color: #000000; background-color: #FFFFCC;">
                    <tr>
                        <td>Select Jewelery</td>
                        <td class="auto-style17">
                            <asp:DropDownList ID="DropDownList5" runat="server" >
                                <asp:ListItem>Earring</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Select Style</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>Stud</asp:ListItem>
                                <asp:ListItem>Dangular</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Select Shape</td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server" Height="22px" Width="80px">
                                <asp:ListItem>Circle</asp:ListItem>
                                <asp:ListItem>Circle-Square</asp:ListItem>
                                <asp:ListItem>Square-Circle</asp:ListItem>
                                <asp:ListItem>Square</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Select Metal</td>
                        <td>
                            <asp:DropDownList ID="DropDownList3" runat="server" Height="22px" Width="80px" >
                                <asp:ListItem>Gold</asp:ListItem>
                                <asp:ListItem>Platinum</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Select Stone</td>
                        <td>
                            <asp:DropDownList ID="DropDownList4" runat="server" Height="22px"  Width="80px">
                                <asp:ListItem>Pearl</asp:ListItem>
                                <asp:ListItem>Ruby</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14"></td>
                        <td class="auto-style15">
                            <asp:Button ID="Button1" runat="server" Text="Show" BackColor="#FFCC66" Height="22px"  Width="80px" OnClick="Filter" />
                        </td>
                    </tr>
                </table>
                <br />
                <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="Jewelery" HeaderText="Jewelery" />
                        <asp:BoundField DataField="Style" HeaderText="Style" />
                        <asp:BoundField DataField="Shape" HeaderText="Shape" />
                        <asp:BoundField DataField="Metal" HeaderText="Metal" />
                        <asp:BoundField DataField="Stone" HeaderText="Stone" />
                        <asp:ImageField HeaderText="Image" DataImageUrlField="Image">
                        </asp:ImageField>
                    </Columns>
                </asp:GridView>--%>

    <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style12">
                            <asp:Image ID="Image1" runat="server" ImageUrl= '<%#Eval("Image") %>'/>
                        </td>
                        <td>
                            <br />
                            <table class="auto-style3">
                                <tr>
                                    <td class="auto-style15">  
                                       
                                      Id:  <asp:Label ID="Label3" runat="server" Text='<%#Eval("Productid") %>'></asp:Label>
                                       
                                </td>
                                </tr>
                                <tr>
                                    <td class="auto-style16">Jewelery: <%#Eval("Jewelery") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style15">Style:  <%#Eval("Style") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style17">Shape:  <%#Eval("Shape") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style15">Metal:  <%#Eval("Metal") %> 
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">Stone:<%#Eval("Stone") %></td>
                                </tr>
                                <tr>
                                    <td class="auto-style16">Quantity<asp:DropDownList ID="DropDownList1" runat="server">
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
                                        <asp:ImageButton ID="ImageButton1" runat="server" CommandName="addtocart" ImageUrl="~/images/cart.jpg" CommandArgument='<%#Eval("Productid")%>' />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
       
        </asp:DataList>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>

</asp:Content>
