$(document).ready(function() {
	var self = $(this);
	$(".deletetalkbtn").click(function() {
		var id = $(this).attr('id');
		$.get("/GMUSpeaker/deletetalksubmit?id=" + id, function(data, status) {
			$('#result').html(data);
		});
	});
});
