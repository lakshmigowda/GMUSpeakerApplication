$(document).ready(
		function() {
			var self = $(this);
			$(".deletespeakerbtn").click(
					function() {
						var email = $(this).attr('id');
						$.get("/GMUSpeaker/deletespeakersubmit?email=" + email,
								function(data, status) {
									$('#result').html(data);
								});
					});
		});
