<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="settingSharing.aspx.vb" Inherits="Mobile_settingSharing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
        <div class="header">
            <div style="margin-left: 0px; margin-top: 0px;">
                <div style="color:#fff;">
                <a href="<%= resolveClientUrl("~") %>Mobile/setting.aspx"><div class="iconSetting" style="background-image:url('../Styles/Images/account/backIcon.png');"><span class="back">Back</span></div></a>
                <%--<a href="./"></a>--%>
                <div class="titleOnstore"><h3>Tell a Friends</h3></div>
                
                </div>
            </div>
            
        </div>
    
        <!--start of body -->
        <div class="body">
            <!-- start of bodyMainContent -->
            <div class="bodyMainContentSharing">
                <div>
                    <img class="iconLogoSharing" src="../Styles/Images/account/aboutLogo.png" />
                </div>
                <div>
                    <p>check out our community app for your smartphone. Download it today from <%="<a href='http://mycommunity.com'>http://mycommunity.com</a>"%> or app store/play store</p>
                </div>
            </div><!-- end of bodyMainContent -->
        </div><!--end of body-->
                
        <!-- start of footer-->
        <div class="footerSetting">
            <div class="footerSharing"><input type="button" value="Post via twitter" /></div>
        </div><!-- end of footer-->
                
</div><%--end of container--%>
    
    <script type="text/javascript">
        $(document).ready(function () {



        });
    </script>

</asp:Content>

