<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="MDrings.aspx.cs" Inherits="user_Registration.MDrings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="font-size: x-large; font-weight: bold; color: #000000">
    
         Rings<br />
        <br />
        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="3" Height="342px" Width="540px">
            <ItemTemplate>
                <div class="row productdetails">
                    <div class="col-4">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("Ringimg") %>' />

                    </div>

                    <div class="col-8">
                        <h4><%#Eval("Ringname")%></h4>
                        <a href="Mdviewdetails5.aspx?id=<%#Eval("Ringid")%>">click me</a>
                    </div>
                </div>



            </ItemTemplate>
        </asp:DataList>
    
    </div>
</asp:Content>
