<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Malljewels.aspx.cs" Inherits="user_Registration.Malljewels" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
    
        <asp:Label ID="Label1" runat="server" Text="YOUR JEWEL'S"></asp:Label>
        <br />
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="3" Height="324px" Width="535px">
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
</asp:Content>
