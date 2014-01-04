$(document).ready(function() {
    $('a.btn-success').click(function() {
        $(".writtenArticles").show();
        $(".comments").hide();
        $(".suggest").hide();
    });
    $('a.btn-info').click(function() {
        $(".writtenArticles").hide();
        $(".suggest").hide();
        $(".comments").show();
    });
    $('a.btn-danger').click(function() {
        $(".writtenArticles").hide();
        $(".comments").hide();
        $(".suggest").show();
    });
});
