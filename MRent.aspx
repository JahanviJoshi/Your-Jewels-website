<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="MRent.aspx.cs" Inherits="user_Registration.MRent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div style="font-style: normal; font-size: x-large; color: #000000; font-weight: bold;">
     <br />
        Renting Products<br />
        <br />
         <asp:DataList ID="DataList1" runat="server"  RepeatDirection="Horizontal" RepeatColumns="3" OnItemCommand="DataList1_ItemCommand" Height="221px" Width="475px">
            <ItemTemplate>
                <div class="row productdetails">
                    <div class="col-4">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("Productimage") %>' />

                    </div>

                    <div class="col-8">
                        <h4><%#Eval("Productname")%></h4>
                        <a href="MRent1.aspx?id=<%#Eval("Productid")%>">Click Me</a><br />
                    </div>
                </div>
                    
            </ItemTemplate>
        </asp:DataList>
             </div>
</asp:Content>

