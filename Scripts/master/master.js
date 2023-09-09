
function addEventButtonDeleteFromCart() {

    $(".btnClose, .shopCart").unbind("click").click(function (e) {
        var target = e.target;
        if (
//                !$(target).parent().is('.shopCart') &&
//                !$(target).parent().parent().is('.shopCart') &&
//                !$(target).parent().parent().parent().is('.shopCart') &&
//                !$(target).parent().parent().parent().parent().is('.shopCart') &&
//                !$(target).parent().parent().parent().parent().parent().is('.shopCart') &&
//                !$(target).parent().parent().parent().parent().parent().parent().is('.shopCart') &&
//                !$(target).parent().parent().parent().parent().parent().parent().parent().is('.shopCart') &&
//                !$(target).parent().parent().parent().parent().parent().parent().parent().parent().is('.shopCart') &&
//                !$(target).parent().parent().parent().parent().parent().parent().parent().parent().parent().is('.shopCart') &&
//                !$(target).parent().parent().parent().parent().parent().parent().parent().parent().parent().parent().is('.shopCart') &&
//                !$(target).is('.divShoppingCart') &&
//                !$(target).parent().is('.divShoppingCart') ||
                $(target).is(".btnClose") ||
                $(target).is(".goToShop") ||
                $(target).is('.shopCart')
            ) {
            $('.shopCart').hide();
        } else {
        }
    });
    $(".cartItem .qtyEdit").change(function (e) {

        var pageNameSupplier = $(this).parent().parent().parent().parent().parent().attr("sup");

        var pageNameItem = $(this).parent().parent().parent().parent().parent().attr("itm");
        var size = $(this).parent().parent().parent().parent().parent().attr("siz");
        var color = $(this).parent().parent().parent().parent().parent().attr("col");
        var qty = $(this).parent().find("input.qtyEdit").val();
        var dataTosend = {
            homeURL: $("div.globalVar div.homeURL").html(),
            pageNameItem: pageNameItem,
            pageNameSupplier: pageNameSupplier,
            color: color,
            size: size,
            qty: qty
        }

        var options = {};
        options.type = "POST";
        options.contentType = "application/json; charset=utf-8";
        options.data = JSON.stringify(dataTosend);
        options.dataType = "json";
        options.url = $("div.globalVar div.homeURL").html() + "ajx/carttransaction/updateItemFromCart";
        options.MaxJsonLength = '5000000';
        options.timeout = 10000;

        options.success = function (data, val) {
            var pl = data.d;
            //alert(pl[0].itemCount);
            //alert(pl[0].cartPreviewCount);
            //if (pl[0].cartPreviewCount == 0) {
            if (pl[0].errMessage != "") {

                $(".popupContainerBackground").popupDialog({
                    message: pl[0].errMessage,
                    button: "yes",
                    eventYesButton: function (func, dataToProcess) {
                        if (typeof func == 'undefined') {
                        } else {
                            func();
                        }
                        //preview..................
                        if ($(".divShoppingCart .preview").length == 0) {
                            $(".divShoppingCart .shopCart").before("<div class='preview " + pl[0].classPreviewCount + "'>" + pl[0].cartPreviewCount + "</div>");
                        } else {
                            $(".divShoppingCart .preview").html(pl[0].cartPreviewCount);
                            $.each(pl[0].listClassPreviewCount, function (key, value) {
                                $(".divShoppingCart .preview").removeClass(value);
                            });
                            $(".divShoppingCart .preview").addClass(pl[0].classPreviewCount);
                        }
                        //preview..................

                        //$(".divShoppingCart .shopCart").show();
                        $(".divShoppingCart .shopCart").html(pl[0].htmlCart);
                        $(".shopCart .cartContainer").mCustomScrollbar({
                            axis: "y",
                            theme: "dark-thick",
                            scrollInertia: 200
                        });

                        $('.cartContainer').mCustomScrollbar("scrollTo", ".cartItem.changed1", {
                            // scroll as soon as clicked
                            timeout: 0,
                            // scroll duration
                            scrollInertia: 0
                        }).delay(0).queue(function (next) {
                            var obj = $(".cartItem.changed1");
                            $(".cartItem.changed1").removeClass('changed1');
                            obj.find("input.qtyEdit").focus();
                            obj.find("input.qtyEdit").select();
                            next();
                        });

                        addEventButtonDeleteFromCart();
                    }
                });
            } else {
                //$(".divShoppingCart .preview").show();
                //preview..................
                if ($(".divShoppingCart .preview").length == 0) {
                    $(".divShoppingCart .shopCart").before("<div class='preview " + pl[0].classPreviewCount + "'>" + pl[0].cartPreviewCount + "</div>");
                } else {
                    $(".divShoppingCart .preview").html(pl[0].cartPreviewCount);
                    $.each(pl[0].listClassPreviewCount, function (key, value) {
                        $(".divShoppingCart .preview").removeClass(value);
                    });
                    $(".divShoppingCart .preview").addClass(pl[0].classPreviewCount);
                }
                //preview..................

                $(".divShoppingCart .shopCart").show();
                $(".divShoppingCart .shopCart").html(pl[0].htmlCart);
                $(".shopCart .cartContainer").mCustomScrollbar({
                    axis: "y",
                    theme: "dark-thick",
                    scrollInertia: 200
                });
                $('.cartContainer').mCustomScrollbar("scrollTo", ".cartItem.changed1", {
                    // scroll as soon as clicked
                    timeout:0,
                    // scroll duration
                    scrollInertia:0
                }).delay(0).queue(function (next) {
                    var obj = $(".cartItem.changed1");
                    $(".cartItem.changed1").removeClass('changed1');
                    obj.find("input.qtyEdit").focus();
                    obj.find("input.qtyEdit").select();
                    next();
                });

                addEventButtonDeleteFromCart();
            }


        }

        options.error = function (f, stat) {

            switch (stat) {
                case 'timeout':
                    if (trialNumber <= 3) {
                        //alert(trialNumber);
                        //sizeChanged(trialNumber + 1);
                    } else {
                        //alert("timeout");
                        //$("#mainContainer").children().prop('disabled', false);
                        //enableListNewForm();
                    }
                    break;
                default:
                    //alert(stat);

            }

        }

        $.ajax(options);

        e.preventDefault();
        return false;
    });
    $(".cartItem .cartDeleteItem").click(function () {
        var pageNameItem = $(this).parent().attr('itm');
        var pageNameSupplier = $(this).parent().attr('sup');
        var color = $(this).parent().attr('col');
        var size = $(this).parent().attr('siz');
        var dataTosend = {
            homeURL: $("div.globalVar div.homeURL").html(),
            pageNameItem: pageNameItem,
            pageNameSupplier: pageNameSupplier,
            color: color,
            size: size
        }

        var options = {};
        options.type = "POST";
        options.contentType = "application/json; charset=utf-8";
        options.data = JSON.stringify(dataTosend);
        options.dataType = "json";
        options.url = $("div.globalVar div.homeURL").html() + "ajx/carttransaction/deleteItemFromCart";
        options.MaxJsonLength = '5000000';
        options.timeout = 10000;


        options.success = function (data, val) {
            var pl = data.d;
            //alert(pl[0].itemCount);
            //alert(pl[0].cartPreviewCount);
            //if (pl[0].cartPreviewCount == 0) {
            if (1 == 0) {
                $(".divShoppingCart .preview").remove();
                
                $(".divShoppingCart .shopCart").hide();
            } else {
                //$(".divShoppingCart .preview").show();
                //preview..................
                if ($(".divShoppingCart .preview").length == 0) {
                    $(".divShoppingCart .shopCart").before("<div class='preview " + pl[0].classPreviewCount + "'>" + pl[0].cartPreviewCount + "</div>");
                } else {
                    $(".divShoppingCart .preview").html(pl[0].cartPreviewCount);
                    $.each(pl[0].listClassPreviewCount, function (key, value) {
                        $(".divShoppingCart .preview").removeClass(value);
                    });
                    $(".divShoppingCart .preview").addClass(pl[0].classPreviewCount);
                }
                //preview..................

                $(".divShoppingCart .shopCart").show();
                $(".divShoppingCart .shopCart").html(pl[0].htmlCart);
                $(".shopCart .cartContainer").mCustomScrollbar({
                    axis: "y",
                    theme: "dark-thick",
                    scrollInertia: 200
                });

                $('.cartContainer').mCustomScrollbar("scrollTo", ".cartItem.changed1", {
                    // scroll as soon as clicked
                    timeout: 0,
                    // scroll duration
                    scrollInertia: 0
                }).delay(0).queue(function (next) {
                    var obj = $(".cartItem.changed1");
                    obj.find(".qtyEdit").focus();
                    obj.find(".qtyEdit").select();
                    $(".cartItem.changed1").removeClass('changed1');
                    next();
                });

                addEventButtonDeleteFromCart();
            }



        }

        options.error = function (f, stat) {

            switch (stat) {
                case 'timeout':
                    if (trialNumber <= 3) {
                        //alert(trialNumber);
                        //sizeChanged(trialNumber + 1);
                    } else {
                        //alert("timeout");
                        //$("#mainContainer").children().prop('disabled', false);
                        //enableListNewForm();
                    }
                    break;
                default:
                    //alert(stat);

            }

        }

        $.ajax(options);
    });
}

