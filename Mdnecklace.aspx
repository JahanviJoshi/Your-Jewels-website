<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Mdnecklace.aspx.cs" Inherits="user_Registration.Mdnecklace" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="font-size: x-large; font-weight: bold; color: #000000">
    
         Necklace<br />
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatDirection="Horizontal" RepeatColumns="3" Height="340px" Width="570px">
            <ItemTemplate>
                <div class="row productdetails">
                    <div class="col-4">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("Necklaceimage") %>' />

                    </div>

                    <div class="col-8">
                        <h4><%#Eval("Necklacename")%></h4>
                        <a href="Mdviewdetails8.aspx?id=<%#Eval("Necklaceid")%>">click me</a>
                    </div>
                </div>



            </ItemTemplate>
        </asp:DataList>
        <br />
    
    </div>
</asp:Content>
