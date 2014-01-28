$(document).ready(function() {
    $('a.docButn').click(function() {
        $(".mobileIndex").hide();
        $(".mobileNav").toggle();
    });
    $('a.userButn').click(function() {
        $(".mobileNav").hide();
        $(".mobileIndex").toggle();
    });
});
