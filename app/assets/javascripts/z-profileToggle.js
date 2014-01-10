$(document).ready(function() {
    $('#articles').click(function() {
        $(".writtenArticles").show();
        $(".comments").hide();
        $(".suggest").hide();
    });
    $('#topics').click(function() {
        $(".comments").show();
        $(".writtenArticles").hide();
        $(".suggest").hide();
    });
    $('a.butn').click(function() {
        $(".writtenArticles").hide();
        $(".comments").hide();
        $(".suggest").show();
    });
});
