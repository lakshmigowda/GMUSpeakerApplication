<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GMU Speaker Application</title>
<link rel="stylesheet" type="text/css"
	href="/GMUSpeaker/resources/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="/GMUSpeaker/resources/css/dashboard.css" />
</head>
<body>
	<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<h3 class="navbar-text">Search Talk</h3>
		</div>
	</div>
	</nav>
	<div id="content" style="width: 800px;">
		<table class="table borderless">
			<tbody>
				<tr>
					<td colspan="3"><p>Choose from categories or speakers then
							click the "submit" button. As an alternative, you may use keyword
							search.</p></td>
				</tr>
				<tr>
					<td>Categories:</td>
					<td><select id="category" name="category" class="form-control">
							<option value="all" selected="selected">ALL CATEGORIES</option>
							<option value="aging">Aging</option>
							<option value="american-culture">American Culture</option>
							<option value="arts">Arts</option>
							<option value="business-finance">Business and Finance</option>
							<option value="childhood-development-parenting">Childhood
								Development and Parenting</option>
							<option value="communication">communication</option>
							<option value="crimeviolence">Crime/Violence</option>
							<option value="economic-development">Economic
								Development</option>
							<option value="education-teaching">Education and
								Teaching</option>
							<option value="environment">Environment</option>
							<option value="ethics">Ethics</option>
							<option value="george-mason-university">George Mason
								University</option>
							<option value="government-politics">Government and
								Politics</option>
							<option value="history">History</option>
							<option value="human-resource-managementpersonnel">Human
								Resource Management/Personnel</option>
							<option value="judaic-studies">Judaic Studies</option>
							<option value="law-enforcement">Law Enforcement</option>
							<option value="leadership-career-development">Leadership
								and Career Development</option>
							<option value="nonprofit-organizations-charities">Nonprofit
								Organizations and Charities</option>
							<option value="philosophy">Philosophy</option>
							<option value="psychology">Psychology</option>
							<option value="public-policy-the-law">Public Policy and
								the Law</option>
							<option value="real-estate">Real Estate</option>
							<option value="religion">Religion</option>
							<option value="research">Research</option>
							<option value="safety">Safety</option>
							<option value="transportation">Transportation</option>
							<option value="washington-metropolitan-regional-issues">Washington
								Metropolitan Regional Issues</option>
					</select></td>
					<td><button type="button" class="btn btn-primary">Submit</button></td>
				</tr>
				<tr>
					<td>Speakers:</td>
					<td><select id="speaker" name="speaker" class="form-control">
							<option value="all" selected="selected">ALL SPEAKERS</option>
							<option value="alan-abramson">Abramson, Alan</option>
							<option value="katrin-b-anacker">Anacker, Katrin B.</option>
							<option value="david-anderson">Anderson, David</option>
							<option value="robert-baker">Baker, Robert</option>
							<option value="doris-bitler">Bitler, Doris</option>
							<option value="johanna-bockman">Bockman, Johanna</option>
							<option value="don-boileau">Boileau, Don</option>
							<option value="lucy-boland">Boland, Lucy</option>
							<option value="susan-c-bon">Bon, Susan C.</option>
							<option value="mariama-boney">Boney, Mariama</option>
							<option value="kirk-borne">Borne, Kirk</option>
							<option value="karen-bune">Bune, Karen</option>
							<option value="ted-burnes">Burnes, Ted</option>
					</select></td>
					<td><button type="button" class="btn btn-primary">Submit</button></td>
				</tr>
				<tr>
					<td>Keyword Search:</td>
					<td><input id="keyword" type="text" class="form-control" /></td>
					<td><button type="button" class="btn btn-primary">Submit</button></td>
				</tr>
			</tbody>
		</table>
	</div>

</body>