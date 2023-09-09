<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="wallet.aspx.vb" Inherits="Mobile_wallet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
        <div class="header">
            <div style="margin-left: 0px; margin-top: 0px;">
                <div style="color:#fff;">
                <a href="<%= resolveClientUrl("~") %>Mobile/account.aspx"><div class="iconSetting" style="background-image:url('../Styles/Images/account/backIcon.png');"><span class="back">Back</span></div></a>
                <%--<a href="./"></a>--%>
                <div class="titleOnstore"><h3>Wallet</h3></div>
                
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
                <div class="rowParagraph">
                    <div class="colParagraph-3 ">
                        <div class="bayarbeliIcon" ></div>
                        <div class="iconTitle">Bayar & Beli</div>
                    </div>
                    <div class="colParagraph-3">
                        <div class="topupIcon" ></div>
                        <div class="iconTitle">Top up</div>
                    </div>
                    <div class="colParagraph-3">
                        <div class="debitIcon" ></div>
                        <div class="iconTitle">Debit</div>
                    </div>
                </div>

                <div class="rowParagraph">
                    <div class="colParagraph-3 ">
                        <div class="historyIcon" ></div>
                        <div class="iconTitle">History</div>
                    </div>
                    <div class="colParagraph-3">
                        <div class="transferIcon" ></div>
                        <div class="iconTitle">Transfer</div>
                    </div>
                    <div class="colParagraph-3">
                        <div class="ecashIcon" ></div>
                        <div class="iconTitle">E-cash</div>
                    </div>
                </div>
            </div><!-- end menuMainContent point -->
            
            <!-- start of bodyMainContent -->
            <div class="bodyMainContent">
                
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

            function initClose() {
                $(".close").unbind("click").click(function () {
                    $("#myModal").hide();
                });
            }
            $("#menuPopup").unbind("click").click(function () {
                $("#myModal").show();
                initClose();
            });

        });
    </script>
</asp:Content>

