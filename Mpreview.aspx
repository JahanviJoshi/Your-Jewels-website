<%@ Page Title="" Language="C#" MasterPageFile="~/mhome.Master" AutoEventWireup="true" CodeBehind="Mpreview.aspx.cs" Inherits="user_Registration.Mpreview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <script src="jquery/jquery-3.2.1.min.js"> </script>
        <script>
            $(document).ready(function () {
                $("#File1").change(function () {
                    var previewimage = $("#showimage");
                    previewimage.html("");
                    $($(this)[0].files).each(function () {
                        var file = $(this);
                        var reader = new FileReader();
                        reader.onload = function (e) {
                            var img = $("<img/>");
                            img.attr("style", "height:150px;width: 150px;");
                            img.attr("src", e.target.result);
                            previewimage.append(img);
                        }
                        reader.readAsDataURL(file[0]);
                    });

                });
            });


    </script> 
    <div style="font-size: x-large; font-weight: bold; color: #000000">       
    Upload Images
    <input type="file" multiple="multiple" name="File1" id="File1" accept="image/*" />
    <br /><br />
    <div id="showimage">
    </div>
    <hr style="height: -12px"/>  
    <asp:Button ID="Button1" runat="server" Text="Upload and Save" OnClick="Button1_Click" BackColor="#FFCC66"/>

    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
</asp:Content>
