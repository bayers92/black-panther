$(document).ready(function() {
	for (var i = 0; i < localStorage.length; i++){
		$("#voteUp_"+localStorage.key(i)).hide();
		$("#voteUpEmpty_"+localStorage.key(i)).show();
	}
	if (window.location.href.indexOf('?voted') != -1) {
		comment_number = document.location.href.split('_').pop();
		$("#voteUp_" + comment_number).hide();
		$("#voteUpEmpty_"+comment_number).show();
		localStorage.setItem(comment_number, true);
    };
});