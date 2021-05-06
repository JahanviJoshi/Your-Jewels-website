<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Mdmangalsutra.aspx.cs" Inherits="user_Registration.Mdmangalsutra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="font-size: x-large; font-weight: bold; color: #000000">
    
         Mangalsutra<br />
        <br />
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Height="340px" Width="570px">
            <ItemTemplate>
                <div class="row productdetails">
                    <div class="col-4">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("mangalsutraimage") %>' />

                    </div>

                    <div class="col-8">
                        <h4><%#Eval("mangalsutraname")%></h4>
                       
                        <a href="Mdviewdetails7.aspx?id=<%#Eval("mangalsutraid")%>">click me</a>
                    </div>
                </div>



            </ItemTemplate>
        </asp:DataList>
        <br />
    
    </div>
</asp:Content>
