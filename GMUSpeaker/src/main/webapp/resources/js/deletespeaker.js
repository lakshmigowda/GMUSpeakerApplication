$(document).ready(
		function() {
			var self = $(this);
			$(".deletespeakerbtn").click(
					function() {
						var id = $(this).attr('id');
						$.get("/GMUSpeaker/deletespeakersubmit?id=" + id,
								function(data, status) {
									$('#result').html(data);
								});

					});

		});
