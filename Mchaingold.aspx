<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Mchaingold.aspx.cs" Inherits="user_Registration.Mchaingold" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
    
        <asp:Label ID="Label4" runat="server" Text="Chains" Font-Bold="True" Font-Size="X-Large"></asp:Label>
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatDirection="Horizontal" RepeatColumns="3" OnItemCommand="DataList1_ItemCommand" Height="340px" Width="570px">
            <ItemStyle Font-Bold="True" Font-Size="X-Large" />
            <ItemTemplate>
                <div class="row productdetails">
                    <div class="col-4">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("Chainimg") %>' />

                    </div>

                    <div class="col-8">
                        <h4><%#Eval("Chainname")%></h4>
                        <a href="Mviewdetails4.aspx?id=<%#Eval("Chainid")%>">click me</a><br />
                    </div>
                </div>



            </ItemTemplate>
        </asp:DataList>

    
    </div>
</asp:Content>
