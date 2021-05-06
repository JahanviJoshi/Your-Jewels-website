<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Mnosepingold.aspx.cs" Inherits="user_Registration.Mnosepingold" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="font-size: x-large; font-weight: bold; color: #000000">
    
         Nosepin<br />
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" Height="334px" Width="556px">
             <ItemTemplate>
                <div class="row productdetails">
                    <div class="col-4">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("Nosepinimg") %>' />

                    </div>

                    <div class="col-8">
                        <h4><%#Eval("Nosepinname")%></h4>
                        <a href="Mviewdetails6.aspx?id=<%#Eval("Nosepinid")%>">click me</a>
                    </div>
                </div>
                  </ItemTemplate>
        </asp:DataList>
         </div>

</asp:Content>
                  
