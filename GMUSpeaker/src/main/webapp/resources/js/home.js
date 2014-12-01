$(document).ready(function() {
	var self = $(this);

	self.findspeaker();

	$("#findspeaker").click(function() {
		self.findspeaker();
		$(".nav-sidebar li").removeClass("active");
		$(this.parentNode).addClass("active");
	});
	$("#requestspeaker").click(function() {
		self.requestspeaker();
		$(".nav-sidebar li").removeClass("active");
		$(this.parentNode).addClass("active");
	});
	$("#becomespeaker").click(function() {
		self.becomespeaker();
		$(".nav-sidebar li").removeClass("active");
		$(this.parentNode).addClass("active");
	});

	$("#search").click(function() {
		self.search();
	});

});

(function($) {
	jQuery.fn.findspeaker = function() {
		$.get("/GMUSpeaker/findspeaker", function(data, status) {
			$('#result').html(data);
		});
	};
	jQuery.fn.requestspeaker = function() {
		$.get("/GMUSpeaker/requestspeaker", function(data, status) {
			$('#result').html(data);
		});
	};
	jQuery.fn.becomespeaker = function() {
		$.get("/GMUSpeaker/becomespeaker", function(data, status) {
			$('#result').html(data);
		});
	};
	jQuery.fn.search = function() {
		$.get("/GMUSpeaker/search", function(data, status) {
			$('#result').html(data);
		});
	};
})(jQuery);
