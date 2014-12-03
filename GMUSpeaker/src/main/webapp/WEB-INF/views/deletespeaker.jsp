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

	<div class="well">Delete Speaker</div>

	<div id="content">
		<c:choose>
			<c:when test="${fn:length(speakers) > 0}">
				<p>Choose the speaker to delete by clicking "Delete" button.</p>
				<table class="table">
					<tr>
						<th>Name</th>
						<th>Email</th>
						<th>Delete</th>
					</tr>

					<c:forEach var="speaker" items="${speakers}" varStatus="counter">

						<tr>
							<td>${speaker.name}</td>
							<td>${speaker.email}</td>
							<td><button type="button"
									class="btn btn-primary deletespeakerbtn" id="${speaker.email}">Delete</button></td>
						</tr>

					</c:forEach>
				</table>
			</c:when>
			<c:otherwise>
				<p>No speakers found.</p>
			</c:otherwise>
		</c:choose>
	</div>
	<script src="/GMUSpeaker/resources/js/deletespeaker.js"></script>
	<script src="/GMUSpeaker/resources/js/jquery-2.1.1.js"></script>
</body>