<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewdetails.aspx.cs" Inherits="user_Registration.viewdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="YOUR JEWEL'S"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="3" RepeatDirection="Horizontal">
            <ItemTemplate>
                <table class="auto-style5">
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" ImageUrl= '<%#Eval("Productimage") %>'/></td>
                    </tr>
                    <tr>
                        <td>Id <%#Eval("Productid") %></td>
                    </tr>
                    <tr>
                        <td>Name <%#Eval("Productname") %></td>
                    </tr>
                    <tr>
                        <td>Price <%#Eval("Productprice") %></td>
                    </tr>
                    <tr>
                        <td>Description <%#Eval("Productdescription") %></td>
                    </tr>
                    <tr>
                        <td>Size <%#Eval("Productsize") %>cm</td>
                    </tr>
                    <tr>
                        <td><a href="AddToCart.aspx?id=<%#Eval("Productid")%>">Add To Cart</a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    
    </div>
    </form>
</body>
</html>
