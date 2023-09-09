<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="Login_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<link href="../Styles/css/welcomeScreen.css" rel="stylesheet" type="text/css" />
<body>
    <div id="loading-wrapper">
      <img class="imageLoadScreen" src="../Styles/Images/account/nusajayaLogo.png" />
      <div id="loading-text">Checking For Update...</div>
      <div id="loading-content"></div>
    </div>

    <div style="display:none;" id="myDiv">
        <input type="text" id="username" placeholder="username/email" />
        <input type="password" id="password" placeholder="username/email" />
    </div>
</body>
<script>
    var myVar;

    function myFunction() {
        myVar = setTimeout(showPage, 7000);
    }

    function showPage() {
      document.getElementById("loading-wrapper").style.display = "none";
      document.getElementById("myDiv").style.display = "block";
    }
</script>
    
</asp:Content>


