<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="user_Registration.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body
         {
            background-image:url("images/ad2.jpg");
            background-size:cover;
            background-position:center;
            background-repeat: no-repeat;
            


        }
        .auto-style1 {
            width: 203px;
        }
        .auto-style2 {
            width: 203px;
            height: 73px;
        }
        .auto-style3 {
            height: 73px;
            width: 349px;
        }
        .auto-style4 {
            width: 349px;
        }
        .auto-style5 {
            width: 203px;
            height: 36px;
        }
        .auto-style6 {
            width: 349px;
            height: 36px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 555px; width: 1032px">
        &nbsp;<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:HiddenField ID ="hfuserid" runat="server" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label1" runat="server" Text="First Name" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
            </td>
            <td colspan="2" class="auto-style4">
                <asp:TextBox ID="txtfirstname" runat="server" Height="23px" Width="144px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfirstname" ErrorMessage="*Enter Your FirstName" Font-Bold="True" Font-Size="Large" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="Last Name" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
            </td>
            <td colspan="2" class="auto-style4">
                <asp:TextBox ID="txtlastname" runat="server" Height="23px" Width="143px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlastname" ErrorMessage="*Enter Your LastName" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td class="auto-style5">
                <asp:Label ID="Label3" runat="server" Text="Contact" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
            </td>
            <td colspan="2" class="auto-style6">
                <asp:TextBox ID="txtcontact" runat="server" Height="23px" Width="143px"></asp:TextBox>

                &nbsp;

                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtcontact" Display="Dynamic" ErrorMessage="*Only 10 Digit" Font-Bold="True" Font-Size="Large" ForeColor="Red" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtcontact" ErrorMessage="*Enter 10 Digit" Font-Bold="True" Font-Size="Large" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

            </td>
        </tr>
          <tr>
            <td class="auto-style2">
                <asp:Label ID="Label19" runat="server" Text="Emailid" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
            </td>
            <td colspan="2" class="auto-style3" style="font-size: large">
                <asp:TextBox ID="txtbox" runat="server" OnTextChanged="txtbox1_TextChanged" Height="23px" Width="143px"></asp:TextBox>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtbox" Display="Dynamic" ErrorMessage="*Enter Proper Emailid" Font-Bold="True" Font-Size="Large" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtbox" ErrorMessage="*Enter Proper Emailid" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>

                <br />
&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send Activation Code" Font-Bold="True" Font-Size="Small" Font-Strikeout="False" ForeColor="Black" Height="33px" style="margin-left: 0px" Width="150px" />
                &nbsp;&nbsp;
                OTP(SecuritPurpose)</td>
        </tr>
         <tr>
            <td class="auto-style1">
                <asp:Label ID="Label4" runat="server" Text="Gender" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
            </td>
            <td colspan="2" class="auto-style4">
                <asp:DropDownList ID="ddlgender" runat="server" Height="71px" Width="67px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlgender" ErrorMessage="*Enter Your Gender" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td class="auto-style1">
                <asp:Label ID="Label5" runat="server" Text="Address" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
            </td>
            <td colspan="2" class="auto-style4">
                <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Height="40px" Width="151px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtaddress" ErrorMessage="*Enter Your Address" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <hr />
            </td>
        </tr>
         <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td colspan="2" class="auto-style4">
                &nbsp;</td>
        </tr>
         <tr>
            <td class="auto-style1">
                <asp:Label ID="Label7" runat="server" Text="Password" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
            </td>
            <td colspan="2" class="auto-style4">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Height="23px" Width="143px"></asp:TextBox>
                <asp:Label ID="Label10" runat="server" Text="*" ForeColor="Red"></asp:Label>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpassword" ErrorMessage="Enter Your 8 Character Password " Font-Bold="True" Font-Size="Large" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'@#.\s]{8}$"></asp:RegularExpressionValidator>
&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtpassword" Display="Dynamic" ErrorMessage="*Enter Your 8 Character Password" Font-Bold="True" Font-Size="Large" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label9" runat="server" Text="ConfirmedPassword" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
            </td>
            <td colspan="2" class="auto-style4">
                <asp:TextBox ID="txtconfirmpassword" runat="server" TextMode="Password" Height="23px" Width="144px"></asp:TextBox>
                <asp:Label ID="Label11" runat="server" Text="*" ForeColor="Red"></asp:Label>

                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtconfirmpassword" Display="Dynamic" ErrorMessage="Password Does Not Match" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:CompareValidator>
&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtconfirmpassword" ErrorMessage="*Password Does Not Match" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
        </tr>
         <tr>
           <td class="auto-style1"></td>
             <td colspan="2" class="auto-style4">
                 <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" Height="29px" Width="82px" />
             </td>
        </tr>
           <tr>
           <td class="auto-style1"></td>
             <td colspan="2" class="auto-style4">
                 <asp:Label ID="lblsuccessmessage" runat="server" ForeColor="Black" Font-Bold="True"></asp:Label>
             </td>
        </tr>
         <tr>
           <td class="auto-style1"></td>
             <td colspan="2" class="auto-style4">
                 <asp:Label ID="lblerrormessage" runat="server" Text="" Forecolor="Red"></asp:Label>
             </td>
        </tr>



    </table>
    </div>
    </form>
</body>
</html>
