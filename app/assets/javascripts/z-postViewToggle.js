$(document).ready(function() {
    $('#topicsView').click(function() {
        $(".top5").show();
        $(".suggest").hide();
		window.location.hash = '#top5';
    });
    $('#suggestTopic').click(function() {
        $(".top5").hide();
        $(".suggest").show();
		window.location.hash = '#postFooter';
    });
});
