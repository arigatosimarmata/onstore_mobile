<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="account.aspx.vb" Inherits="Mobile_account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
         
        <div class="header">
            <div style="margin-left: 0px; margin-top: 0px;">
                <div style="color:#fff;">
                <a href="<%= resolveClientUrl("~") %>Mobile/setting.aspx"><img class="iconSetting" src="../Styles/Images/iconSetting.png" /></a>
                <div class="titleOnstore"><h3>Account</h3></div>
                </div>
            </div>
            
        </div>
    
        <div class="body">
            <div class="bodyHeaderAccount" style="background-image:url('../Styles/Images/account/account_backgroundProfile.png');">
                <div class="bodyHeaderAccountTop">
                    <img class="profilPicture" src="../Styles/Images/account/account_profilPicture.png" /> 
                    <div class="profilName">Sisca Cudrow</div>
                    <div class="profilGrade">Loyal member, 2 years</div>
                    <div class="profilStatus">"Semangat kerja, Semangat berdoa"</div>
                </div>
<%--                <div class="bodyHeaderAccountTop">
                       
                </div>--%>

                <div class="bodyHeaderAccountBottom">
                    <a href="<%= resolveClientUrl("~") %>Mobile/point.aspx"><div class="trophyPoints"><span class="titleBottomMenuPoint">Points</span><span class="pointBottomMenu">30.000</span></div></a>
                    <a href="<%= resolveClientUrl("~") %>Mobile/wallet.aspx"><div class="walletPoints"><span class="titleBottomMenuPoint">Wallet</span><span class="walletBottomMenu">Rp 130.000</span></div></a>
                    <%--<a href=""><i class="fa fa-trophy"><span style="font-size:10px; position:absolute; color:#000;">Points</span><span style="color:#000; font-size:10px; padding-bottom:5px;">30.000</span></i></a>                
                    <a href=""><div style="margin-left: 30px;"><i class="fa fa-folder-open-o"><span style="font-size:10px; position:absolute; color:#000;">Wallet</span><span style="color:#000; font-size:10px;">Rp130.000</span></i></div></a>--%>
                </div>
            </div>

            <!--start menuMainContent -->
            <div class="menuMainContent">
                <div class="colParagraph-3">
                    <span class="evoucherMenu activeMenu">E-VOUCHER</span>
                </div>
                <div class="colParagraph-3">
                    <span class="savethreadMenu">SAVE THREAD</span>
                </div>
                <div class="colParagraph-3">
                    <span class="sellitemMenu">SELL ITEM</span>
                </div>
            </div><!--end menuMainContent -->

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

            <!-- start bodyMainContent -->
            <div class="bodyMainContent">
                <!-- start evoucher content -->
                <div class="evoucherMainContent">            
                    <div class="rowParagraph">
                        <div class="colParagraph-5">
                            <img class="paragraphImage" src="../Styles/Images/account/account_voucherMetro.png"/>
                        </div>                    
                        <div class="colParagraph-5">
                            <div class="paragraphTitle">Metro Store</div>
                            <div class="paragraphTitle">Voucher IDR 100.000</div>
                            <div class="paragraphSubTitle">Expires Date : 9 June 2017</div>
                            <div class="paragraphContent">Consectetur adipiscin sed do eiusmod loream sotrosrea molrea</div>
                        </div>                    
                    </div>

                    <div class="rowParagraph">
                        <div class="colParagraph-5">
                            <img class="paragraphImage" src="../Styles/Images/account/account_voucherBenares.png" />
                        </div>
                        <div class="colParagraph-5">
                            <div class="paragraphTitle">Benares Resto & Bar</div>
                            <div class="paragraphTitle">Gift Voucher IDR 50.000</div>
                            <div class="paragraphSubTitle">Expire Date : 2 August 2017</div>
                            <div class="paragrafContent">Dapatkan diskon menarik di mall favorit anda</div>
                        </div>                    
                    </div>

                    <div class="rowParagraph">
                        <div class="colParagraph-5">
                            <img class="paragraphImage" src="../Styles/Images/account/account_voucherMetro.png" />
                        </div>
                        <div class="colParagraph-5">
                            <div class="paragraphTitle">Digital TV Program</div>
                            <div class="paragrafContent">Beragam channel TV program dengan acara menarik, seru untuk disaksikan</div>
                        </div>                    
                    </div>
                
                    <div class="rowParagraph">
                        <div class="colParagraph-5">
                            <img class="paragraphImage" src="../Styles/Images/payment2.png" />
                        </div>
                        <div class="colParagraph-5">
                            <div class="paragraphTitle">Monthly Payment</div>
                            <div class="paragrafContent">Pembayaran iuran PLN, BPJS, pulsa, dan asuransi</div>
                        </div>                    
                    </div>

                    <div class="rowParagraph">
                        <div class="colParagraph-5">
                            <img class="paragraphImage" src="../Styles/Images/game2.png" />
                        </div>
                        <div class="colParagraph-5">
                            <div class="paragraphTitle">Voucher Game Online</div>
                            <div class="paragrafContent">Jadikan permainan anda lebih menarik</div>
                        </div>                    
                    </div>
                </div><!-- end of evoucher content-->

                <!-- start savethreadMainContent content -->
                <div class="savethreadMainContent">            
                    <div class="rowParagraph">
                        <div class="colParagraph-2">
                            <img class="paragraphImage" src="../Styles/Images/account/account_savethreadPhoto1.png"/>
                        </div>                    
                        <div class="colParagraph-5">
                            <div class="paragraphTitle">Metro Store</div>
                            <div class="paragraphTitle">Voucher IDR 100.000</div>
                            <div class="paragraphSubTitle">Expires Date : 9 June 2017</div>
                            <div class="paragraphContent">Consectetur adipiscin sed do eiusmod loream sotrosrea molrea</div>
                        </div>                    
                    </div>

                    <div class="rowParagraph">
                        <div class="colParagraph-5">
                            <img class="paragraphImage" src="../Styles/Images/account/account_voucherBenares.png" />
                        </div>
                        <div class="colParagraph-5">
                            <div class="paragraphTitle">Benares Resto & Bar</div>
                            <div class="paragraphTitle">Gift Voucher IDR 50.000</div>
                            <div class="paragraphSubTitle">Expire Date : 2 August 2017</div>
                            <div class="paragrafContent">Dapatkan diskon menarik di mall favorit anda</div>
                        </div>                    
                    </div>

                    <div class="rowParagraph">
                        <div class="colParagraph-5">
                            <img class="paragraphImage" src="../Styles/Images/account/account_voucherMetro.png" />
                        </div>
                        <div class="colParagraph-5">
                            <div class="paragraphTitle">Digital TV Program</div>
                            <div class="paragrafContent">Beragam channel TV program dengan acara menarik, seru untuk disaksikan</div>
                        </div>                    
                    </div>
                
                    <div class="rowParagraph">
                        <div class="colParagraph-5">
                            <img class="paragraphImage" src="../Styles/Images/payment2.png" />
                        </div>
                        <div class="colParagraph-5">
                            <div class="paragraphTitle">Monthly Payment</div>
                            <div class="paragrafContent">Pembayaran iuran PLN, BPJS, pulsa, dan asuransi</div>
                        </div>                    
                    </div>

                    <div class="rowParagraph">
                        <div class="colParagraph-5">
                            <img class="paragraphImage" src="../Styles/Images/game2.png" />
                        </div>
                        <div class="colParagraph-5">
                            <div class="paragraphTitle">Voucher Game Online</div>
                            <div class="paragrafContent">Jadikan permainan anda lebih menarik</div>
                        </div>                    
                    </div>
                </div><!-- end of savethreadMainContent content-->

                <!-- start sellitemMainContent content -->
                <div class="sellitemMainContent">            
                    <div class="rowParagraph">
                        <div class="colParagraph-5">
                            <img class="paragraphImage" src="../Styles/Images/account/account_voucherMetro.png"/>
                        </div>                    
                        <div class="colParagraph-5">
                            <div class="paragraphTitle">Metro Store</div>
                            <div class="paragraphTitle">Voucher IDR 100.000</div>
                            <div class="paragraphSubTitle">Expires Date : 9 June 2017</div>
                            <div class="paragraphContent">Consectetur adipiscin sed do eiusmod loream sotrosrea molrea</div>
                        </div>                    
                    </div>

                    <div class="rowParagraph">
                        <div class="colParagraph-5">
                            <img class="paragraphImage" src="../Styles/Images/account/account_voucherBenares.png" />
                        </div>
                        <div class="colParagraph-5">
                            <div class="paragraphTitle">Benares Resto & Bar</div>
                            <div class="paragraphTitle">Gift Voucher IDR 50.000</div>
                            <div class="paragraphSubTitle">Expire Date : 2 August 2017</div>
                            <div class="paragrafContent">Dapatkan diskon menarik di mall favorit anda</div>
                        </div>                    
                    </div>

                    <div class="rowParagraph">
                        <div class="colParagraph-5">
                            <img class="paragraphImage" src="../Styles/Images/account/account_voucherMetro.png" />
                        </div>
                        <div class="colParagraph-5">
                            <div class="paragraphTitle">Digital TV Program</div>
                            <div class="paragrafContent">Beragam channel TV program dengan acara menarik, seru untuk disaksikan</div>
                        </div>                    
                    </div>
                
                    <div class="rowParagraph">
                        <div class="colParagraph-5">
                            <img class="paragraphImage" src="../Styles/Images/payment2.png" />
                        </div>
                        <div class="colParagraph-5">
                            <div class="paragraphTitle">Monthly Payment</div>
                            <div class="paragrafContent">Pembayaran iuran PLN, BPJS, pulsa, dan asuransi</div>
                        </div>                    
                    </div>

                    <div class="rowParagraph">
                        <div class="colParagraph-5">
                            <img class="paragraphImage" src="../Styles/Images/game2.png" />
                        </div>
                        <div class="colParagraph-5">
                            <div class="paragraphTitle">Voucher Game Online</div>
                            <div class="paragrafContent">Jadikan permainan anda lebih menarik</div>
                        </div>                    
                    </div>
                </div><!-- end of sellitemMainContent content-->
            </div><!-- end bodyMainContent -->
        </div><!-- end of body -->

        <!-- start of footer -->
        <div class="footer">
            <a href="<%= resolveClientUrl("~") %>Mobile/home.aspx"><i class="fa fa-home"></i><div style="clear:both; font-size:10px; color:#000;">Timeline</div></a>
            <a href="<%= resolveClientUrl("~") %>Mobile/shop.aspx"><i class="fa fa-shopping-cart"></i><div style="clear:both; font-size:10px; color:#000;">Shop</div></a> 
            <a href="#" id="menuPopup" style="z-index:9999;"><i class="fa fa-plus-circle"></i></a> 
            <a href="<%= resolveClientUrl("~") %>Mobile/chat.aspx"><i class="fa fa-globe"></i><div style="clear:both; font-size:10px; color:#000;">Chat</div></a>
            <a href="<%= resolveClientUrl("~") %>Mobile/account.aspx"><i class="fa fa-user"></i><div style="clear:both; font-size:10px; color:#000;">Account</div></a> 
        </div><!-- end of footer -->

        <!-- start of myModal -->
        <div id="myModal" class="modal">
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
        </div><!-- end of myModal -->

    </div>
    
    <script type="text/javascript">
        function getProfil() {
            
        }

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

