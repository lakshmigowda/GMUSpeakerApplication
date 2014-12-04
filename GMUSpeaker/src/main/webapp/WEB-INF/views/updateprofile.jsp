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
	href="/GMUSpeaker/resources/css/home.css" />
<link rel="stylesheet" type="text/css"
	href="/GMUSpeaker/resources/css/dashboard.css" />
</head>
<body>
	<div id="content">
		<div class="well">Profile Update</div>

		<form:form method="POST" action="/GMUSpeaker/updateprofilesubmit"
			commandName="profile" id="updatepfrofileform">
			<table class="table borderless">
				<tr>
					<td width="200px">Name:</td>
					<td><form:input class="form-control" path="name"
							disabled="true" /> <form:input path="name" hidden="true" /> <form:input
							path="id" hidden="true"></form:input></td>
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
					<td><form:input class="form-control" path="email"
							disabled="true" /> <form:input path="email" hidden="true" /></td>
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
	<script src="/GMUSpeaker/resources/js/updateprofile.js"></script>
	<script src="/GMUSpeaker/resources/js/jquery-2.1.1.js"></script>
</body>