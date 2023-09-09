
$(document).ready(function () {
    $(".popupContainerBackground").hide();
});

$(function () {
    function onCloseClick(obj) {
        obj.html("");
        obj.hide();
    }
    $.fn.popupDialog = function (options) {

        var closeonclick = options.closeonclick;
        if (typeof closeonclick == 'undefined') {
            closeonclick = "Y";
        }
        var yesbuttontext = options.yesbuttontext;
        if (typeof yesbuttontext == 'undefined') {
            yesbuttontext = "Ya";
        }
        var message = options.message;
        if (typeof message == 'undefined') {
            message = "Hello";
        }
        var header = options.header;
        if (typeof header == 'undefined') {
            header = "Message";
        }
        var button = options.button;
        if (typeof button == 'undefined') {
            button = "yesno";
        }
        var width = options.width;
        if (typeof width == 'undefined') {
            width = "300";
        }
        var height = options.height;
        if (typeof height == 'undefined') {
            height = "150";
        }
        var maxwidth = options.maxwidth;
        var strWidth = "width:" + width + 'px;';
        var strMaxWidth = 'max-width:' + maxwidth + 'px;';
        if (typeof maxwidth == 'undefined') {
            maxwidth = "none";
            strMaxWidth = 'max-width:none;';
        } else {
            strWidth = 'width: 100%;';
        }
        var maxheight = options.maxheight;
        var strHeight = "height:" + height + 'px;';
        var strMaxHeight = 'max-height:' + maxheight + 'px;';
        if (typeof maxheight == 'undefined') {
            maxheight = "none";
            strMaxHeight = 'max-height:none;';
        } else {
            strHeight = 'height: 100%;';
        }
        var eventYesButton = options.eventYesButton;
        var eventNoButton = options.eventNoButton;
        var eventCloseButton = options.eventCloseButton;
        var dataToProcess = options.dataToProcess;

        var styleImageServerLink = '';
        if ($(".globalVar .imageServerLink").length > 0) {
            styleImageServerLink = 'background-image:url(' + $(".globalVar .imageServerLink").html() + ');';
        }

        var ht = "<div class='popupContainer' style='" + strWidth + strHeight + strMaxWidth + strMaxHeight + "'>";

        ht = ht + "<div class='popupHeader'>";
        ht = ht + "<div class='popupHeaderCloseButton' style='" + styleImageServerLink + "'></div>";
        ht = ht + "<div class='popupHeaderNote'>" + header + "</div>";
        ht = ht + "</div>";

        ht = ht + "<div class='popupMessage'>";
        ht = ht + message;
        ht = ht + "</div>";

        ht = ht + "<div class='popupButtonContainer'>";

        switch (button) {
            case "yesno":

                ht = ht + "<input type='button' id='yesButton' class='mainButton yesButton button first' value = '" + yesbuttontext + "' coc='" + closeonclick + "'>";
                ht = ht + "<input type='button' id='noButton' class='button noButton last' value='tidak'>";

                break;
            case "yes":
                ht = ht + "<input type='button' id='yesButton' class='mainButton yesButton button firstlast' value='" + yesbuttontext + "' coc='" + closeonclick + "'>";

                break;
            default:
                ht = ht + "";

                break;
        }
        ht = ht + "</div>";

        ht = ht + "</div>";

        $(this).html(ht);
        $(this).show();

        $(this).find(".popupButtonContainer input[type=button]").first().focus();

        var obj = $(this);

        $(this).find(".noButton").unbind("click").click(function () {
            if (typeof eventNoButton == 'undefined') {

            } else {
                eventNoButton(function () {
                    obj.find(".popupHeader .popupHeaderCloseButton").click(); //onCloseClick(obj);
                }, dataToProcess);
            }

        });
        $(this).find(".yesButton").unbind("click").click(function () {
            if (typeof eventYesButton == 'undefined') {

            } else {
                var coc = $(this).attr("coc");
                eventYesButton(function () {
                    if (coc == 'Y') {
                        obj.find(".popupHeader .popupHeaderCloseButton").click(); //onCloseClick(obj);
                    }
                    //onYesClick(obj);
                }, dataToProcess);
            }

        });

        $(this).find(".popupHeader .popupHeaderCloseButton").unbind("click").click(function () {

            if (typeof eventCloseButton == 'undefined') {
                onCloseClick(obj);
            } else {
                eventCloseButton(function () {
                    onCloseClick(obj);
                }, dataToProcess);
            }


        });
    };
});