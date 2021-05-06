<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Mearringgold.aspx.cs" Inherits="user_Registration.Mearring" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div style="font-size: x-large; font-weight: bold; color: #000000">
    
          Earring<br /> 
        <br />
        <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatDirection="Horizontal" RepeatColumns="3" Height="340px" Width="540px">
            <ItemTemplate>
                <div class="row productdetails">
                    <div class="col-4">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("earringimg") %>' />

                    </div>

                    <div class="col-8">
                        <h4><%#Eval("Earringname")%></h4>
                        <a href="Mviewdetails1.aspx?id=<%#Eval("earringid")%>">click me</a>
                    </div>
                </div>



            </ItemTemplate>
        </asp:DataList>
        <br />
    
    </div>
</asp:Content>
