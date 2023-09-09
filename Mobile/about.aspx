<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="about.aspx.vb" Inherits="Mobile_about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
        <div class="header">
            <div style="margin-left: 0px; margin-top: 0px;">
                <div style="color:#fff;">
                <a href="<%= resolveClientUrl("~") %>Mobile/setting.aspx"><div class="iconSetting" style="background-image:url('../Styles/Images/account/backIcon.png');"><span class="back">Back</span></div></a>
                <%--<a href="./"></a>--%>
                <div class="titleOnstore"><h3>About Us</h3></div>
                
                </div>
            </div>
            
        </div>
    
        <!--start of body -->
        <div class="body">
            <!-- start of bodyMainContent -->
            <div class="bodyMainContentAbout">
                <div>
                    <img class="iconLogoSharing" src="../Styles/Images/account/aboutLogo.png" />
                </div>

                <div class="contentAbout">
                    <p>Mauris tristique orci et sagittis sagittis. Etiam nunc risus, eleifend sit amet eros non, finibus egestas sapien. Donec ullamcorper tellus ac eleifend finibus. Maecenas vitae ante vel enim feugiat finibus vel at dolor. Vivamus tristique ante eu massa cursus, quis sagittis arcu sagittis. Integer eget nisi nulla. Proin sit amet orci sagittis, dignissim risus consectetur, imperdiet urna.</p>
                </div>
            </div><!-- end of bodyMainContent -->
        </div><!--end of body-->
                
        <!-- start of footer-->
        <div class="footerSupport">
            <div class="footerLogo"><img class="footerLogoSupport" src="../Styles/Images/account/nusajayaLogo.png" /></div>
        </div><!-- end of footer-->
                
</div><%--end of container--%>
    
    <script type="text/javascript">
        $(document).ready(function () {



        });
    </script>
</asp:Content>

