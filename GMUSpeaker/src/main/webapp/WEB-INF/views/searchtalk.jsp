<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GMU Speaker Application</title>
<link rel="stylesheet" type="text/css"
	href="/GMUSpeaker/resources/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="/GMUSpeaker/resources/css/home.css" />
<link rel="stylesheet" type="text/css"
	href="/GMUSpeaker/resources/css/dashboard.css" />
</head>
<body>
	<div class="well">Search Talk</div>
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
					<td><select id="categorycombo" name="category"
						class="form-control">
							<option value="allcategories" selected="selected">ALL
								CATEGORIES</option>
							<option value="Aging">Aging</option>
							<option value="American Culture">American Culture</option>
							<option value="Arts">Arts</option>
							<option value="Business and Finance">Business and
								Finance</option>
							<option value="Childhood
								Development and Parenting">Childhood
								Development and Parenting</option>
							<option value="Communication">Communication</option>
							<option value="Crime/Violence">Crime/Violence</option>
							<option value="Economic
								Development">Economic
								Development</option>
							<option value="Education and
								Teaching">Education
								and Teaching</option>
							<option value="Environment">Environment</option>
							<option value="Ethics">Ethics</option>
							<option value="George Mason
								University">George
								Mason University</option>
							<option value="Government and
								Politics">Government
								and Politics</option>
							<option value="History">History</option>
							<option value="Human
								Resource Management/Personnel">Human
								Resource Management/Personnel</option>
							<option value="Judaic Studies">Judaic Studies</option>
							<option value="Law Enforcement">Law Enforcement</option>
							<option value="Leadership
								and Career Development">Leadership
								and Career Development</option>
							<option value="Nonprofit
								Organizations and Charities">Nonprofit
								Organizations and Charities</option>
							<option value="Philosophy">Philosophy</option>
							<option value="Psychology">Psychology</option>
							<option value="Public Policy and
								the Law">Public
								Policy and the Law</option>
							<option value="Real Estate">Real Estate</option>
							<option value="Religion">Religion</option>
							<option value="Research">Research</option>
							<option value="Safety">Safety</option>
							<option value="Transportation">Transportation</option>
							<option value="Washington
								Metropolitan Regional Issues">Washington
								Metropolitan Regional Issues</option>
							<option value="Science, Technology, Engineering and Math">Science,
								Technology, Engineering and Math</option>
							<option value="Washington Metropolitan Regional Issues">Washington
								Metropolitan Regional Issues</option>
					</select></td>
					<td><button type="button" id="categorysearchbtn"
							class="btn btn-primary">Submit</button></td>
				</tr>
				<tr>
					<td>Speakers:</td>
					<td><select id="speakercombo" name="speaker"
						class="form-control">
							<option value="allspeakers" selected="selected">ALL
								SPEAKERS</option>
							<c:choose>
								<c:when test="${fn:length(speakers) > 0}">
									<c:forEach var="speaker" items="${speakers}"
										varStatus="counter">
										<option value="${speaker.name}">${speaker.name}</option>
									</c:forEach>
								</c:when>
								<c:otherwise>
								</c:otherwise>
							</c:choose>
					</select></td>
					<td><button type="button" id="speakersearchbtn"
							class="btn btn-primary">Submit</button></td>
				</tr>
				<tr>
					<td>Keyword Search:</td>
					<td><input id="keywordinput" type="text" class="form-control" /></td>
					<td><button type="button" id="keywordsearchbtn"
							class="btn btn-primary">Submit</button></td>
				</tr>
			</tbody>
		</table>
	</div>
	<script src="/GMUSpeaker/resources/js/searchtalk.js"></script>
	<script src="/GMUSpeaker/resources/js/jquery-2.1.1.js"></script>
</body>