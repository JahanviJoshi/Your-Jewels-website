<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Mdbracelet.aspx.cs" Inherits="user_Registration.Mdbracelet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="font-size: x-large; color: #000000; font-weight: bold">
    
        Bracelets<br />
        <br />
        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="3" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Height="340px" Width="570px">
              <ItemTemplate>
                <div class="row productdetails">
                    <div class="col-4">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("Braceletimage") %>' />

                    </div>

                    <div class="col-8">
                        <h4><%#Eval("Braceletname")%></h4>
                        <a href="Mdviewdetails3.aspx?id=<%#Eval("Braceletid")%>">click me</a>
                    </div>
                </div>



            </ItemTemplate>
        </asp:DataList>
        <br />
    
    </div>
</asp:Content>
