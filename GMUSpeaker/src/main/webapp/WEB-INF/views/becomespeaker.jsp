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
	<div id="content">
		<div class="well">Become Speaker</div>

		<nav class="navbar navbar-default" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<p class="navbar-text">
					If you are a current or retired member of Mason s faculty or staff,
					or a Mason alum, and would like to participate in the Mason
					Speakers program, please complete the form below. All speakers are
					involved on a volunteer basis. Speaking engagements are made by the
					<a href="http://relations.gmu.edu/community-relations/"
						target="_blank">Office of Community and Local Government
						Relations </a> and free of charge to community organizations.
				</p>
				<p class="navbar-text">
					For more information about the program, or to notify us of a
					problem with submission of this form, please contact <a
						href="mailto:sgallag5@gmu.edu" target="_blank">Sarah Gallagher</a>
					, Mason Speakers Coordinator, via <a href="mailto:sgallag5@gmu.edu"
						target="_blank">email</a> or by calling (703) 993-8761.
				</p>
			</div>
		</div>
		</nav>
		<form:form method="POST" action="/GMUSpeaker/becomespeakersubmit"
			commandName="becomeSpeaker" id="becomespeakerform">
			<table class="table borderless">
				<tr>
					<td width="200px">Name:</td>
					<td><form:input class="form-control" path="name" /></td>
					<td width="40px;" />
					<td width="200px">Mason Employee:</td>
					<td><label class="radio-inline"> <form:radiobutton
								path="masonEmployee" value="yes" />Yes
					</label> <label class="radio-inline"> <form:radiobutton
								path="masonEmployee" value="no" />No
					</label></td>
				</tr>
				<tr>
					<td>Work Phone:</td>
					<td><form:input class="form-control" path="workPhone" /></td>
					<td></td>
					<td>Retired</td>
					<td><label class="radio-inline"> <form:radiobutton
								path="retired" value="yes" />Yes
					</label> <label class="radio-inline"> <form:radiobutton
								path="retired" value="no" />No
					</label></td>
				</tr>
				<tr>
					<td>Home Phone:</td>
					<td><form:input class="form-control" path="homePhone" /></td>
					<td></td>
					<td>Mason Alumnus:</td>
					<td><label class="radio-inline"> <form:radiobutton
								path="masonAlumnus" value="yes" />Yes
					</label> <label class="radio-inline"> <form:radiobutton
								path="masonAlumnus" value="no" />No
					</label></td>
				</tr>
				<tr>
					<td>Cell Phone:</td>
					<td><form:input class="form-control" path="cellPhone" /></td>
					<td></td>
					<td colspan="2">Biography:</td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><form:input class="form-control" path="email" /></td>
					<td></td>
					<td colspan="2" rowspan="2"><form:textarea
							class="form-control" path="biography" cols="50" rows="5" /></td>
				</tr>
				<tr>
				<tr>
					<td align="right" colspan="5"><input id="submit" type="submit"
						class="btn btn-primary" value="Submit"></td>
				</tr>
			</table>

		</form:form>
	</div>
	<script src="/GMUSpeaker/resources/js/becomespeaker.js"></script>
	<script src="/GMUSpeaker/resources/js/jquery-2.1.1.js"></script>
</body>