<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="chat.aspx.vb" Inherits="Mobile_chat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
         
        <div class="header">
            <div style="margin-left: 0px; margin-top: 0px;">
                <div style="color:#fff;">
                <a href="<%= resolveClientUrl("~") %>#"><div class="iconSetting" style="background-image:url('../Styles/Images/iconSetting.png');"></div></a>
                <div class="titleOnstore"><h3>Chat</h3></div>
                </div>
            </div>
            
        </div>
    
        <div class="body">
            <div class="bodyHeader">
                <div class="bodyHeaderTimelineTop">
                    <div class="colParagraph-5">
                        <div class="friendsIcon activeFriends"><div class="title">Friends</div></div>
                    </div>
                    <div class="colParagraph-5">
                        <div class="chatIcon"><div class="title">Chat</div></div>
                    </div>
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

            <!-- start bodyMainContent -->
            <div class="bodyMainContent">
                <!-- start friendlistMainContent content -->
                <div class="friendlistMainContent">
                    <!--start chatProfileTab -->                    
                    <div class="chatProfileTab">
                        <div class="rowParagraph">
                            <div class="colParagraph-3">Profile</div>
                            <div class="colParagraph-7 right"></div>
                        </div>           
                        <div class="rowParagraph">
                            <div class="colParagraph-2">
                                <img class="profileImage" src="../Styles/Images/account/account_savethreadPhoto1.png"/>
                            </div>                    
                            <div class="colParagraph-2">
                                <div class="chatNameTitle">Tatsuki</div>
                                <div class="statusIcon online"><div class="chatStatusTitle">Online</div></div>
                            </div>
                            <div class="colParagraph-4 rightFloat">
                                <div class="chatStatusContent">Consectetur adipiscin sed do eiusmod loream sotrosrea molrea</div>
                            </div>
                        </div>
                    </div><!--end chatProfileTab -->

                    <!--start chatFriendsTab -->
                    <div class="chatFriendsTab">
                        <div class="rowParagraph">
                            <div class="colParagraph-3">Friends</div>
                            <div class=""></div>
                        </div>   
                        <div class="rowParagraph">
                            <div class="colParagraph-2">
                                <img class="profileImage" src="../Styles/Images/account/account_savethreadPhoto1.png"/>
                            </div>                    
                            <div class="colParagraph-2">
                                <div class="chatNameTitle">Tatsuki</div>
                                <div class="statusIcon offline"><div class="chatStatusTitle">Offline</div></div>
                            </div>                    
                            <div class="colParagraph-4 rightFloat">
                                <div class="chatStatusContent">Consectetur adipiscin sed do eiusmod loream sotrosrea molrea</div>
                            </div>
                        </div>

                        <div class="rowParagraph">
                            <div class="colParagraph-2">
                                <img class="profileImage" src="../Styles/Images/account/account_savethreadPhoto1.png"/>
                            </div>                    
                            <div class="colParagraph-2">
                                <div class="chatNameTitle">Tatsuki</div>
                                <div class="statusIcon online"><div class="chatStatusTitle">Online</div></div>
                            </div>                    
                            <div class="colParagraph-4 rightFloat">
                                <div class="chatStatusContent">Consectetur adipiscin sed do eiusmod loream sotrosrea molrea</div>
                            </div>
                        </div>
                    </div><!--end chatFriendsTab -->

                    
                    <!--start chatGroupTab -->
                    <div class="chatGroupTab">
                        <div class="rowParagraph">
                            <div class="colParagraph-3">Groups</div>
                            <div style="clear:both;"></div>
                            <div class="calParagraph-3">Create Group +</div>
                        </div>

                        <div class="rowParagraph">
                            <div class="colParagraph-2">
                                <img class="profileImage" src="../Styles/Images/account/chat_nusajayaProfil.png"/>
                            </div>                    
                            <div class="colParagraph-2">
                                <div class="chatNameTitle">Tatsuki</div>
                                <div class="statusIcon online"><div class="chatStatusTitle">Online</div></div>
                            </div>                    
                            <div class="colParagraph-4 rightFloat">
                                <div class="chatStatusContent">Consectetur adipiscin sed do eiusmod loream sotrosrea molrea</div>
                            </div>
                        </div><!--end chatGroupTab -->
                    </div>

                    <!--start chatNearbyTab -->
                    <div class="chatNearbyTab">
                        <div class="rowParagraph">
                            <div class="colParagraph-3">Nearby</div>
                        </div>
                        <div class="rowParagraph">
                            <div class="colParagraph-2">
                                <img class="profileImage" src="../Styles/Images/account/account_savethreadPhoto1.png"/>
                            </div>                    
                            <div class="colParagraph-2">
                                <div class="chatNameTitle">Tatsuki</div>
                                <div class="statusIcon online"><div class="chatStatusTitle">Online</div></div>
                            </div>                    
                            <div class="colParagraph-4 rightFloat">
                                <div class="chatStatusContent">Consectetur adipiscin sed do eiusmod loream sotrosrea molrea</div>
                            </div>
                        </div>
                        <div class="rowParagraph">
                            <div class="colParagraph-2">
                                <img class="profileImage" src="../Styles/Images/account/account_savethreadPhoto1.png"/>
                            </div>                    
                            <div class="colParagraph-2">
                                <div class="chatNameTitle">Tatsuki</div>
                                <div class="statusIcon offline"><div class="chatStatusTitle">Offline</div></div>
                            </div>                    
                            <div class="colParagraph-4 rightFloat">
                                <div class="chatStatusContent">Consectetur adipiscin sed do eiusmod loream sotrosrea molrea</div>
                            </div>
                        </div>
                    </div><!--end chatNearbyTab -->      
                </div><!-- end of friendlistMainContent content-->

                <!-- start chatlistMainContent content -->
                <div class="chatlistMainContent">
                    <!--start chatProfileTab -->                    
                    <div class="chatProfileTab">
                        <div class="rowParagraph">
                            <div class="colParagraph-2">
                                <img class="profileImage" src="../Styles/Images/account/account_savethreadPhoto1.png"/>
                            </div>                    
                            <div class="colParagraph-6">
                                <div class="chatNameTitle leftFloat">Tatsuki</div><div class="statusIcon online leftFloat-1"></div>
                                <div style="clear:both;"></div>
                                <div class="chatMessageContent">Consectetur adipiscin sed do eiusmod loream sotrosrea molrea</div>
                            </div>
                            <div class="colParagraph-2 ">
                                <div class="chatMessageContent">09:38</div>
                                <div class="recieveMessage offline">3</div>
                                <div class="sendingMessage" style="display:none;"></div>
                                <div class="suksesSendingMessage" style="display:none;"></div>
                                <div class="readMessage" style="display:none;"></div>
                            </div>
                        </div>

                        <div class="rowParagraph">
                            <div class="colParagraph-2">
                                <img class="profileImage" src="../Styles/Images/account/account_savethreadPhoto1.png"/>
                            </div>                    
                            <div class="colParagraph-6">
                                <div class="chatNameTitle leftFloat">Tatsuki</div><div class="statusIcon offline leftFloat-1"></div>
                                <div style="clear:both;"></div>
                                <div class="chatMessageContent">Consectetur adipiscin sed do eiusmod loream sotrosrea molrea</div>
                            </div>
                            <div class="colParagraph-2 ">
                                <div class="chatMessageContent">09:38</div>
                                <div class="recieveMessage offline" style="display:none;">3</div>
                                <div class="sendingMessage"></div>
                                <div class="suksesSendingMessage" style="display:none;"></div>
                                <div class="readMessage" style="display:none;"></div>
                            </div>
                        </div>

                        <div class="rowParagraph">
                            <div class="colParagraph-2">
                                <img class="profileImage" src="../Styles/Images/account/chat_nusajayaProfil.png"/>
                            </div>                    
                            <div class="colParagraph-6">
                                <div class="chatNameTitle leftFloat">Nusa Jaya Group (3)</div>
                                <div style="clear:both;"></div>
                                <div class="chatMessageContent">Consectetur adipiscin sed do eiusmod loream sotrosrea molrea</div>
                            </div>
                            <div class="colParagraph-2 ">
                                <div class="chatMessageContent">09:38</div>
                                <div class="recieveMessage offline" style="display:none;">3</div>
                                <div class="sendingMessage" style="display:none;"></div>
                                <div class="suksesSendingMessage" style="display:none;"></div>
                                <div class="readMessage"></div>
                            </div>
                        </div>
                    </div><!--end chatProfileTab -->

                </div><!-- end of chatlistMainContent content-->

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
        $(document).ready(function () {

            $(".friendlistMainContent").show();
            $(".chatlistMainContent").hide();

            $(".friendsIcon").unbind("click").click(function () {
                $(this).addClass('activeFriends')
                $(".chatIcon").removeClass('activeFriends')

                $(".friendlistMainContent").show();
                $(".chatlistMainContent").hide();
            });

            $(".chatIcon").unbind("click").click(function () {
                $(".chatIcon").addClass('activeFriends')
                $(".friendsIcon").removeClass('activeFriends')

                $(".friendlistMainContent").hide();
                $(".chatlistMainContent").show();
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

