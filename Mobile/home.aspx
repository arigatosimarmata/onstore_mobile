<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="home.aspx.vb" Inherits="Mobile_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<link href="../Styles/css/welcomeScreen.css" rel="stylesheet" type="text/css" />

    <div id="loading-wrapper">
      <img class="imageLoadScreen" src="../Styles/Images/account/nusajayaLogo.png" />
      <div id="loading-text">Checking For Update...</div>
      <div id="loading-content"></div>
    </div>

<div style="display:none;" id="container" class="container"  >
        <div class="header">
            <div style="margin-left: 0px; margin-top: 0px;">
                <div style="color:#fff;">
                <a href="<%= resolveClientUrl("~") %>Mobile/setting.aspx"><img class="iconSetting" src="../Styles/Images/iconSetting.png" /></a>
                <div class="logoOnstore" style="background-image:url('../Styles/Images/logo_onMobile2.png')">
                </div>
                </div>
            </div>
        </div>
        
        <!--start body -->
        <div class="body">
            <div class="bodyHeader">
                <div class="bodyHeaderTimelineTop">
                    <a href="<%= resolveClientUrl("~") %>Mobile/point.aspx"><div class="trophyTimelineIcon"><span class="titleTimelineTop">Points</span><span class="titleTimelineBottom">30.000</span></div></a>
                    <a href="<%= resolveClientUrl("~") %>Mobile/post_thread.aspx"><div class="postthreadTimelineIcon"><span class="titleTimelineTop">Post New Thread</span></div></a>
                    <a href="<%= resolveClientUrl("~") %>Mobile/wallet.aspx"><div class="walletTimelineIcon"><span class="titleTimelineTop">Wallet</span><span class="titleTimelineBottom">Rp 130.000</span></div></a>
<%--                    <a href="<%= resolveClientUrl("~") %>Mobile/point.aspx"><i class="fa fa-trophy"><span style="font-size:10px; position:absolute; color:#000;">Points</span><span style="color:#000; font-size:10px; padding-bottom:5px;">30.000</span></i></a>--%>
<%--                    <a href="<%= resolveClientUrl("~") %>Mobile/post_thread.aspx"><div class="postthreadTimelineIcon"><i class="fa fa-pencil-square-o"><span style="font-size:10px; position:absolute; max-width:50px; color:#000;">Post New Thread</span></i></div></a>--%>
<%--                    <a href="<%= resolveClientUrl("~") %>Mobile/wallet.aspx"><div style="margin-left: 30px;"><i class="fa fa-folder-open-o"><span style="font-size:10px; position:absolute; color:#000;">Wallet</span><span style="color:#000; font-size:10px;">Rp130.000</span></i></div></a>--%>
                </div>
            </div>

            <div style="padding-left:10px;padding-right:10px;margin-top: -10px;">
                <div class="searchContainer">
                    <div class="searchContainerButton">
                        <input id="btnSearch" type="button" value="">
                    </div>
                    <div class="searchContainerText">
                        <input id="txtSearch" type="text" placeholder="Cari Produk, Kategori, Merk, atau Vendor">
                    </div>
                </div>
            </div>

            <!--start bodyMainContent -->
            <div class="bodyMainContent">
                <div style="height:300px; width:100%; margin-left:10px;">
                <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FNusajaya-1463625623726540%2F&tabs=timeline&height=300&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId=1495595307151734" height="100%" style="width:100% !important;border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
				<br />
                <a class="link" href="https://www.facebook.com/Nusajaya-1463625623726540/	" target="_blank">GET INSIDE</a>
				</div>
            </div><!--end of bodyMainContent -->
        </div><!--end of body -->

        <div class="footer">
            <a href="<%= resolveClientUrl("~") %>Mobile/home.aspx"><i class="fa fa-home"></i><div style="clear:both; font-size:10px; color:#000;">Timeline</div></a>
            <a href="<%= resolveClientUrl("~") %>Mobile/shop.aspx"><i class="fa fa-shopping-cart"></i><div style="clear:both; font-size:10px; color:#000;">Shop</div></a> 
            <a href="#" id="menuPopup" style="z-index:9999;"><i class="fa fa-plus-circle"></i></a> 
            <a href="<%= resolveClientUrl("~") %>Mobile/chat.aspx"><i class="fa fa-globe"></i><div style="clear:both; font-size:10px; color:#000;">Chat</div></a>
            <a href="<%= resolveClientUrl("~") %>Mobile/account.aspx"><i class="fa fa-user"></i><div style="clear:both; font-size:10px; color:#000;">Account</div></a> 
        </div>

        <!--start myModal -->
        <div id="myModal" class="modal" style="display:none;">
              <!-- Modal content -->
              <div class="modal-content">
                <span class="close">&times;</span>
                <div class="rowParagraph">
                    <div class="colParagraph-4">
                        <div class="paragraphTitlePlus">Traveling Ticket</div>
                        <div class="paragraphContentPlus">Dapatkan harga diskon 15% selama bulan ramadhan</div>
                    </div>
                    <div class="colParagraph-6">
                        <img class="paragraphImage" src="../Styles/Images/travel2.png"/>
                    </div>
                </div>

                <div class="rowParagraph">
                    <div class="colParagraph-4">
                        <div class="paragraphTitlePlus">Shopping Mall</div>
                        <div class="paragraphContentPlus">Dapatkan diskon menarik di mall favorit anda</div>
                    </div>
                    <div class="colParagraph-6">
                        <img class="paragraphImage" src="../Styles/Images/shop2.png" />
                    </div>
                </div>

                <div class="rowParagraph">
                    <div class="colParagraph-4">
                        <div class="paragraphTitlePlus">Digital TV Program</div>
                        <div class="paragraphContentPlus">Beragam channel TV program dengan acara menarik, seru untuk disaksikan</div>
                    </div>
                    <div class="colParagraph-6">
                        <img class="paragraphImage" src="../Styles/Images/tvprogram2.png" />
                    </div>
                </div>
                
                <div class="rowParagraph">
                    <div class="colParagraph-4">
                        <div class="paragraphTitlePlus">Monthly Payment</div>
                        <div class="paragraphContentPlus">Pembayaran iuran PLN, BPJS, pulsa, dan asuransi</div>
                    </div>
                    <div class="colParagraph-6">
                        <img class="paragraphImage" src="../Styles/Images/payment2.png" />
                    </div>
                </div>

                <div class="rowParagraph">
                    <div class="colParagraph-4">
                        <div class="paragraphTitlePlus">Voucher Game Online</div>
                        <div class="paragrafContent">Jadikan permainan anda lebih menarik</div>
                    </div>
                    <div class="colParagraph-6">
                        <img class="paragraphImage" src="../Styles/Images/game2.png" />
                    </div>
                </div>
              </div><!--end modalcontent -->
        </div><!--end of myModal -->

</div><!--end of container -->
    <script type="text/javascript">
        var myVar;
        function myFunction() {
            myVar = setTimeout(showPage, 3000);
        }

        function showPage() {
            document.getElementById("loading-wrapper").style.display = "none";
            document.getElementById("container").style.display = "block";
        }
    </script>

    <%--<script type="text/javascript">
        $(document).ready(function () {
            function initClose(){
                $(".close").unbind("click").click(function(){
                    $("#myModal").hide();
                });
            }
            $("#menuPopup").unbind("click").click(function () {
                $("#myModal").show();
                initClose();
            });

        });
    </script>--%>

</asp:Content>

