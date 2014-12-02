$(document).ready(function() {
	var self = $(this);

	self.addtalk();

	$("#searchtalk").click(function() {
		self.searchtalk();
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

	$("#addtalk").click(function() {
		self.addtalk();
		$(".nav-sidebar li").removeClass("active");
		$(this.parentNode).addClass("active");
	});

	$("#deletespeaker").click(function() {
		self.deletespeaker();
		$(".nav-sidebar li").removeClass("active");
		$(this.parentNode).addClass("active");
	});

});

(function($) {
	jQuery.fn.searchtalk = function() {
		$.get("/GMUSpeaker/searchtalk", function(data, status) {
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
	jQuery.fn.addtalk = function() {
		$.get("/GMUSpeaker/addtalk", function(data, status) {
			$('#result').html(data);
		});
	};
	jQuery.fn.deletespeaker = function() {
		$.get("/GMUSpeaker/deletespeaker", function(data, status) {
			$('#result').html(data);
		});
	};
})(jQuery);
