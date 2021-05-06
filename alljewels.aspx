<%@ Page Language="C#" AutoEventWireup="true" CodeFile="alljewels.aspx.cs" Inherits="user_Registration.alljewels" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height:100%"; width:"100%">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="rings.aspx"> <asp:Image ID="Image1" runat="server" ImageUrl="~/images/ringgold.jpg" /><br />
                <asp:Label ID="Label1" runat="server" Text="RINGS"></asp:Label></asp:HyperLink>
         </div>
        <div style="height:100%"; width:"100%">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="earringgold.aspx"> <asp:Image ID="Image2" runat="server" ImageUrl="~/images/earringgold.jpg" /><br />
                <asp:Label ID="Label2" runat="server" Text="EARRINGS"></asp:Label></asp:HyperLink>
         </div>
        <div style="height:100%"; width:"100%">
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="pendantgold.aspx"> <asp:Image ID="Image3" runat="server" ImageUrl="~/images/pendantgold.jpg" /><br />
                <asp:Label ID="Label3" runat="server" Text="PENDANT"></asp:Label></asp:HyperLink>
        </div>
        <div style="height:100%"; width:"100%">
             <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="braceletgold.aspx"> <asp:Image ID="Image4" runat="server" ImageUrl="~/images/braceletgold.jpg" /><br />
                <asp:Label ID="Label4" runat="server" Text="BRACELET"></asp:Label></asp:HyperLink>
            </div>
         <div style="height:100%"; width:"100%">
             <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="chaingold.aspx"> <asp:Image ID="Image5" runat="server" ImageUrl="~/images/chaingold.jpg" /><br />
                <asp:Label ID="Label5" runat="server" Text="CHAINS"></asp:Label></asp:HyperLink>
         </div>
         <div style="height:100%"; width:"100%">
              <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="neckgold.aspx"> <asp:Image ID="Image6" runat="server" ImageUrl="~/images/neckgold.jpg" /><br />
                <asp:Label ID="Label6" runat="server" Text="NECKLACE"></asp:Label></asp:HyperLink>
             </div>
         <div style="height:100%"; width:"100%">
              <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="nosepingold.aspx"> <asp:Image ID="Image7" runat="server" ImageUrl="~/images/nosepingold.jpg" /><br />
                <asp:Label ID="Label7" runat="server" Text="NOSEPIN"></asp:Label></asp:HyperLink>
             </div>
        <div style="height:100%"; width:"100%">
            <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="mangalsutragold.aspx"> <asp:Image ID="Image8" runat="server" ImageUrl="~/images/mangalsutragold.jpg" /><br />
                <asp:Label ID="Label8" runat="server" Text="MANGALSUTRA"></asp:Label></asp:HyperLink>
            </div>





    </form>
</body>
</html>
