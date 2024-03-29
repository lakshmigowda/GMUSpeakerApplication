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

	<div class="well">Talk Edit</div>

	<div id="content">
		<c:choose>
			<c:when test="${fn:length(talks) > 0}">
				<p>Choose the talk to edit by clicking "Edit" button.</p>
				<table class="table">
					<tr>
						<th>Talk Title</th>
						<th>Topic</th>
						<th>Equipment</th>
						<th>Date</th>
						<th>Time</th>
						<th>Location</th>
						<th>Parking</th>
						<th>Speaker</th>
						<th>Email</th>
						<th>Edit</th>
					</tr>

					<c:forEach var="talk" items="${talks}" varStatus="counter">

						<tr>
							<td>${talk.topicTitle}</td>
							<td>${talk.categories}</td>
							<td>${talk.avs}</td>
							<td>${talk.date}</td>
							<td>${talk.time}</td>
							<td>${talk.location}</td>
							<td>${talk.parking}</td>
							<td>${talk.user.name}</td>
							<td>${talk.user.email}</td>
							<td><button type="button"
									class="btn btn-primary edittalkbtn" id="${talk.id}">Edit</button></td>
						</tr>

					</c:forEach>

				</table>
			</c:when>
			<c:otherwise>
				<p>No talks found.</p>
			</c:otherwise>
		</c:choose>
	</div>
	<script src="/GMUSpeaker/resources/js/edittalk.js"></script>
	<script src="/GMUSpeaker/resources/js/jquery-2.1.1.js"></script>
</body>