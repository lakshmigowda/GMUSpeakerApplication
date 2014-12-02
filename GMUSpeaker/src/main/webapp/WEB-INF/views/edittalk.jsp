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
	href="/GMUSpeaker/resources/css/dashboard.css" />
</head>
<body>

	<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<h3 class="navbar-text">Edit Talk</h3>
		</div>
	</div>
	</nav>
	<p>Choose the talk to edit by clicking "Edit" button.</p>
	<div id="content">
		<table class="table">
			<tr>
				<th>Topic Title</th>
				<th>Categories</th>
				<th>A/V</th>
				<th>Delete</th>
			</tr>
			<c:choose>
				<c:when test="${fn:length(speakers) > 0}">
					<c:forEach var="talk" items="${talks}" varStatus="counter">

						<tr>
							<td>${talk.topicTitle}</td>
							<td>${talk.categories}</td>
							<td>${talk.avs}</td>
							<td><button type="button"
									class="btn btn-primary edittalkbtn" id="${talk.id}">Delete</button></td>
						</tr>

					</c:forEach>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
		</table>
	</div>
	<script src="/GMUSpeaker/resources/js/edittalk.js"></script>
	<script src="/GMUSpeaker/resources/js/jquery-2.1.1.js"></script>
</body>