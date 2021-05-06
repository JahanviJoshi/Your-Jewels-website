<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jewels.aspx.cs" Inherits="user_Registration.jewels" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .productlist{
        border:1px solid #6c757d;
        margin-bottom: 10px;
        padding:15px;
        border-radius: 3px;
        }
        .auto-style1 {
            width: 100%;
            height: 25px;
        }
        .auto-style2 {
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
        <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatDirection="Horizontal" RepeatColumns="3" Height="324px" Width="535px">
                        <ItemTemplate>
         <table class="auto-style2">
            <tr>
                <td><div class="col-4">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("Productimage") %>' />

                    </div></td>
            </tr>
            <tr>
                <td><div>
                    <h4><%#Eval("Productname")%></h4> </div></td>
            </tr>
            <tr>
                <td><a href="viewdetails.aspx?id=<%#Eval("Productid")%>">click me</a></td>
            </tr>
        </table>

            </ItemTemplate>
        </asp:DataList>
        <br />
  
    
       
  
    
  </div>
    </form>
</body>
</html>
