$(document).ready(function() {
	if ((/iphone|ipod|ipad.*os 5/gi).test(navigator.appVersion)) {
	  window.onpageshow = function(evt) {
	    // If persisted then it is in the page cache, force a reload of the page.
	    if (evt.persisted) {
	      document.body.style.display = "none";
	      location.reload();
	    }
	  };
	}
});