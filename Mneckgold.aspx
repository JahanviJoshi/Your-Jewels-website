<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Mneckgold.aspx.cs" Inherits="user_Registration.Mneckgold" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="font-size: x-large; font-weight: bold; color: #000000">
    
        Necklace<br />
        <br />
        <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatDirection="Horizontal" RepeatColumns="3" Height="339px" Width="540px">
             <ItemTemplate>
                <div class="row productdetails">
                    <div class="col-4">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("Nacklaceimg") %>' />

                    </div>

                    <div class="col-8">
                        <h4><%#Eval("Nacklacename")%></h4>
                        <a href="Mviewdetails8.aspx?id=<%#Eval("Nacklaceid")%>">click me</a>
                    </div>
                </div>



            </ItemTemplate>
        </asp:DataList>
    
    </div>
</asp:Content>
