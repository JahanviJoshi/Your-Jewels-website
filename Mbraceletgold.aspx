<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Mbraceletgold.aspx.cs" Inherits="user_Registration.Mbraceletgold" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="font-weight: bold; color: #000000; font-size: x-large">
    
        <asp:Label ID="Label3" runat="server" Text="Bracelet"></asp:Label>
         <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatDirection="Horizontal" RepeatColumns="3" OnItemCommand="DataList1_ItemCommand" Height="340px" Width="570px">
            <ItemTemplate>
                <div class="row productdetails">
                    <div class="col-4">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("Braceletimg") %>' />

                    </div>

                    <div class="col-8">
                        <h4><%#Eval("Braceletname")%></h4>
                        <a href="Mviewdetails3.aspx?id=<%#Eval("Braceletid")%>">click me</a>
                        <br />   
                    </div>
                </div>



            </ItemTemplate>
        </asp:DataList>
      
    </div>
</asp:Content>
