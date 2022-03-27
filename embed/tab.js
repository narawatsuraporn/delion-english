function selectTab(obj){	
	$('.tab-show').filter(".tab-1").addClass('tab-li');
	$('.tab-li').filter(".tab-1").removeClass('tab-show');
	document.getElementsByClassName('tab-li')[obj].classList.add("tab-show");
	$('.tab-show').filter(".tab-1").removeClass('tab-li');
//Content
	$('.tab-cnt').filter(".tab-1").addClass('tabhide');
	$('.tabhide').filter(".tab-1").removeClass('tab-cnt');
	document.getElementsByClassName('tabhide')[obj].classList.add("tab-cnt");
	$('.tab-cnt').filter(".tab-1").removeClass('tabhide');
}
function selectTab2(obj){	
	$('.tab-show').filter(".tab-2").addClass('tab-li');
	$('.tab-li').filter(".tab-2").removeClass('tab-show');
	$('.tab-li').filter('.tab-2')[obj].classList.add("tab-show");
	$('.tab-show').filter(".tab-2").removeClass('tab-li');
//Content
	$('.tab-cnt').filter(".tab-2").addClass('tabhide');
	$('.tabhide').filter(".tab-2").removeClass('tab-cnt');
	$('.tabhide').filter('.tab-2')[obj].classList.add("tab-cnt");
	$('.tab-cnt').filter(".tab-2").removeClass('tabhide');
}
