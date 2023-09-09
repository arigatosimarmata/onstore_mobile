<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="shop.aspx.vb" Inherits="Mobile_shop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
         
        <div class="header">
            <div style="margin-left: 0px; margin-top: 0px;">
                <div style="color:#fff;">
                <a href="<%= resolveClientUrl("~") %>Mobile/setting.aspx"><img style="display:none;" class="iconSetting" src="../Styles/Images/iconSetting.png" /></a>
                <div class="titleOnstore"><h3>Shop</h3></div>
                </div>
            </div>
            
        </div>
        
        <!--start body -->
        <div class="body">
            <div class="bodyHeader">
                <div class="bodyHeaderTimelineTop">
                    <a><div class="cartIcon"><span class="titleTimelineTop">Cart</span><span class="titleTimelineBottom">2</span></div></a>
                    <a href="<%= resolveClientUrl("~") %>Mobile/post_thread.aspx"><div class="sellItemIcon"><span class="titleTimelineTop">Sell Item</span></div></a>
                    <a href="<%= resolveClientUrl("~") %>Mobile/sortBy.aspx"><div class="filterCategoryIcon"><span class="titleTimelineTop">SortBy</span></div></a>
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
        </div><!--end of myModal -->

</div><!--end of container -->
    
    <script type="text/javascript">
        function getProduct() {

            var request_load = {
                franchiseeId: $("#franchiseeId").val(),
                tokenId: $("#tokenId").val(),
                CountryId: CountryId
            };

            var option = {};
            option.type = "GET";
            option.contentType = "application/json; charset=utf-8";
            option.data = request_load;
            option.dataType = "json";
            option.url = "https://api.onstore.co.id/api/CustomerAddress/getCountry";
            option.MaxJsonLength = 50000000;
            option.timeout = 100000;

            option.success = function (data, val) {
                var returnValue = data.response.CountryList;
                alert(returnValue);

//                $("#countryList").empty();
//                $("#countryList").append("<option value='' >- Select One -</option>");
//                for (i = 0; i < returnValue.length; i++) {
//                    $("#countryList").append("<option value='" + returnValue[i].CountryId + "' > " + (i + 1) + ". " + returnValue[i].CountryName + "</option>");
//                }
            };
            option.error = function (data, val) {
                alert(data.responseText + '.' + val);
            };

            $.ajax(option);
        }

        function loginToken() {
            
        }

        function initClose() {
            $(".close").unbind("click").click(function () {
                $("#myModal").hide();
            });
        }

        function menuPopUpBottom() {
            $("#menuPopup").unbind("click").click(function () {
                $("#myModal").show();
                initClose();
            });

        }
        $(document).ready(function () {
            function init() {
                initClose();
                menuPopUpBottom();

            }

            init();
        });
    </script>

</asp:Content>

