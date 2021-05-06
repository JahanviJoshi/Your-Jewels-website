<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Mpendantgold.aspx.cs" Inherits="user_Registration.Mpendantgold" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="font-size: x-large; font-weight: bold; color: #000000">
    
         Pendant<br />
        <br />
        <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="3" RepeatDirection="Horizontal" Height="340px" Width="540px">
            <ItemTemplate>
                <div class="row productdetails">
                    <div class="col-4">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("Pendantimg") %>' />

                    </div>

                    <div class="col-8">
                        <h4><%#Eval("Pendantname")%></h4>
                        <a href="Mviewdetails2.aspx?id=<%#Eval("Pendantid")%>">click me</a>
                    </div>
                </div>



            </ItemTemplate>
        </asp:DataList>
    
    </div>
</asp:Content>
