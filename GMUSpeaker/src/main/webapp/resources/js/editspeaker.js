$(document)
		.ready(
				function() {

					$("#editspeakerbtn").click(
							function() {
								var id = $('#editspeakercombo').val();
								$.get(
										"/GMUSpeaker/editspeakerrequest?id="
												+ id, function(data, status) {
											$('#result').html(data);
										});

							});

					$("#editspeakerform")
							.submit(
									function(e) {
										e.preventDefault();
										var postData = $(this).serializeArray();
										var formURL = $(this).attr("action");

										$
												.ajax({
													url : formURL,
													type : "POST",
													data : postData,
													success : function(data,
															textStatus, jqXHR) {
														window.location
																.replace("http://localhost:8080/GMUSpeaker/app");
													},
													error : function(jqXHR,
															textStatus,
															errorThrown) {
														alert("couldn't submit the data!")
													}
												});

									});

					$('#submit').on('click', function() {
						$("#editspeakerform").submit();
					});
				});
