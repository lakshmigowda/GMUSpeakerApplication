$(document).ready(
		function() {
			var self = $(this);
			$(".requesttalkspeakerbtn").click(
					function() {
						var email = $(this).attr('id');
						$.get("/GMUSpeaker/requesttalkspeakersubmit?email="
								+ email, function(data, status) {
							$('#result').html(data);
						});
					});
		});
