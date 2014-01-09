$(document).ready(function() {
    $('#topicsView').click(function() {
        $(".top5").show();
        $(".suggestTopicView").hide();
    });
    $('#suggestTopic').click(function() {
        $(".top5").hide();
        $(".suggestTopicView").show();
    });
});
