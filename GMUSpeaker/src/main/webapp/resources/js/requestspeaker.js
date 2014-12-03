$(document)
		.ready(
				function() {

					$("#speakerscombo").change(function() {
						var email = $('#speakerscombo').val();
						var name = $('#speakerscombo :selected').text();
						$('#speakername').val(name);
						$('#speakeremail').val(email);
					});

					$('#speakerscombo').trigger('change');

					$("#requestspeakerform")
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
																.replace("http://localhost:8080/GMUSpeaker/home");
													},
													error : function(jqXHR,
															textStatus,
															errorThrown) {
														alert("couldn't submit the data!")
													}
												});

									});

					$('#submit').on('click', function() {
						$("#requestspeakerform").submit();
					});
				});
