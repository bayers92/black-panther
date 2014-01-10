$(document).ready(function() {
    $('#authorIndex').click(function() {
        $(".userIndex").show();
        $(".topicsIndex").hide();
		window.location.hash = '#writers';
    });
    $('#topicIndex').click(function() {
        $(".userIndex").hide();
        $(".topicsIndex").show();
		window.location.hash = '#allTopics';
    });
});
