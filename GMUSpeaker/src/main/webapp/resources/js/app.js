$(document)
		.ready(
				function() {
					$('#tabs').tab();
					
					$("#guestbtn").click(function() {
						$.get("/GMUSpeaker/guestlogin", function(data, status) {
							window.location.replace("http://localhost:8080/GMUSpeaker/home");
						});
					});

					$("#loginform")
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

					$('#loginbtn').on('click', function() {
						$("#loginform").submit();
					});

					$("#registerform")
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

					$('#registerbtn').on('click', function() {
						$("#registerform").submit();
					});
				});