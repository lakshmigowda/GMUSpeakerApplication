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
			<h3 class="navbar-text">Edit Speaker</h3>
		</div>
	</div>
	</nav>
	<div id="content">
		<table class="table borderless">
			<tbody>
				<tr>
					<td colspan="3"><p>Choose the speaker to edit and click
							the "edit" button.</p></td>
				</tr>
				<tr>
					<td>Speaker:</td>
					<td><select class="form-control" id="editspeakercombo">
							<c:choose>
								<c:when test="${fn:length(speakers) > 0}">
									<c:forEach var="speaker" items="${speakers}"
										varStatus="counter">
										<option value="${speaker.id}">${speaker.name}</option>
									</c:forEach>
								</c:when>
								<c:otherwise>
								</c:otherwise>
							</c:choose>
					</select></td>
					<td><button type="button" class="btn btn-primary"
							id="editspeakerbtn">Edit</button></td>
				</tr>
			</tbody>
		</table>
	</div>
	<script src="/GMUSpeaker/resources/js/editspeaker.js"></script>
	<script src="/GMUSpeaker/resources/js/jquery-2.1.1.js"></script>
</body>