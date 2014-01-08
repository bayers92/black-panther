$(document).ready(function() {
	if (window.location.href.indexOf('?voted') != -1) {
		for(var i in localStorage) {
			$("#voteUp_"+localStorage.key(i)).hide();				
		}
		comment_number = document.location.href.split('_')[1];
		$("#voteUp_" + comment_number).hide();
		localStorage.setItem(comment_number, true);
    };
});