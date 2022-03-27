function select(s,tab){
	s=''+s;
	$('.menu-tab-button').addClass("other");
	document.getElementById(s).classList.remove("other");
	$('.content-info').addClass("other-content");
	document.getElementById(tab).classList.remove("other-content");
}