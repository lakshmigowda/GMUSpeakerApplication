$(document).ready(
		function() {
			var self = $(this);
			$("#deletespeakerbtn").click(
					function() {
						var id = $('#deletespeakercombo').val();
						$.get("/GMUSpeaker/deletespeakersubmit?id=" + id,
								function(data, status) {
									$('#result').html(data);
								});

					});

		});
