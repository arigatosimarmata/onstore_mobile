<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="settingAccount.aspx.vb" Inherits="Mobile_settingAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
         
        <div class="header">
            <div style="margin-left: 0px; margin-top: 0px;">
                <div style="color:#fff;">
                <a href="<%= resolveClientUrl("~") %>Mobile/setting.aspx"><div class="iconSetting" style="background-image:url('../Styles/Images/account/backIcon.png');"><span class="back">Settings</span></div></a>
                <div class="titleOnstore"><h3>Account</h3></div>
                </div>
            </div>
            
        </div>
    
        <div class="body">
            <div class="bodyHeaderSettingAccount" style="background-image:url('../Styles/Images/account/account_backgroundProfile.png');">
                <div class="bodyHeaderAccountTop">
                    <img class="profilPicture" src="../Styles/Images/account/account_profilPicture.png" /> 
                </div>
<%--                <div class="bodyHeaderAccountTop">
                       
                </div>--%>

                <div class="bodyHeaderAccountBottom">
                    <div class="settingAccountCover"><input type="radio" /><span class="titleBottomMenuPoint">Set Cover</span></div>
                    <div class="settingAccountPicture"><input type="radio" /><span class="titleBottomMenuPoint">Set Picture</span></div>
                </div>
            </div>

            <!-- start bodyMainContent -->
            <div class="bodyMainContent">
                <!-- start evoucher content -->
                <div class="evoucherMainContent">            
                    <div class="rowParagraph">                 
                        <div class="colParagraph-6">
                            <div class="paragraphTitle">Siska Cudrow</div>
                            <div class="paragraphTitle">sisca@gmail.com</div>
                            <div class="paragraphTitle">+628221 2442 1221</div>
                        </div>                    
                    </div>
                    
                </div><!-- end of evoucher content-->

            </div><!-- end bodyMainContent -->
        </div><!-- end of body -->

    </div>
    
    <script type="text/javascript">
        $(document).ready(function () {

            $(".evoucherMainContent").show();
            $(".savethreadMainContent").hide();
            $(".sellitemMainContent").hide();

            $(".evoucherMenu").unbind("click").click(function () {
                $(this).addClass('activeMenu')
                $(".savethreadMenu").removeClass('activeMenu')
                $(".sellitemMenu").removeClass('activeMenu')

                $(".evoucherMainContent").show();
                $(".savethreadMainContent").hide();
                $(".sellitemMainContent").hide();
            });

            $(".savethreadMenu").unbind("click").click(function () {
                $(".savethreadMenu").addClass('activeMenu')
                $(".evoucherMenu").removeClass('activeMenu')
                $(".sellitemMenu").removeClass('activeMenu')

                $(".evoucherMainContent").hide();
                $(".savethreadMainContent").show();
                $(".sellitemMainContent").hide();
            });

            $(".sellitemMenu").unbind("click").click(function () {
                $(this).addClass('activeMenu')
                $(".savethreadMenu").removeClass('activeMenu')
                $(".evoucherMenu").removeClass('activeMenu')

                $(".evoucherMainContent").hide();
                $(".savethreadMainContent").hide();
                $(".sellitemMainContent").show();
            });

            $("#menuPopup").unbind("click").click(function () {
                $("#myModal").show();
                initClose();
            });
        });

        function initClose() {
            $(".close").unbind("click").click(function () {
                $("#myModal").hide();
            });
        }
    </script>
</asp:Content>

