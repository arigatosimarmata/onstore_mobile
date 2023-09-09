<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="point.aspx.vb" Inherits="Mobile_point" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
        <div class="header">
            <div style="margin-left: 0px; margin-top: 0px;">
                <div style="color:#fff;">
                <a href="<%= resolveClientUrl("~") %>Mobile/account.aspx"><div class="iconSetting" style="background-image:url('../Styles/Images/account/backIcon.png');"><span class="back">Back</span></div></a>
                <%--<a href="./"></a>--%>
                <div class="titleOnstore"><h3>Point</h3></div>
                
                </div>
            </div>
            
        </div>
    
        <div class="body">
            <div class="bodyHeaderAccountPoint" style="background-image:url('../Styles/Images/account/account_backgroundProfile.png');">
                <div class="bodyHeaderAccountTop">
                    <img class="profilPicture" src="../Styles/Images/account/account_profilPicture.png" /> 
                    <div class="profilName">Sisca Cudrow</div>
                    <div class="profilGrade">Loyal member, 2 years</div>
                    <div class="profilStatus">"Semangat kerja, Semangat berdoa"</div>
                </div>
<%--                <div class="bodyHeaderAccountTop">
                       
                </div>--%>

                <div class="bodyHeaderAccountBottom">
                    <a href="#"><div class="trophyPoints"><span class="titleBottomMenuPoint">Points</span><span class="pointBottomMenu">30.000</span></div></a>
                    <%--<a href="#"><i class="fa fa-trophy"><span style="font-size:10px; position:absolute; color:#000;">Points</span><span style="color:#000; font-size:10px; padding-bottom:5px;">30.000</span></i></a>--%>                                    
                </div>
            </div>

            <!-- start menuMainContent point -->
            <div class="menuMainContent point">
                <div class="colParagraph-3 ">
                    <div class="voucherIcon activeVoucher" ></div>
                    <div style=" font-weight:bolder;">VOUCHER</div>
                </div>
                <div class="colParagraph-3">
                    <div class="rewardIcon" ></div>
                    <div style=" font-weight:bolder;">REWARD</div>
                </div>
                <div class="colParagraph-3">
                    <div class="historyIcon" ></div>
                    <div style=" font-weight:bolder;">HISTORY</div>
                </div>
            </div><!-- end menuMainContent point -->

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

            <div class="bodyMainContent">
                <!--start of voucher content-->
                <div class="voucherMainContent">            
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
                        <div class="colParagraph-5 ">
                            <div class="paragraphTitle">Voucher Game Online</div>
                            <div class="paragrafContent">Jadikan permainan anda lebih menarik</div>
                        </div>                    
                    </div>
                </div><!--end of voucher content--> 

                <!-- start of rewardMainContent--> 
                <div class="rewardMainContent" style="display:none;">           
                    <div class="rowParagraph">
                        <div class="colParagraph-5">
                            <div class="paragraphTitle ">Create thread</div>
                        </div>                    
                        <div class="colParagraph-5">
                            <div class="paragraphTitle rightParagraph">10 Points</div>
                        </div>                    
                    </div>
                    <div class="rowParagraph">
                        <div class="colParagraph-5">
                            <div class="paragraphTitle">Installed Application</div>
                        </div>                    
                        <div class="colParagraph-5">
                            <div class="paragraphTitle rightParagraph">15 Points</div>
                        </div>                    
                    </div>
                    <div class="rowParagraph">
                        <div class="colParagraph-5">
                            <div class="paragraphTitle">Viewed Video</div>
                        </div>                    
                        <div class="colParagraph-5">
                            <div class="paragraphTitle rightParagraph">10 Points</div>
                        </div>                    
                    </div>                    
                </div><!-- end of rewardMainContent-->
               
                <!-- start of historyMainContent-->  
                <div class="historyMainContent">          
                    <div class="rowParagraph">
                        <div class="colParagraph-5">
                            <div class="paragraphTitle">OnStore discount 30%</div>
                        </div>                    
                        <div class="colParagraph-5">
                            <div class="paragraphTitle rightParagraph">50 Points</div>
                        </div>                    
                    </div>

                    <div class="rowParagraph">
                        <div class="colParagraph-5">
                            <div class="paragraphTitle">Train voucher 50%</div>
                        </div>
                        <div class="colParagraph-5">
                            <div class="paragraphTitle rightParagraph">75 Points</div>
                        </div>                    
                    </div>

                </div><!-- end of historyMainContent-->
            </div><!--end of body main content-->
        </div><!--end of body-->

        <%--asdfas--%>
        <!-- start of footer-->
        <div class="footer">
            <a href="<%= resolveClientUrl("~") %>Mobile/home.aspx"><i class="fa fa-home"></i><div style="clear:both; font-size:10px; color:#000;">Timeline</div></a>
            <a href="<%= resolveClientUrl("~") %>Mobile/shop.aspx"><i class="fa fa-shopping-cart"></i><div style="clear:both; font-size:10px; color:#000;">Shop</div></a> 
            <a href="#" id="menuPopup" style="z-index:9999;"><i class="fa fa-plus-circle"></i></a> 
            <a href="<%= resolveClientUrl("~") %>Mobile/chat.aspx"><i class="fa fa-globe"></i><div style="clear:both; font-size:10px; color:#000;">Chat</div></a>
            <a href="<%= resolveClientUrl("~") %>Mobile/account.aspx"><i class="fa fa-user"></i><div style="clear:both; font-size:10px; color:#000;">Account</div></a> 
        </div><!-- end of footer-->

        <div id="myModal" class="modal">
              <!-- Modal content -->
              <div class="modal-content">
                <span class="close">&times;</span>
                <%--start from menu here--%>
                <div class="rowParagraph">
                    <div class="colParagraph-3">
                        <div class="paragraphTitle">Traveling Ticket</div>
                        <div class="paragraphContent">Dapatkan harga diskon 15% selama bulan ramadhan</div>
                    </div>
                    <div class="colParagraph-6">
                        <img class="paragraphImage" src="../Styles/Images/travel2.png"/>
                    </div>
                </div>

                <div class="rowParagraph">
                    <div class="colParagraph-3">
                        <div class="paragraphTitle">Shopping Mall</div>
                        <div class="paragrafContent">Dapatkan diskon menarik di mall favorit anda</div>
                    </div>
                    <div class="colParagraph-6">
                        <img class="paragraphImage" src="../Styles/Images/shop2.png" />
                    </div>
                </div>

                <div class="rowParagraph">
                    <div class="colParagraph-3">
                        <div class="paragraphTitle">Digital TV Program</div>
                        <div class="paragrafContent">Beragam channel TV program dengan acara menarik, seru untuk disaksikan</div>
                    </div>
                    <div class="colParagraph-6">
                        <img class="paragraphImage" src="../Styles/Images/tvprogram2.png" />
                    </div>
                </div>
                
                <div class="rowParagraph">
                    <div class="colParagraph-3">
                        <div class="paragraphTitle">Monthly Payment</div>
                        <div class="paragrafContent">Pembayaran iuran PLN, BPJS, pulsa, dan asuransi</div>
                    </div>
                    <div class="colParagraph-6">
                        <img class="paragraphImage" src="../Styles/Images/payment2.png" />
                    </div>
                </div>

                <div class="rowParagraph">
                    <div class="colParagraph-3">
                        <div class="paragraphTitle">Voucher Game Online</div>
                        <div class="paragrafContent">Jadikan permainan anda lebih menarik</div>
                    </div>
                    <div class="colParagraph-6">
                        <img class="paragraphImage" src="../Styles/Images/game2.png" />
                    </div>
                </div><%--end from start menu--%>
              </div><%--end of modal-content--%>
        </div><%--end of myModal--%>
