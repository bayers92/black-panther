$(function() {
    var wordCounts = {};
    $("textarea[id='micropost_content']").keyup(function() {
        var matches = this.value.match(/\b/g);
        wordCounts[this.id] = matches ? matches.length / 2 : 0;
        var finalCount = 0;
        var remainingCount = 140;
        $.each(wordCounts, function(k, v) {
            finalCount += v;
        });
        $('#finalcount').val(finalCount)
    }).keyup();
});