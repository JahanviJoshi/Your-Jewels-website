<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Mmangalsutra.aspx.cs" Inherits="user_Registration.Mmangalsutra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="font-weight: bold; font-size: x-large; color: #000000">
    
        Mangalsutra<br />
        <br />
        <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="3" RepeatDirection="Horizontal" Height="340px" Width="540px">
            <ItemTemplate>
                <div class="row productdetails">
                    <div class="col-4">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("mangalsutraimg") %>' />

                    </div>

                    <div class="col-8">
                        <h4><%#Eval("mangalsutraname")%></h4>
                       
                        <a href="Mviewdetails7.aspx?id=<%#Eval("mangalsutraid")%>">click me</a>
                    </div>
                </div>



            </ItemTemplate>
        </asp:DataList>
        <br />
    
    </div>
</asp:Content>
