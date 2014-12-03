$(document).ready(
		function() {

			$("#categorysearchbtn").click(
					function() {
						var category = $("#categorycombo").find(
								'option:selected').val();
						$.get(
								"/GMUSpeaker/categorysearch?category="
										+ category, function(data, status) {
									$('#result').html(data);
								});

					});

			$("#speakersearchbtn").click(
					function() {
						var name = $("#speakercombo").find('option:selected')
								.val();
						$.get("/GMUSpeaker/speakersearch?name=" + name,
								function(data, status) {
									$('#result').html(data);
								});

					});

			$("#keywordsearchbtn").click(
					function() {
						var keyword = $("#keywordinput").val();
						$.get("/GMUSpeaker/keywordsearch?keyword=" + keyword,
								function(data, status) {
									$('#result').html(data);
								});

					});

		});
