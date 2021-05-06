<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Mdpendant.aspx.cs" Inherits="user_Registration.Mdpendant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="font-size: x-large; font-weight: bold; color: #000000">
    
        Pendant<br />
        <br />
        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="3" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Height="340px" Width="570px">
            <ItemTemplate>
                <div class="row productdetails">
                    <div class="col-4">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("Pendantimage") %>' />

                    </div>

                    <div class="col-8">
                        <h4><%#Eval("Pendantname")%></h4>
                        <a href="Mdviewdetails2.aspx?id=<%#Eval("Pendantid")%>">click me</a>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    
    </div>
</asp:Content>
