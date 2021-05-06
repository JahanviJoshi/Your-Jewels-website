<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Crystal2.aspx.cs" Inherits="user_Registration.crystal2" %><%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script type="text/javascript" src="/crystalreportviewers13/js/crviewer/crv.js">
      </script> 
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="YOUR JEWELS"></asp:Label>
        <br />
        <br />
        <br />
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="True" GroupTreeImagesFolderUrl="" Height="1202px" ReportSourceID="CrystalReportSource2" ToolbarImagesFolderUrl="" ToolPanelWidth="200px" Width="1104px" />
        <CR:CrystalReportSource ID="CrystalReportSource2" runat="server">
            <Report FileName="CrystalReport2.rpt">
            </Report>
        </CR:CrystalReportSource>
        <br />
    
    </div>
    </form>
</body>
</html>
