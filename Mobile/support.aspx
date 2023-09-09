<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="support.aspx.vb" Inherits="Mobile_support" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
        <div class="header">
            <div style="margin-left: 0px; margin-top: 0px;">
                <div style="color:#fff;">
                <a href="<%= resolveClientUrl("~") %>Mobile/setting.aspx"><div class="iconSetting" style="background-image:url('../Styles/Images/account/backIcon.png');"><span class="back">Back</span></div></a>
                <%--<a href="./"></a>--%>
                <div class="titleOnstore"><h3>Support</h3></div>
                
                </div>
            </div>
            
        </div>
    
        <!--start of body -->
        <div class="body">
            <!-- start of bodyMainContent -->
            <div class="bodyMainContentSupport">
                <div>
                    <h2>Hello Sisca</h2>
                    <p>Our friendly customer care representative will help you answer any questions regrading "nusajaya apps". Post any information or problem that you find to share it</p>
                </div>
                <div>
                    
                </div>
            </div><!-- end of bodyMainContent -->

            <!-- start menuMainContent point -->
            <div class="menuMainContent point">
                <div class="rowParagraph">
                    <div class="colParagraph-3 ">
                        <a href="tel:+6285883049063">
                        <div class="callUsIcon" ></div>
                        <div class="iconTitle">Call Us</div>
                        </a>
                    </div>
                    <div class="colParagraph-3">
                        <a href="mailto:alexander@nusajaya.id">
                        <div class="mailUsIcon" ></div>
                        <div class="iconTitle">Mail Us</div>
                        </a>
                    </div>
                    <div class="colParagraph-3">
                        <div class="startChatIcon" ></div>
                        <div class="iconTitle">Start Chat</div>
                    </div>
                </div>
            </div><!-- end menuMainContent point -->

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

