$(document).ready(function() {
	var self = $(this);

	self.searchtalk();

	$("#logout").click(function() {
		$.get("/GMUSpeaker/logout", function(data, status) {
			window.location.replace("http://localhost:8080/GMUSpeaker/app");
		});
	});

	$("#feedback").click(function() {
		$.get("/GMUSpeaker/feedback", function(data, status) {
			$('#result').html(data);
			$(".nav-sidebar li").removeClass("active");
		});
	});

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
	$("#updateprofile").click(function() {
		self.updateprofile();
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

	$("#editspeaker").click(function() {
		self.editspeaker();
		$(".nav-sidebar li").removeClass("active");
		$(this.parentNode).addClass("active");
	});

	$("#deletetalk").click(function() {
		self.deletetalk();
		$(".nav-sidebar li").removeClass("active");
		$(this.parentNode).addClass("active");
	});

	$("#edittalk").click(function() {
		self.edittalk();
		$(".nav-sidebar li").removeClass("active");
		$(this.parentNode).addClass("active");
	});

	$("#listtalks").click(function() {
		self.listtalks();
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
	jQuery.fn.updateprofile = function() {
		$.get("/GMUSpeaker/updateprofile", function(data, status) {
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
	jQuery.fn.editspeaker = function() {
		$.get("/GMUSpeaker/editspeaker", function(data, status) {
			$('#result').html(data);
		});
	};
	jQuery.fn.deletetalk = function() {
		$.get("/GMUSpeaker/deletetalk", function(data, status) {
			$('#result').html(data);
		});
	};
	jQuery.fn.edittalk = function() {
		$.get("/GMUSpeaker/edittalk", function(data, status) {
			$('#result').html(data);
		});
	};
	jQuery.fn.listtalks = function() {
		$.get("/GMUSpeaker/listtalks", function(data, status) {
			$('#result').html(data);
		});
	};
})(jQuery);
