<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="MRent1.aspx.cs" Inherits="user_Registration.MRent1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style10 {
            width: 311px;
        }
        .auto-style11 {
            width: 356px;
        }
        .auto-style12 {
            width: 356px;
            height: 44px;
        }
        .auto-style13 {
            width: 321px;
            height: 247px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 1214px; width: 750px; font-size: x-large; font-weight: bold; color: #000000;" >
        Your Product in Your Cart&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" Font-Size="X-Large"></asp:Label>
        &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddToCart.aspx" Font-Bold="True" Font-Size="X-Large">ShowCart</asp:HyperLink>
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" Height="249px"  Width="666px" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" >
             <ItemTemplate>
                <table class="auto-style1" style="width: 105%">
                    <tr>
                        <td class="auto-style13">
                            <asp:Image ID="Image1" runat="server" ImageUrl= '<%#Eval("Productimage") %>'/>
                        </td>
                        <td class="auto-style14">
                            <br />
                            <table class="auto-style3">
                                <tr>
                                    <td class="auto-style11" style="font-size: large; font-weight: lighter; color: #000000">
                                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Id:"> </asp:Label>   
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style11" style="font-size: large; font-weight: lighter; color: #000000"><asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Name:"> </asp:Label>  <%#Eval("Productname") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style11" style="font-size: large; font-weight: lighter; color: #000000">
                                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Price:"></asp:Label>  <%#Eval("Productprice") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style11" style="font-size: large; font-weight: lighter; color: #000000">
                                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Description:"></asp:Label>  <%#Eval("Productdescription") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style11" style="font-weight: lighter; font-size: large; color: #000000">
                                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Size:"></asp:Label>  <%#Eval("Productsize") %>
                                        Adustable
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style11" style="font-weight: lighter; font-size: large; color: #000000">&nbsp;<asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Quantity:"></asp:Label>
&nbsp;
                                        <asp:DropDownList ID="DropDownList1" runat="server" Height="28px" Width="43px">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style11" style="font-weight: lighter; font-size: large; color: #000000">
                                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Duration:"></asp:Label>
                                        <asp:DropDownList ID="DropDownList2" runat="server">
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style12">
                                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/RI.jpg" CommandArgument='<%#Eval("Productid") %>' CommandName="rent"  />
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">
                                        <br />
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
