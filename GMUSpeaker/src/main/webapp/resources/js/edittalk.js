$(document)
		.ready(
				function() {

					$(".edittalkbtn").click(
							function() {
								var id = $(this).attr('id');
								$.get("/GMUSpeaker/edittalkrequest?id=" + id,
										function(data, status) {
											$('#result').html(data);
										});

							});

					$("#edittalkform")
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
						$("#edittalkform").submit();
					});
				});
