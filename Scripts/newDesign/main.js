jQuery(document).ready(function ($) {
    var secondaryNav = $('.header');
    var secondaryNavTopPosition = 0;
    if (typeof secondaryNav === "undefined") {
    } else {
        secondaryNavTopPosition = secondaryNav.offset().top;
    }




    $(".menu").hover(
            function (e) {
                //$(this).parent().parent().css("overflow-y", "none");
                $(this).parent().parent().css({
                    "width": function () { return "100%"; },
                    "overflow-y": function () { return "initial"; }
                });
            }, // over
            function (e) {
                //$(this).parent().parent().css("overflow-y", "auto");
                //$(this).parent().parent().css("width", "30%");
                $(this).parent().parent().css({
                    "width": function () { return "30%"; },
                    "overflow-y": function () { return "auto"; }
                });
            }  // out
        );



    $(window).on('scroll', function () {
        //on desktop - assign a position fixed to logo and action button and move them outside the viewport

        //on desktop - fix secondary navigation on scrolling
        if ($(window).scrollTop() > secondaryNavTopPosition) {
            if (secondaryNav.hasClass("is-fixed")) {

            } else {
                //fix secondary navigation
                secondaryNav.addClass('is-fixed');
                //push the .cd-main-content giving it a top-margin
                $('.cd-main-content').addClass('has-top-margin');
                //on Firefox CSS transition/animation fails when parent element changes position attribute
                //so we to change secondary navigation childrens attributes after having changed its position value
                setTimeout(function () {
                    secondaryNav.addClass('animate-children');
                    $('.logoOnstore').addClass('fixed');
                    $('.topMenu').addClass('blank');
                    $('.linkOnstore').addClass('fixed');
                    $('.searchContainer').addClass('fixed');
                    $('.cartContainerDesktop').addClass('fixed');
                    $('.mcontentContainer').addClass('fixed');
                    $('#btnLogin').addClass('fixed');
                    $('#btnAkun').addClass('fixed');
                    $('.formLogin').addClass('fixed');
                    $('.menuClickCategory').addClass('fixed');
                    //$("#background").fadeOut("slow");
                    //$(".divShoppingCart .shopCart").fadeOut("slow");

                    var top = 57;
                    $(".categoryFixedBackground").css("top", top + "px");
                }, 50);
            }
        } else {
            secondaryNav.removeClass('is-fixed');
            $('.cd-main-content').removeClass('has-top-margin');
            setTimeout(function () {
                secondaryNav.removeClass('animate-children');
                $('.logoOnstore').removeClass('fixed');
                $('.topMenu').removeClass('blank');
                $('.linkOnstore').removeClass('fixed');
                $('.searchContainer').removeClass('fixed');
                $('.cartContainerDesktop').removeClass('fixed');
                $('.mcontentContainer').removeClass('fixed');
                $('#btnLogin').removeClass('fixed');
                $('#btnAkun').removeClass('fixed');
                $('.formLogin').removeClass('fixed');
                $('.menuClickCategory').removeClass('fixed');

                var breadCrumbsTop = 0;
                var breadCrumbsHeight = 0;
                if ($(".menuBreadCrumbs").length <= 0) {
                } else {
                    breadCrumbsTop = $(".menuBreadCrumbs").offset().top;
                    breadCrumbsHeight = $(".menuBreadCrumbs").height();
                }
                var top = breadCrumbsTop + breadCrumbsHeight;
                $(".categoryFixedBackground").css("top", top + "px");
            }, 50);
        }

        if ($(".contentContainer > .categoryMenu").length > 0) {
            var positionCategoryMenu = $(".contentContainer > .categoryMenu").offset().top + $(".contentContainer > .categoryMenu").height();
            if ($(window).scrollTop() + $(".headerOutside .header").height() > positionCategoryMenu) {
                $(".outsideContainer .menuClickCategory").removeClass("showMenu").addClass("showMenu");
                $(".categoryFixedBackground").removeClass("hideOnTop");
            } else {
                $(".outsideContainer .menuClickCategory").removeClass("showMenu");
                $(".categoryFixedBackground").removeClass("hideOnTop").addClass("hideOnTop");

            }
        } else {
            if ($(".itemDetailBreadCrumbs").length > 0) {
                var positionCategoryMenu = $(".itemDetailBreadCrumbs").offset().top + $(".itemDetailBreadCrumbs").height();
                if ($(window).scrollTop() + $(".headerOutside .header").height() > positionCategoryMenu) {
                    $(".outsideContainer .menuClickCategory").removeClass("showMenu").addClass("showMenu");
                    $(".categoryFixedBackground").removeClass("hideOnTop");
                } else {
                    $(".outsideContainer .menuClickCategory").removeClass("showMenu");
                    $(".categoryFixedBackground").removeClass("hideOnTop");
                }
            }
        }


    });

    $("#linkShowMenu").click(function (e) {
        if ($(".mcontentContainer").hasClass('show')) {
            $(".mcontentContainer").removeClass('show');
            $(".searchContainer").removeClass('show');
            $(".linkOnstore").removeClass('show');
            $(".backWhiteBlur").removeClass('show');

            $(".categoryFixedBackground").removeClass("showMenu");
        } else {
            $(".mcontentContainer").addClass('show');
            $(".searchContainer").addClass('show');
            $(".linkOnstore").addClass('show');
            $(".backWhiteBlur").addClass('show');


            $(".categoryFixedBackground").removeClass("showMenu").addClass("showMenu");
        }
        e.preventDefault();
        return false;
    });
    $(".loginContainer").click(function (e) {
        if ($(".formLogin").hasClass('show')) {
            $(".formLogin").removeClass('show');
            $(".backTransparent").removeClass('show');
        } else {
            $(".formLogin").addClass('show');
            $(".backTransparent").addClass('show');
            $(".formLogin input[type=text]").val("");
            $(".formLogin input[type=text]:first-child").focus();
        }
        e.preventDefault();
    });
    $("#btnLogin").click(function (e) {
        if ($(".formLogin").hasClass('show')) {
            $(".formLogin").removeClass('show');
            $(".backTransparent").removeClass('show');
        } else {
            $(".formLogin").addClass('show');
            $(".backTransparent").addClass('show');
        }
        e.preventDefault();
    });
    $("#btnAkun").click(function (e) {
        if ($(".formLogin").hasClass('show')) {
            $(".formLogin").removeClass('show');
            $(".backTransparent").removeClass('show');
        } else {
            $(".formLogin").addClass('show');
            $(".backTransparent").addClass('show');
        }
        e.preventDefault();
    });
    $("#btnLoginMobile").click(function (e) {
        if ($(".formLogin").hasClass('show')) {
            $(".formLogin").removeClass('show');
            $(".backTransparent").removeClass('show');
        } else {
            $(".formLogin").addClass('show');
            $(".backTransparent").addClass('show');
        }
        e.preventDefault();
    });
    $("#btnAkunMobile").click(function (e) {
        if ($(".formLogin").hasClass('show')) {
            $(".formLogin").removeClass('show');
            $(".backTransparent").removeClass('show');
        } else {
            $(".formLogin").addClass('show');
            $(".backTransparent").addClass('show');
        }
        e.preventDefault();
    });

//    $(".listContainer .btnListSupplier").click(function (e) {
//        if ($(".listContainer .boxListSupplier").hasClass('show')) {
//            $(".listContainer .boxListSupplier").removeClass('show');
//            $(".backWhiteBlur").removeClass('show');
//        } else {
//            $(".listContainer .boxListSupplier").addClass('show');
//            $(".backWhiteBlur").addClass('show');
//        }
//        e.preventDefault();
//    });

    $(".backWhiteBlur").click(function (e) {
        $(".mcontentContainer").removeClass('show');
        $(".searchContainer").removeClass('show');
        $(".linkOnstore").removeClass('show');
        $(".backWhiteBlur").removeClass('show');
        $(".listContainer .boxListSupplier").removeClass('show');
    });
    $(".btnCloseAkun").click(function (e) {
        $(".formLogin").removeClass('show');
        $(".backTransparent").removeClass('show');
    });
    $(".backTransparent").click(function (e) {
        $(".formLogin").removeClass('show');
        $(".backTransparent").removeClass('show');
    });

    //Menu Mobile
    $(".menu").click(function (e) {
        $(".menu").removeClass('selected');
        $(this).addClass('selected');

    });
    $(".btnBack").click(function (e) {
        $(this).parent().parent().parent().parent().removeClass('selected');
        //$(".menu").removeClass('selected');

        e.stopPropagation();
    });
    $(".btnCloseMenu").click(function (e) {
        $(".backWhiteBlur").removeClass('show');
        $(".mcontentContainer").removeClass('show');
    });
    $(".categoryFixedBackground").mouseover(function (e) {
        if ($(".categoryFixedBackground").hasClass("showMenu")) {
            if ($(e.target).is(".categoryMenu") ||
                $(e.target).is(".categoryFixedBackground")) {

                $(".categoryFixedBackground").removeClass("showMenu");

                $(".mcontentContainer").removeClass('show');
                $(".searchContainer").removeClass('show');
                $(".linkOnstore").removeClass('show');
                $(".backWhiteBlur").removeClass('show');
                return false;
            }
        }
    });
    $(".menuBreadCrumbs, .menuClickCategory").mouseover(function (e) {
        $(".categoryFixedBackground").removeClass("showMenu").addClass("showMenu");

        $(".mcontentContainer").removeClass('show').addClass('show');
        $(".searchContainer").removeClass('show').addClass('show');
        $(".linkOnstore").removeClass('show').addClass('show');
        $(".backWhiteBlur").removeClass('show').addClass('show');


        if ($(this).hasClass("menuBreadCrumbs")) {
            var top = $(".menuBreadCrumbs").offset().top + $(".menuBreadCrumbs").height();
            $(".categoryFixedBackground").css("top", top + "px");
        } else {
            var top = 57;
            $(".categoryFixedBackground").css("top", top + "px");
        }

        e.preventDefault();
        return false;
    });
    $(document).mouseover(function (e) {
        if ($(".categoryFixedBackground").hasClass("showMenu")) {
            if (
                !$(e.target).parent().is(".categoryMenu") &&
                !$(e.target).parent().parent().is(".categoryMenu") &&
                !$(e.target).parent().parent().parent().is(".categoryMenu") &&
                !$(e.target).parent().parent().parent().parent().is(".categoryMenu") &&
                !$(e.target).parent().parent().parent().parent().parent().is(".categoryMenu") &&
                !$(e.target).parent().parent().parent().parent().parent().parent().is(".categoryMenu") &&
                !$(e.target).parent().parent().parent().parent().parent().parent().parent().is(".categoryMenu") &&
                !$(e.target).parent().is(".mcontentContainer") &&
                !$(e.target).parent().parent().is(".mcontentContainer") &&
                !$(e.target).parent().parent().parent().is(".mcontentContainer") &&
                !$(e.target).parent().parent().parent().parent().is(".mcontentContainer") &&
                !$(e.target).parent().parent().parent().parent().parent().is(".mcontentContainer") &&
                !$(e.target).parent().parent().parent().parent().parent().parent().is(".mcontentContainer") &&
                !$(e.target).parent().parent().parent().parent().parent().parent().parent().is(".mcontentContainer")
                ) {
                $(".categoryFixedBackground").removeClass("showMenu");

                $(".mcontentContainer").removeClass('show');
                $(".searchContainer").removeClass('show');
                $(".linkOnstore").removeClass('show');
                $(".backWhiteBlur").removeClass('show');
            }

        }
    });
});