<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Contact Us.aspx.cs" Inherits="user_Registration.Contact_Us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2 class="text-align">Have a question</h2>
<ul>
    <li>&nbsp;<span class="email-info"><asp:ImageButton ID="ImageButton1" runat="server" Height="32px" ImageUrl="~/images/mail.jpg" Width="36px" />
&nbsp; Email us at yourjewels@gmail.com</span></li>
    <li><span class="email-info">
        <asp:ImageButton ID="ImageButton2" runat="server" Height="28px" ImageUrl="~/images/call.jpg" Width="36px" />
        </span>&nbsp;<span class="email-info">Call us at <span class="number-edit">1800-258-2598
        <br />
        1800-266-0123</span></span></li>
</ul>

</asp:Content>
