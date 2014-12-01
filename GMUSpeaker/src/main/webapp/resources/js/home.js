$(document).ready(function() {
	var self = $(this);

	self.becomespeaker();

	$("#home").click(function() {
		self.home();
	});
	$("#findspeaker").click(function() {
		self.findspeaker();
	});
	$("#requestspeaker").click(function() {
		self.requestspeaker();
	});
	$("#becomespeaker").click(function() {
		self.becomespeaker();
	});
	$("#faq").click(function() {
		self.home();
	});
	$("#search").click(function() {
		self.home();
	});

});

(function($) {
	jQuery.fn.home = function() {
		$.get("/GMUSpeaker/home", function(data, status) {
			$('#result').html(data);
		});
	};
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
	jQuery.fn.faq = function() {
		$.get("/GMUSpeaker/faq", function(data, status) {
			$('#result').html(data);
		});
	};
	jQuery.fn.search = function() {
		$.get("/GMUSpeaker/search", function(data, status) {
			$('#result').html(data);
		});
	};
})(jQuery);
