
$(document).ready(function() {
	$('#carouselServices').carousel({
		interval: 2000
	});
	$('.carousel-control-prev').on('click', function() {
		$('#carouselServices').carousel('prev');
	});
	$('.carousel-control-next').on('click', function() {
		$('#carouselServices').carousel('next');
	});
});