</div><%--end of container--%>
    
    <script type="text/javascript">
        $(document).ready(function () {

            $(".voucherMainContent").show();
            $(".rewardMainContent").hide();
            $(".historyMainContent").hide();

            function initClose() {
                $(".close").unbind("click").click(function () {
                    $("#myModal").hide();
                });
            }
            $("#menuPopup").unbind("click").click(function () {
                $("#myModal").show();
                initClose();
            });

            $(".voucherIcon").unbind("click").click(function () {
                $(this).addClass('activeVoucher')
                $(".rewardIcon").removeClass('activeReward');
                $(".historyIcon").removeClass('activeHistory');
                $(".voucherMainContent").show();
                $(".historyMainContent").hide();
                $(".rewardMainContent").hide();
            });

            $(".rewardIcon").unbind("click").click(function () {
                $(this).addClass('activeReward')
                $(".voucherIcon").removeClass('activeVoucher');
                $(".historyIcon").removeClass('activeHistory');
                $(".voucherMainContent").hide();
                $(".historyMainContent").hide();
                $(".rewardMainContent").show();
            });

            $(".historyIcon").unbind("click").click(function () {
                $(this).addClass('activeHistory')
                $(".voucherIcon").removeClass('activeVoucher');
                $(".rewardIcon").removeClass('activeReward');
                $(".voucherMainContent").hide();
                $(".historyMainContent").show();
                $(".rewardMainContent").hide();
            });

        });
    </script>
</asp:Content>