$(document).ready(function () {

    function togglePreview(idx, fn) {
        $(".formPreview.index" + idx).addClass("hide");
        $(".formPreview.index" + idx + "." + fn).removeClass("hide");
    }
    function addEventChallenge(challengeRegister) {
        $(".challengeFormOutside .btnClose, .challengeForm").unbind("click").click(function (e) {
            var target = e.target;
            if (
                $(target).is(".challengeFormOutside .btnClose") ||
                $(target).is('.challengeForm')
            ) {
                $('.challengeForm').removeClass("show");
                timer.pause();
            } else {
            }
        });

        $(".formPreview input[type=button].tbutton.tdaftar").unbind("click").click(function (e) {
            var k = $(this).attr("k");
            $(".popupContainerBackground").popupDialog({
                message: "Dengan Menekan Ya, berarti anda setuju dengan Syarat dan kondisi challenges yang akan anda ikuti! Dan perhitungan waktu anda dimulai.",
                button: "yesno",
                eventYesButton: function (func, dataToProcess) {
                    if (typeof func == 'undefined') {
                    } else {
                        func();
                    }
                    challengeRegister(k, 'N');
                }
            });
        });

        $(".formPreview input[type=button].tbutton.tulang").unbind("click").click(function (e) {
            var k = $(this).attr("k");
            $(".popupContainerBackground").popupDialog({
                message: "Apakah anda yakin untuk mereset tugas-tugas anda yang telah selesai? perhitungan waktu akan dimulai ketika anda memilih ya.",
                button: "yesno",
                eventYesButton: function (func, dataToProcess) {
                    if (typeof func == 'undefined') {
                    } else {
                        func();
                    }
                    challengeRegister(k, 'Y');
                }
            });
        });

        $("div.formTabButton .tabButton").unbind("click").click(function (e) {
            if ($(this).hasClass("active")) {
                return false;
            }
            $(".formTabButton .tabButton").removeClass("active");
            $(".formTab").removeClass("active");
            $("div.formTabButton .tabButton.index" + $(this).attr("index")).addClass("active");
            //$(this).addClass("active");
            var index = $(this).attr("index");
            $(".formTab.index" + index).addClass("active");
        });

        $(".formButton input[type=button].tugas").unbind("click").click(function (e) {
            if ($(this).hasClass("active")) {
                return false;
            }
            $(".formButton input[type=button][index=" + $(this).attr("index") + ']').removeClass("active");
            $(".formButton input[type=button].tugas[index=" + $(this).attr("index") + ']').addClass("active");
            //$(this).addClass("active");

            togglePreview($(this).attr("index"), "tugas");
        });

        $(".formButton input[type=button].ranking").unbind("click").click(function (e) {
            if ($(this).hasClass("active")) {
                return false;
            }
            $(".formButton input[type=button][index=" + $(this).attr("index") + ']').removeClass("active");
            $(".formButton input[type=button].ranking[index=" + $(this).attr("index") + ']').addClass("active");
            //$(this).addClass("active");

            togglePreview($(this).attr("index"), "ranking");
        });
    }

    //javascript copy function
    function copy(inElement) {
        if (inElement.createTextRange) {
            var range = inElement.createTextRange();
            if (range && BodyLoaded == 1)
                range.execCommand('Copy');
        } else {
            var flashcopier = 'flashcopier';
            if (!document.getElementById(flashcopier)) {
                var divholder = document.createElement('div');
                divholder.id = flashcopier;
                document.body.appendChild(divholder);
            }
            document.getElementById(flashcopier).innerHTML = '';
            var divinfo = '';
            document.getElementById(flashcopier).innerHTML = divinfo;
        }
    }

    $.fn.validCheck = function () {
        var valid = true;
        $(this).find("input.errorCheck,select.errorCheck").each(function (index, value) {
            valid = false;
        });

        return valid;
    }

    var timer =
        $.timer(
        	function () {
        	    hitungTimer();
        	},
        	1000,
        	false
        );
    var arrChallenge = []; //arrChallenge.push({ 'delta': delta, 'inc': 1, 'index': key });
    function hitungTimer() {
        $.each(arrChallenge, function (key, value) {
            var delta = value.delta + value.inc
            var htmlTimer = getStringDateDiff(delta);
            $(".challengeFormOutside .formTab.index" + value.index + ' .timer b').html(htmlTimer);
            arrChallenge[key].delta = delta;
        });
    }

    function getStringDateDiff(dateStart, dateEnd) {

    }

    function getStringDateDiff(datediff) {

        var htmlTimer = '';
        var delta = datediff;
        //alert(delta);
        var days = Math.floor(delta / 86400);
        delta -= days * 86400;
        if (days > 0) {
            htmlTimer = htmlTimer + days + ' hari '
        }

        // calculate (and subtract) whole hours
        var hours = Math.floor(delta / 3600) % 24;
        delta -= hours * 3600;
        if (hours > 0) {
            htmlTimer = htmlTimer + hours + ' jam '
        }

        // calculate (and subtract) whole minutes
        var minutes = Math.floor(delta / 60) % 60;
        delta -= minutes * 60;
        if (minutes > 0) {
            htmlTimer = htmlTimer + minutes + ' menit '
        }

        // what's left is seconds
        var seconds = delta % 60;  // in theory the modulus is not required
        if (seconds > 0) {
            htmlTimer = htmlTimer + seconds + ' detik '
        }
        return $.trim(htmlTimer);
    }

    function getStyle(width, widthpercent, isMobile) {
        var returnvalue = '';
        if (!isMobile) {
            returnvalue = 'style="width:' + width + 'px;"';
        } else {
            returnvalue = 'style="width:' + widthpercent + '%;"';
        }
        return returnvalue
    }

    function getClassColumn(index, countColumn, importantValue, isHeader, nopaddingtopbot) {
        var returnvalue = '';
        var classTambahan = '';


        if (index == 0) {
            classTambahan = ' first';
        }
        if (index == countColumn - 1) {
            classTambahan = ' last';
        }

        if (typeof (nopaddingtopbot) === 'undefined') {
        } else {
            if (nopaddingtopbot) {
                classTambahan = classTambahan + ' noptb';
            }
        }

        if (!isHeader) {
            importantValue = 0;
        }
        var val = '00' + '' + importantValue.toString();
        classTambahan = classTambahan + ' val' + val.substring(val.length - 2, val.length);

        if (isHeader) {
            classTambahan = classTambahan + ' header'
        }
        returnvalue = 'class="tcol' + classTambahan + '"';
        return returnvalue;
    }

    function challengeVisitLink() {
        if ($(".queryStringVariable div[varname=item]").html() == '') {
            return false;
        }
        var data = new FormData();
        data.append("homeURL", $("div.globalVar div.homeURL").html());

        var options = {};
        options.url = $("div.globalVar div.homeURL").html() + "ev/challenge/visitlink";
        options.type = "POST";
        options.data = data;
        options.contentType = false;
        options.processData = false;
        options.dataType = "json";
        options.responseType = "json";
        options.success = function (result) {
        }
        options.error = function (err) {
        };

        $.ajax(options);

    }

    function challengeViewItem() {
        if ($(".queryStringVariable div[varname=item]").html() == '') {
            return false;
        }
        var data = new FormData();
        data.append("homeURL", $("div.globalVar div.homeURL").html());
        data.append("pageNameItem", $(".queryStringVariable div[varname=item]").html());

        var options = {};
        options.url = $("div.globalVar div.homeURL").html() + "ev/challenge/viewitem";
        options.type = "POST";
        options.data = data;
        options.contentType = false;
        options.processData = false;
        options.dataType = "json";
        options.responseType = "json";
        options.success = function (result) {
        }
        options.error = function (err) {
        };

        $.ajax(options);

    }

    function challengeRegisterTugas(kode, isrepeat) {
        var data = new FormData();
        data.append("homeURL", $("div.globalVar div.homeURL").html());
        data.append("kodeEventChallenge", kode);
        data.append("isrepeat", isrepeat);

        var options = {};
        options.url = $("div.globalVar div.homeURL").html() + "ev/challenge/register";
        options.type = "POST";
        options.data = data;
        options.contentType = false;
        options.processData = false;
        options.dataType = "json";
        options.responseType = "json";
        options.success = function (result) {
            var err = result.errMessage;

            if (err == '') {
                $(".divChallengeNotif ").click();
            } else {
                $(".popupContainerBackground").popupDialog({
                    message: err,
                    button: "yes",
                    eventYesButton: function (func, dataToProcess) {
                        if (typeof func == 'undefined') {
                        } else {
                            func();
                        }
                    }
                });
            }
        }
        options.error = function (err) {
        };

        $.ajax(options);

    }

    $(".divChallengeNotif ").click(function (e) {
        if ($(e.target).hasClass("container")) {
        } else {
            return;
        }
        var timeStart = new Date($.now());
        $(".challengeForm").addClass("show");
        timer.pause();

        var data = new FormData();
        data.append("homeURL", $("div.globalVar div.homeURL").html());
        var options = {};
        options.url = $("div.globalVar div.homeURL").html() + "ev/challenge/showteaser";
        options.type = "POST";
        options.data = data;
        options.contentType = false;
        options.processData = false;
        options.dataType = "json";
        options.responseType = "json";
        options.success = function (result) {
            var imgURL = '';
            var err = result.errMessage;
            var html = '';
            if (err == '') {
                html = "<div class='challengeFormOutside'>";
                html = html + "<div class='cfHeader'>";
                html = html + "<div class='cfHeaderClose'>";
                html = html + "<span class='btnClose'>";
                html = html + "</span>";
                html = html + "</div>";
                html = html + "</div>";
                var htmldetail = '';
                var htmltab = '';
                var index = 0;
                //var arrColumnType = ['L', 'B', 'R'];
                var arrColumnWidth = [50, 350, 100];
                var arrColumnImportant = [1, 8, 10];
                var isHeader = true;
                var indexTab = 0;
                var totalWidthPersen = 100;
                var pos = 0;
                if (result.customerProgress.length == 0) {
                    //teaser....
                    htmldetail = htmldetail + '<div>';
                    htmldetail = htmldetail + result.html;
                    htmldetail = htmldetail + '</div>';
                } else {
                    htmltab = htmltab + '<div class="formTabButton">';
                    $.each(result.customerProgress, function (key, value) {
                        var widthpersen = Math.floor(1.0 * 100 / result.customerProgress.length);

                        if (indexTab == result.customerProgress.length) {
                            widthpersen = totalWidthPersen;
                        } else {
                            totalWidthPersen = totalWidthPersen - widthpersen;
                        }
                        //form tab button...
                        var activeHTML = '';
                        if (value.isActive) {
                            activeHTML = ' active';
                        }
                        htmltab = htmltab + '<div index="' + indexTab + '" class="tabButton index' + indexTab + activeHTML + '" style="width:' + widthpersen + '%;left:' + pos + '%">'
                        pos = pos + widthpersen;
                        htmltab = htmltab + value.tabText;
                        htmltab = htmltab + '</div>';
                        //form tab button...
                        if (value.customerEventChallenge.length > 0) {

                            //form tab...
                            htmldetail = htmldetail + '<div class="formTab index' + indexTab + activeHTML + '">';

                            //form button...
                            htmldetail = htmldetail + '<div class="formButton index' + indexTab + '">';
                            htmldetail = htmldetail + '<input type="button" class="tbutton tugas active" value="TUGAS" index="' + indexTab + '"/>';
                            htmldetail = htmldetail + '<input type="button" class="tbutton ranking" value="PERINGKAT" index="' + indexTab + '"/>';
                            htmldetail = htmldetail + '</div>'
                            //form button...

                            //form preview tugas...
                            htmldetail = htmldetail + '<div class="formPreview tugas index' + indexTab + '">';

                            htmldetail = htmldetail + value.textSummary;


                            if (value.isStarted == 'Y') {

                                if (value.currentDateDiff != -1) {
                                    htmldetail = htmldetail + '<div class="tinfo">';
                                    htmldetail = htmldetail + '<input type="button" value="ULANGI TUGAS" class="tbutton tulang" k="' + value.kode + '">';
                                    htmldetail = htmldetail + '</div>';
                                }
                                htmldetail = htmldetail + '<div class="tinfo">Progress (' + value.totalDone + '/' + value.totalChallenge + ')</div>';
                                htmldetail = htmldetail + '<div class="progressContainer">';
                                var color = '';
                                if (value.percentDone <= 30) {
                                    color = ' red';
                                } else if (value.percentDone <= 50) {
                                    color = ' orange';
                                } else if (value.percentDone <= 80) {
                                    color = ' blue';
                                } else if (value.percentDone <= 100) {
                                    color = ' green';
                                }
                                htmldetail = htmldetail + '<span class="progress' + color + '" style="width:' + value.percentDone + '%;">';
                                htmldetail = htmldetail + '' + value.percentDone + '%';
                                htmldetail = htmldetail + '</span>';
                                htmldetail = htmldetail + '</div>';
                            } else {
                                htmldetail = htmldetail + '<div class="tinfo">';
                                htmldetail = htmldetail + '<input type="button" value="DAFTAR" class="tbutton tdaftar" k="' + value.kode + '">';
                                htmldetail = htmldetail + '</div>';
                            }


                            //timeStart = new Date("2017-03-28 12:30:20");
                            //                            var timeEnd = new Date($.now());
                            //                            var htmlTimer = '';
                            //                            var delta = Math.floor(Math.abs(timeEnd - timeStart) / 1000);
                            //                            delta = delta + value.timeChallenge;



                            arrColumnWidth = [50, 350, 100];
                            arrColumnWidthPercent = [10, 70, 20];
                            arrColumnImportant = [1, 8, 10];
                            //header...
                            isHeader = true;
                            for (i = 1; i <= 2; i++) {
                                var mobileClass = '';
                                var isMobile = false;
                                var nopaddingtopbot;
                                if (i == 2) {
                                    mobileClass = ' mbl'
                                    isMobile = true;
                                    nopaddingtopbot = true;
                                }
                                htmldetail = htmldetail + '<div class="theader' + mobileClass + '">';              //row...
                                index = 0;
                                htmldetail = htmldetail + '<div ' + getClassColumn(index, arrColumnWidth.length, arrColumnImportant[index], isHeader, nopaddingtopbot) + ' ' + getStyle(arrColumnWidth[index], arrColumnWidthPercent[index], isMobile) + '>';
                                if (i == 1) {
                                    htmldetail = htmldetail + 'No.';
                                }
                                htmldetail = htmldetail + '</div>';
                                index = index + 1;
                                htmldetail = htmldetail + '<div ' + getClassColumn(index, arrColumnWidth.length, arrColumnImportant[index], isHeader, nopaddingtopbot) + ' ' + getStyle(arrColumnWidth[index], arrColumnWidthPercent[index], isMobile) + '>';
                                if (i == 1) {
                                    htmldetail = htmldetail + 'Challenge';
                                }
                                htmldetail = htmldetail + '</div>';
                                index = index + 1;
                                htmldetail = htmldetail + '<div ' + getClassColumn(index, arrColumnWidth.length, arrColumnImportant[index], isHeader, nopaddingtopbot) + ' ' + getStyle(arrColumnWidth[index], arrColumnWidthPercent[index], isMobile) + '>';
                                if (i == 1) {
                                    htmldetail = htmldetail + 'Status';
                                }
                                htmldetail = htmldetail + '</div>';

                                htmldetail = htmldetail + '<div style="clear:both;"></div>';
                                htmldetail = htmldetail + '</div>';                         //row...
                            }
                            //header...

                            $.each(value.customerEventChallenge, function (key1, value1) {

                                isHeader = false;
                                for (i = 1; i <= 2; i++) {
                                    var mobileClass = '';
                                    if (i == 2) {
                                        mobileClass = ' mbl'
                                    }
                                    htmldetail = htmldetail + '<div class="trow ' + value1.status + mobileClass + '">';              //row...
                                    var urla = '';
                                    var urlb = '';
                                    if (value1.url != '') {
                                        urla = '<a href="' + $("div.globalVar div.homeURL").html() + value1.url + '">';
                                        urlb = '</a>';
                                    }
                                    if (i == 1) {
                                        index = 0;
                                        htmldetail = htmldetail + '<div ' + getClassColumn(index, arrColumnWidth.length, 0, isHeader) + ' ' + getStyle(arrColumnWidth[index]) + '>';
                                        htmldetail = htmldetail + value1.number;
                                        htmldetail = htmldetail + '</div>';
                                        index = index + 1;
                                        htmldetail = htmldetail + '<div ' + getClassColumn(index, arrColumnWidth.length, 0, isHeader) + ' ' + getStyle(arrColumnWidth[index]) + '>';
                                        htmldetail = htmldetail + urla + value1.challengeName + urlb;
                                        htmldetail = htmldetail + '</div>';
                                        index = index + 1;
                                        htmldetail = htmldetail + '<div ' + getClassColumn(index, arrColumnWidth.length, 0, isHeader) + ' ' + getStyle(arrColumnWidth[index]) + '>';
                                        htmldetail = htmldetail + '<div style="width:50px;float:left;text-align: right;">' + value1.currentCountChallenge + ' / ' + value1.countChallenge + '</div>';
                                        htmldetail = htmldetail + '<div class="sign" style="float:right;"></div>';
                                        htmldetail = htmldetail + '<div style="clear:both;"></div>';
                                        htmldetail = htmldetail + '</div>';
                                    } else {
                                        htmldetail = htmldetail + '<div class="tcol mbl tleft1">';
                                        htmldetail = htmldetail + urla + value1.challengeName + urlb;
                                        htmldetail = htmldetail + '</div>';

                                        htmldetail = htmldetail + '<div class="tcol mbl tright1">';
                                        htmldetail = htmldetail + '<div class="tvalue" style="">' + value1.currentCountChallenge + ' / ' + value1.countChallenge + '</div>';
                                        htmldetail = htmldetail + '<div class="sign" style="float:right;"></div>';
                                        htmldetail = htmldetail + '</div>';
                                    }

                                    htmldetail = htmldetail + '<div style="clear:both;"></div>';
                                    htmldetail = htmldetail + '</div>';                         //row...
                                }
                            });
                            //footer...
                            isHeader = true;
                            for (i = 1; i <= 2; i++) {
                                var mobileClass = '';
                                var isMobile = false;
                                if (i == 2) {
                                    mobileClass = ' mbl'
                                    var isMobile = true;
                                }
                                htmldetail = htmldetail + '<div class="theader bold' + mobileClass + '">';              //row...
                                index = 0;
                                htmldetail = htmldetail + '<div ' + getClassColumn(index, arrColumnWidth.length, arrColumnImportant[index], isHeader, true) + ' ' + getStyle(arrColumnWidth[index], arrColumnWidthPercent[index], isMobile) + '>';
                                htmldetail = htmldetail + '</div>';
                                index = index + 1;
                                htmldetail = htmldetail + '<div ' + getClassColumn(index, arrColumnWidth.length, arrColumnImportant[index], isHeader, true) + ' ' + getStyle(arrColumnWidth[index], arrColumnWidthPercent[index], isMobile) + '>';
                                htmldetail = htmldetail + '</div>';
                                index = index + 1;
                                htmldetail = htmldetail + '<div ' + getClassColumn(index, arrColumnWidth.length, arrColumnImportant[index], isHeader, true) + ' ' + getStyle(arrColumnWidth[index], arrColumnWidthPercent[index], isMobile) + '>';
                                htmldetail = htmldetail + '</div>';

                                htmldetail = htmldetail + '<div style="clear:both;"></div>';
                                htmldetail = htmldetail + '</div>';                         //row...
                            }
                            //footer...

                            htmldetail = htmldetail + '</div>';
                            //form preview tugas...

                            //form preview ranking...
                            htmldetail = htmldetail + '<div class="formPreview ranking hide index' + indexTab + '">';

                            arrColumnWidth = [50, 120, 100, 230];
                            arrColumnWidthPercent = [10, 24, 20, 46];
                            arrColumnImportant = [1, 8, 10, 7];

                            htmldetail = htmldetail + '<div class="tinfo">tabel peringkat akan diupdate secara berkala. Akan banyak terjadi pergeseran peringkat, untuk mendapatkan hadiah terbaik pastikan peringkat anda masuk 10 besar dan tidak turun</div>';

                            //header...
                            isHeader = true;
                            for (i = 1; i <= 2; i++) {
                                var mobileClass = '';
                                var isMobile = false;
                                var nopaddingtopbot;
                                if (i == 2) {
                                    mobileClass = ' mbl'
                                    isMobile = true;
                                    nopaddingtopbot = true;
                                }
                                htmldetail = htmldetail + '<div class="theader' + mobileClass + '">';              //row...
                                index = 0;
                                htmldetail = htmldetail + '<div ' + getClassColumn(index, arrColumnWidth.length, arrColumnImportant[index], isHeader, nopaddingtopbot) + ' ' + getStyle(arrColumnWidth[index], arrColumnWidthPercent[index], isMobile) + '>';
                                if (i == 1) {
                                    htmldetail = htmldetail + '&nbsp;';
                                }
                                htmldetail = htmldetail + '</div>';
                                index = index + 1;
                                htmldetail = htmldetail + '<div ' + getClassColumn(index, arrColumnWidth.length, arrColumnImportant[index], isHeader, nopaddingtopbot) + ' ' + getStyle(arrColumnWidth[index], arrColumnWidthPercent[index], isMobile) + '>';
                                if (i == 1) {
                                    htmldetail = htmldetail + 'associate';
                                }
                                htmldetail = htmldetail + '</div>';
                                index = index + 1;
                                htmldetail = htmldetail + '<div ' + getClassColumn(index, arrColumnWidth.length, arrColumnImportant[index], isHeader, nopaddingtopbot) + ' ' + getStyle(arrColumnWidth[index], arrColumnWidthPercent[index], isMobile) + '>';
                                if (i == 1) {
                                    htmldetail = htmldetail + 'waktu';
                                }
                                htmldetail = htmldetail + '</div>';
                                index = index + 1;
                                htmldetail = htmldetail + '<div ' + getClassColumn(index, arrColumnWidth.length, arrColumnImportant[index], isHeader, nopaddingtopbot) + ' ' + getStyle(arrColumnWidth[index], arrColumnWidthPercent[index], isMobile) + '>';
                                if (i == 1) {
                                    htmldetail = htmldetail + 'reward';
                                }
                                htmldetail = htmldetail + '</div>';

                                htmldetail = htmldetail + '<div style="clear:both;"></div>';
                                htmldetail = htmldetail + '</div>';                         //row...
                            }
                            //header...
                            $.each(value.rankAndReward, function (key1, value1) {

                                isHeader = false;
                                for (i = 1; i <= 2; i++) {
                                    var mobileClass = '';
                                    if (i == 2) {
                                        mobileClass = ' mbl'
                                    }
                                    if (key1 + 1 == value.rank) {
                                        mobileClass = mobileClass + ' rank';
                                    }
                                    htmldetail = htmldetail + '<div class="trow ' + mobileClass + '">';              //row...
                                    if (i == 1) {
                                        index = 0;
                                        htmldetail = htmldetail + '<div ' + getClassColumn(index, arrColumnWidth.length, 0, isHeader) + ' ' + getStyle(arrColumnWidth[index]) + '>';
                                        htmldetail = htmldetail + value1.number;
                                        htmldetail = htmldetail + '</div>';
                                        index = index + 1;
                                        htmldetail = htmldetail + '<div ' + getClassColumn(index, arrColumnWidth.length, 0, isHeader) + ' ' + getStyle(arrColumnWidth[index]) + '>';
                                        if (key1 + 1 == value.rank) {
                                            htmldetail = htmldetail + 'anda';
                                        } else {
                                            htmldetail = htmldetail + value1.kodeMember;
                                        }
                                        htmldetail = htmldetail + '</div>';
                                        index = index + 1;
                                        htmldetail = htmldetail + '<div ' + getClassColumn(index, arrColumnWidth.length, 0, isHeader) + ' ' + getStyle(arrColumnWidth[index]) + '>';
                                        if (key1 + 1 == value.rank) {
                                            htmldetail = htmldetail + value.currentDateDiffText;
                                        } else {
                                            htmldetail = htmldetail + value1.diffStr;
                                        }
                                        htmldetail = htmldetail + '</div>';
                                        index = index + 1;
                                        htmldetail = htmldetail + '<div ' + getClassColumn(index, arrColumnWidth.length, 0, isHeader) + ' ' + getStyle(arrColumnWidth[index]) + '>';
                                        htmldetail = htmldetail + value1.rewardName;
                                        htmldetail = htmldetail + '</div>';
                                    } else {
                                        index = 0;
                                        htmldetail = htmldetail + '<div ' + getClassColumn(index, arrColumnWidth.length, 0, isHeader) + ' ' + getStyle(20) + '>';
                                        htmldetail = htmldetail + value1.number;
                                        htmldetail = htmldetail + '</div>';
                                        htmldetail = htmldetail + '<div class="tcol mbl tauto">';
                                        if (key1 + 1 == value.rank) {
                                            htmldetail = htmldetail + '<span class="tpenting">[' + 'anda' + '&nbsp;' + value.currentDateDiffText + '&nbsp;]</span> [' + value1.rewardName + ']';
                                        } else {
                                            htmldetail = htmldetail + '<span class="tpenting">[' + value1.kodeMember + '&nbsp;' + value1.diffStr + '&nbsp;]</span> [' + value1.rewardName + ']';
                                        }
                                        htmldetail = htmldetail + '</div>';
                                    }

                                    htmldetail = htmldetail + '<div style="clear:both;"></div>';
                                    htmldetail = htmldetail + '</div>';                         //row...
                                }
                            });
                            //footer...
                            isHeader = true;
                            htmldetail = htmldetail + '<div class="theader bold">';              //row...
                            index = 0;
                            htmldetail = htmldetail + '<div ' + getClassColumn(index, arrColumnWidth.length, arrColumnImportant[index], isHeader, true) + ' ' + getStyle(arrColumnWidth[index]) + '>';
                            htmldetail = htmldetail + '</div>';
                            index = index + 1;
                            htmldetail = htmldetail + '<div ' + getClassColumn(index, arrColumnWidth.length, arrColumnImportant[index], isHeader, true) + ' ' + getStyle(arrColumnWidth[index]) + '>';
                            htmldetail = htmldetail + '</div>';
                            index = index + 1;
                            htmldetail = htmldetail + '<div ' + getClassColumn(index, arrColumnWidth.length, arrColumnImportant[index], isHeader, true) + ' ' + getStyle(arrColumnWidth[index]) + '>';
                            htmldetail = htmldetail + '</div>';
                            index = index + 1;
                            htmldetail = htmldetail + '<div ' + getClassColumn(index, arrColumnWidth.length, arrColumnImportant[index], isHeader, true) + ' ' + getStyle(arrColumnWidth[index]) + '>';
                            htmldetail = htmldetail + '</div>';

                            htmldetail = htmldetail + '<div style="clear:both;"></div>';
                            htmldetail = htmldetail + '</div>';                         //row...
                            //footer...
                            htmldetail = htmldetail + '</div>';
                            //form preview ranking...

                            htmldetail = htmldetail + '</div>';
                            //form tab...

                            indexTab = indexTab + 1;
                        } else {
                            //jika harus menampilkan teaser.
                            //form tab...
                            htmldetail = htmldetail + '<div class="formTab index' + indexTab + activeHTML + '">';
                            htmldetail = htmldetail + value.textSummary;
                            htmldetail = htmldetail + '<img class="teaser" src="' + $(".globalVar .imageServerLink2").html() + value.imageURL + '"/>';
                            htmldetail = htmldetail + result.html;
                            htmldetail = htmldetail + '</div>';
                            //form tab...
                        }
                    });
                    htmltab = htmltab + '</div>';

                }

                html = html + htmltab + htmldetail + "</div>";
                $(".challengeForm").html(html);

                if (result.customerProgress.length == 0) {
                } else {
                    //timeStart = new Date("2017-03-28 12:30:20");
                    var timeEnd = new Date($.now());
                    // get total seconds between the times
                    $.each(result.customerProgress, function (key, value) {
                        // calculate (and subtract) whole days
                        var delta = Math.floor(Math.abs(timeEnd - timeStart) / 1000);
                        var htmlTimer = '';

                        if (value.customerEventChallenge.length > 0) {
                        } else {
                        }
                        delta = delta * value.incChallenge + value.timeChallenge;
                        htmlTimer = getStringDateDiff(delta);
                        //                        if (isStarted == 'N') {
                        //                            //challenge belum dimulai...
                        //                            delta = delta + value.timeChallenge;
                        //                            htmlTimer = getStringDateDiff(delta);
                        //                        } else if (value.currentDateDiffText == '') {
                        //                            //challenge belum selesai...
                        //                            delta = Math.floor(Math.abs(timeEnd - timeStart) / 1000);
                        //                        } else {
                        //                            //challenge sudah selesai...
                        //                        }
                        arrChallenge.push({ 'delta': delta, 'inc': value.incChallenge, 'index': key });
                        $(".challengeFormOutside .formTab.index" + key + ' .timer b').html(htmlTimer);

                    });

                    timer.play();
                }

            } else {
                //form tab...
                html = "<div class='challengeFormOutside'>";
                html = html + "<div class='cfHeader'>";
                html = html + "<div class='cfHeaderClose'>";
                html = html + "<span class='btnClose'>";
                html = html + "</span>";
                html = html + "</div>";
                html = html + "</div>";
                var htmldetail = '';
                var htmltab = '';

                htmldetail = htmldetail + '<div>';
                htmldetail = htmldetail + result.html;
                htmldetail = htmldetail + '</div>';

                html = html + htmltab + htmldetail + "</div>";
                $(".challengeForm").html(html);

            }
            addEventChallenge(function (k, ir) { challengeRegisterTugas(k, ir); });
        }
        options.error = function (err) {
            $(".challengeForm").removeClass("show");
        };

        $.ajax(options);
    });

    $(".divShoppingCart").click(function (e) {
        if ($(e.target).hasClass("container")) {
        } else {
            return;
        }
        var dataTosend = {
            homeURL: $("div.globalVar div.homeURL").html()
        }

        var options = {};
        options.type = "POST";
        options.contentType = "application/json; charset=utf-8";
        options.data = JSON.stringify(dataTosend);
        options.dataType = "json";
        options.url = $("div.globalVar div.homeURL").html() + "ajx/carttransaction/showcart";
        options.MaxJsonLength = '5000000';
        options.timeout = 10000;


        options.success = function (data, val) {

            var pl = data.d;
            //alert(pl[0].itemCount);
            //alert(pl[0].cartPreviewCount);
            //if (pl[0].cartPreviewCount == 0) {
            if (1 == 0) {
                $(".divShoppingCart .preview").remove();

                $(".divShoppingCart .shopCart").hide();
            } else {

                $(".divShoppingCart .preview").html(pl[0].cartPreviewCount);
                $.each(pl[0].listClassPreviewCount, function (key, value) {
                    $(".divShoppingCart .preview").removeClass(value);
                });
                //$(".divShoppingCart .preview").show();
                $(".divShoppingCart .preview").addClass(pl[0].classPreviewCount);

                $(".divShoppingCart .shopCart").show();
                $(".divShoppingCart .shopCart").html(pl[0].htmlCart);
                $(".shopCart .cartContainer").mCustomScrollbar({
                    axis: "y",
                    theme: "dark-thick",
                    scrollInertia: 200
                });

                $('.cartContainer').mCustomScrollbar("scrollTo", ".cartItem.changed1", {
                    // scroll as soon as clicked
                    timeout: 0,
                    // scroll duration
                    scrollInertia: 0
                }).delay(0).queue(function (next) {
                    var obj = $(".cartItem.changed1");
                    obj.find(".qtyEdit").focus();
                    obj.find(".qtyEdit").select();
                    $(".cartItem.changed1").removeClass('changed1');
                    next();
                });

                addEventButtonDeleteFromCart();

            }



        }

        options.error = function (f, stat) {

            switch (stat) {
                case 'timeout':
                    if (trialNumber <= 3) {
                        //alert(trialNumber);
                        //sizeChanged(trialNumber + 1);
                    } else {
                        //alert("timeout");
                        //$("#mainContainer").children().prop('disabled', false);
                        //enableListNewForm();
                    }
                    break;
                default:
                    //alert(stat);

            }

        }

        $.ajax(options);

        $('.shopCart').show();
    });

    function onLoadPageShoppingCart() {

        var dataTosend = {
            homeURL: $("div.globalVar div.homeURL").html()
        }

        var options = {};
        options.type = "POST";
        options.contentType = "application/json; charset=utf-8";
        options.data = JSON.stringify(dataTosend);
        options.dataType = "json";
        options.url = $("div.globalVar div.homeURL").html() + "ajx/carttransaction/showcart";
        options.MaxJsonLength = '5000000';
        options.timeout = 10000;


        options.success = function (data, val) {

            var pl = data.d;
            $(".divShoppingCart .preview").html(pl[0].cartPreviewCount);
        }

        options.error = function (f, stat) {

            switch (stat) {
                case 'timeout':
                    if (trialNumber <= 3) {
                        //alert(trialNumber);
                        //sizeChanged(trialNumber + 1);
                    } else {
                        //alert("timeout");
                        //$("#mainContainer").children().prop('disabled', false);
                        //enableListNewForm();
                    }
                    break;
                default:
                    //alert(stat);

            }

        }

        $.ajax(options);
    }

    onLoadPageShoppingCart();

    challengeViewItem();
    challengeVisitLink();

});

(function ($) {
    $(window).load(function () {

//        $("body").mCustomScrollbar({
//            axis: "yx",
//            theme: "dark-thick"  
//        });

    });


})(jQuery);
	