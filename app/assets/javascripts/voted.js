$(document).ready(function() {
	if (window.location.href.indexOf('user') != -1) {	
		for (var i = 0; i < localStorage.length; i++){
			$("#voteUp_"+localStorage.key(i)).hide();				
		}
		if (window.location.href.indexOf('?voted') != -1) {
			comment_number = document.location.href.split('_')[1];
			$("#voteUp_" + comment_number).hide();
			localStorage.setItem(comment_number, true);
	    };
	};
});