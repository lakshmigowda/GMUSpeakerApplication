<!-- Homepage -->
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
<link rel="stylesheet" type="text/css"
	href="/GMUSpeaker/resources/css/home.css" />

</head>
<%@ page import="gmu.speaker.model.User"%>
<%
	User user = (User) request.getAttribute("globaluser");
%>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">GMU Speaker</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">Welcome ${globaluser.name}, You have logged
						in as ${globaluser.role}!</a></li>
				<li><a href="#" id="logout">Logout</a></li>
			</ul>
		</div>
	</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<ul class="nav nav-sidebar">
					<li><div class="well" style="font-weight: bold;">Talk</div></li>
					<li class="active"><a href="#" id="searchtalk">Search</a></li>
					<li><a href="#" id="listtalks">List</a></li>

					<%
						if ("speaker".equals(user.getRole())
								|| "admin".equals(user.getRole())) {
					%>
					<li><a href="#" id="addtalk">Add</a></li>
					<li><a href="#" id="edittalk">Edit</a></li>
					<li><a href="#" id="deletetalk">Delete</a></li>
					<%
						}
					%>

					<li><div class="well" style="font-weight: bold;">Speaker</div></li>
					<%
						if ("speaker".equals(user.getRole())) {
					%>
					<li><a href="#" id="updateprofile">Profile</a></li>
					<%
						}
					%>

					<li><a href="#" id="requestspeaker">Request</a></li>

					<%
						if ("admin".equals(user.getRole())) {
					%>
					<li><a href="#" id="editspeaker">Edit</a></li>
					<li><a href="#" id="deletespeaker">Delete</a></li>
					<%
						}
					%>

				</ul>
			</div>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main"
				id="result"></div>
		</div>
	</div>
	<script src="/GMUSpeaker/resources/js/jquery-2.1.1.js"></script>
	<script src="/GMUSpeaker/resources/js/home.js"></script>
	<script src="/GMUSpeaker/resources/js/bootstrap.min.js"></script>
</body>
</html>