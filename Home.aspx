<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="user_Registration.mringgold" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 104px;
        }
    body.Wq3Ysf .eHAdSb{outline:none}.eHAdSb{display:inline-block;position:relative}.n3VNCb{vertical-align:middle}.n3VNCb{width:100%;background-image:linear-gradient(45deg,#2c2c2d 25%,rgba(44,44,45,0) 25%,rgba(44,44,45,0) 75%,#2c2c2d 75%,#2c2c2d),linear-gradient(45deg,#2c2c2d 25%,rgba(44,44,45,0) 25%,rgba(44,44,45,0) 75%,#2c2c2d 75%,#2c2c2d);background-color:#232425;background-position:0 0,10px 10px;background-size:21px 21px}
        .auto-style13 {
            text-decoration: none;
            color: #2962ff;
        }
        .auto-style14 {
            width: 291.4px;
            height: 509px;
            border-style: none;
            border-color: inherit;
            border-width: medium;
            margin: 0px;
        }
 p.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:0in;
	line-height:107%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManger1" runat="server"></asp:ScriptManager>
     <br />
    <table class="auto-style1" style="height: 415px; width: 105%; font-family: 'Kristen ITC';">
        <tr>
            <td class="auto-style12">
                 <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" >
         <ContentTemplate>
             <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/adrotator.xml" OnAdCreated="AdRotator1_AdCreated" Width="1000" Height="300"/>
             &nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Timer ID="Timer1" runat="server" Interval="3000"></asp:Timer>
            
             <p class="MsoNormal" style="font-family: 'Bauhaus 93'; font-size: x-large;">
                 Jewellery is a unqiue product category,which elicts strong emotion and potential buyers.<br /> In our warm and comfortable showroom, you will find an incredible selection of fine jewelry.<span style="font-size:8.0pt;line-height:107%"><p></p>
                 </span>
             </p>
         </ContentTemplate>
      </asp:UpdatePanel>
            </td>
            <td style="font-weight: lighter; font-size: xx-large; color: #000000; font-style: oblique; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;"><a aria-label="Visit Clipart.Email" class="auto-style13" data-ved="0CAIQjRxqFwoTCJDZs6CWnegCFQAAAAAdAAAAABAD" href="https://www.google.com/url?sa=i&amp;url=https%3A%2F%2Fwww.clipart.email%2Fclipart%2Fjewellery-design-clipart-74308.html&amp;psig=AOvVaw1T05oV7S4yrdn9pjTt80iR&amp;ust=1584385520869000&amp;source=images&amp;cd=vfe&amp;ved=0CAIQjRxqFwoTCJDZs6CWnegCFQAAAAAdAAAAABAD" jsaction="focus:kvVbVb; mousedown:kvVbVb; touchstart:kvVbVb;" rel="noopener" rlhc="1" role="link" tabindex="0" target="_blank">
                <img alt="Image result for lady with jewellery images" class="auto-style14" data-noaft="1" jsaction="load:XAeZkd;" jsname="HiaYvf" src="https://cdn.clipart.email/616d5a01c155a7b2c6b6003e9e5901cf_gold-jewellery-clipart-black-and-white-clipartxtras_916-1600.png" /></a></td>
        </tr>
    </table>
    


       

</asp:Content>
