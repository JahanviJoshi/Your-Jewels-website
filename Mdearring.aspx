<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Mdearring.aspx.cs" Inherits="user_Registration.Mdearring" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="font-weight: bold; color: #000000; font-size: x-large">
    
         Earrings<br />
        <br />
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Height="340px" Width="570px">
              <ItemTemplate>
                <div class="row productdetails">
                    <div class="col-4">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("earringimage") %>' />

                    </div>

                    <div class="col-8">
                        <h4><%#Eval("Earringname")%></h4>
                        <a href="Mdviewdetails1.aspx?id=<%#Eval("earringid")%>">click me</a>
                    </div>
                </div>



            </ItemTemplate>
        </asp:DataList>
    
    </div>
</asp:Content>
