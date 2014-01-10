$(document).ready(function() {
    $('#authArticles').click(function() {
        $(".articleType").show();
        $(".authTopicsDiv").hide();
    });
    $('#authTopics').click(function() {
        $(".authTopicsDiv").show();
        $(".articleType").hide();
    });
});
