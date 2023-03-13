//탑 메뉴바 fixed 스크롤이벤트
$(window).scroll(function() {
    var scrollTop = $(window).scrollTop();

    if (scrollTop == 0) {
        $(".top-bar").css("background-color", "rgba(0,0,0,0)");
        $(".top-bar").css("height", "110px");
    }
    if (scrollTop > 50) {
        $(".top-bar").css("background-color", "rgba(0,0,0,0.8)");
        $(".top-bar").css("height", "90px");
    }
});

$(".menu-bar > ul > li").click(function() {
    if ($(this).hasClass("active")) {
        $(this).removeClass("active");
        $(".menu-bar > ul > li > a span").removeClass("active");
    } else {
        $(this).addClass("active");
        $(".menu-bar > ul > li > a span").addClass("active");
    }
});

$(".menu-bar > ul > li").click(function() {
    var $menu_bar = $(this).hasClass("active");

    if ($menu_bar) {
        $(".menu-bar > ul > li.active > ul")
            .find("> ul")
            .slideDown(500);
    }
});


$(function() {
    $(".side-menu-bg ,.side-menu-close-btn ").on("click", function() {
        $(".side-menu-bg , .side-menu-bar").fadeOut(300);
    });
    $(".side-btn").on("click", function() {
        $(".side-menu-bg , .side-menu-bar").fadeIn(300);
    });
});

$(function() {
    $(".menu-bar > ul > li").on("click",function (){
        $(this).find('ul').slideToggle(300);
    })
})

//슬라이드 작업

$('.slider-1 > .owl-carousel').owlCarousel({
    autoplay:true, // 오토 플레이
    autoplayTimeout:6000, // 오토 플레이 시에 다음 슬라이드로 넘어가는 주기, 2초
    loop:true,
    margin:0,
    nav:true,
    navText:['<img src="http://hansolbio.com/data/skin/front/0743spaceleader/img/mimg/nav_arrow_left.png">', '<img src="http://hansolbio.com/data/skin/front/0743spaceleader/img/mimg/nav_arrow_right.png">'],
    responsive:{
        0:{
            items:1
        }
    }
});

var $firstDot = $('.slider-1 > .owl-carousel > .owl-dots > .owl-dot.active');

$firstDot.removeClass('active');

setTimeout(function() {
    $firstDot.addClass('active');
}, 10);

//상품리스트 버튼 작업

var listBox1DataCurrentIndex = -1;

$('.down-btn').click(function() {
    listBox1DataCurrentIndex++;
    
    var $data = $('.list-box-data > li').eq(listBox1DataCurrentIndex);
    
    $('.list > .row').append($data.html());
    
    if ( $data.next().length == 0 ) {
        $(this).hide();
    }
});
$('.slider-2 > .owl-carousel').owlCarousel({
    autoplay:false,
    loop:true,
    margin:0,
    nav:true,
    navText:['<img src="http://www.hansolbio.com/data/skin/front/0743spaceleader/img/mimg/top_arrow_right.png">', '<img src="http://www.hansolbio.com/data/skin/front/0743spaceleader/img/mimg/bottom_arrow_left.png">'],
    responsive:{
        0:{
            items:1
        }
    }
});