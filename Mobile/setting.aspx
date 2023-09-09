<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="setting.aspx.vb" Inherits="Mobile_setting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
        <div class="header">
            <div style="margin-left: 0px; margin-top: 0px;">
                <div style="color:#fff;">
                <a href="<%= resolveClientUrl("~") %>Mobile/home.aspx"><div class="iconSetting" style="background-image:url('../Styles/Images/account/backIcon.png');"><span class="back">Back</span></div></a>
                <%--<a href="./"></a>--%>
                <div class="titleOnstore"><h3>Settings</h3></div>
                
                </div>
            </div>
            
        </div>
    
        <!--start of body -->
        <div class="body">
            <!-- start of bodyMainContent -->
            <div class="bodyMainContentSetting">
                <div class="rowParagraph">
                    <div class="colParagraph-6"><div class="menuSettingFont">Version 0.0.1</div></div>
                    <div class="colParagraph-6"><div class="menuSettingFont">Notification previews</div></div>
                    <div class="colParagraph-2 right"><div class="menuSettingFont">Yes / No</div></div>
                    <div class="colParagraph-6"><div class="menuSettingFont">Notification Sound</div>
                    <a href="<%= resolveClientUrl("~") %>Mobile/settingAccount.aspx"><div class="colParagraph-6"><div class="menuSettingFont">Account</div></a>
                    <a href="<%= resolveClientUrl("~") %>Mobile/settingSharing.aspx"><div class="colParagraph-6"><div class="menuSettingFont">Sharing</div></a>
                    <div class="colParagraph-6"><div class="menuSettingFont">Clear chaced data</div>
                    <div class="colParagraph-6"><div class="menuSettingFont">Shop</div>
                    <a href="<%= resolveClientUrl("~") %>Mobile/about.aspx"><div class="colParagraph-6"><div class="menuSettingFont">About</div></a>
                    <a href="<%= resolveClientUrl("~") %>Mobile/support.aspx"><div class="colParagraph-6"><div class="menuSettingFont">Support</div></a>
                    <div class="colParagraph-6"><div class="menuSettingFont">Logout</div>
                </div>
            </div><!-- end of bodyMainContent -->
        </div><!--end of body-->
                
        <!-- start of footer-->
        <div class="footerSetting">
            <div class="footerLogo"><img class="footerLogoSetting" src="../Styles/Images/account/nusajayaLogo.png" /></div>
        </div><!-- end of footer-->
                
</div><%--end of container--%>
    
    <script type="text/javascript">
        $(document).ready(function () {

            

        });
    </script>

</asp:Content>

