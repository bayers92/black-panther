$(document).ready(function() {
    $('#articles').click(function() {
        $(".writtenArticles").show();
        $(".comments").hide();
        $(".suggest").hide();
    });
    $('#topics').click(function() {
        $(".writtenArticles").hide();
        $(".suggest").hide();
        $(".comments").show();
    });
    $('a.butn').click(function() {
        $(".writtenArticles").hide();
        $(".comments").hide();
        $(".suggest").show();
    });
});