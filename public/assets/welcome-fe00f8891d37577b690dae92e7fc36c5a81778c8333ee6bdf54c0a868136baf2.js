// jQuery to collapse the navbar on scroll
function collapseNavbar() {
    if ($(".navbar").offset().top > 50) {
        $(".navbar-fixed-top").addClass("top-nav-collapse");
    } else {
        $(".navbar-fixed-top").removeClass("top-nav-collapse");
    }
}

$(window).scroll(collapseNavbar);
$(document).ready(collapseNavbar);

// jQuery for page scrolling feature - requires jQuery Easing plugin
$(function() {
    var navHeight = $('#fixedNav').outerHeight(); // adjust this for your nav id
    $(window).bind('resize', function()
    {
        navHeight = $('#fixedNav').outerHeight(); // adjust this for your nav id
    });
    $('a.page-scroll').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });
});

// Closes the Responsive Menu on Menu Item Click
$('.navbar-collapse ul li a').click(function() {
  if ($(this).attr('class') != 'dropdown-toggle active' && $(this).attr('class') != 'dropdown-toggle') {
    $('.navbar-toggle:visible').click();
  }
});


//  $(document).ready(function(){
//     // Activate Carousel
//     $("#myCarousel").carousel();
    
//     // Enable Carousel Indicators
//     $(".item1").click(function(){
//         $("#myCarousel").carousel(0);
//     });
//     $(".item2").click(function(){
//         $("#myCarousel").carousel(1);
//     });
//     $(".item3").click(function(){
//         $("#myCarousel").carousel(2);
//     });
//     $(".item4").click(function(){
//         $("#myCarousel").carousel(3);
//     });
    
//     // Enable Carousel Controls
//     $(".left").click(function(){
//         $("#myCarousel").carousel("prev");
//     });
//     $(".right").click(function(){
//         $("#myCarousel").carousel("next");
//     });
// });

$(document).ready(function() {  
   $("#myCarousel").swiperight(function() {  
      $("#myCarousel").carousel('prev');  
    });  
   $("#myCarousel").swipeleft(function() {  
      $("#myCarousel").carousel('next');  
   });  
});  
