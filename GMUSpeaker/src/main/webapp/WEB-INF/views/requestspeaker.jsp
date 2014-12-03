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
	<div class="well">Request Speaker</div>
	<div id="content">

		<form:form method="POST" action="/GMUSpeaker/requestspeakersubmit"
			commandName="requestSpeaker" id="requestspeakerform">
			<h4 style="margin-left: 20px;">Speaker Information</h4>
			<table class="table borderless">
				<tr>
					<td>Speaker:</td>
					<td><form:select class="form-control" path="speaker.email">
							<form:options items="${speakers}" />
						</form:select></td>
					<td width="40px"></td>
					<td>Name:</td>
					<td><form:input class="form-control" path="speaker.name"></form:input></td>
					<td width="40px"></td>
					<td>Email:</td>
					<td><form:input class="form-control" path="speaker.email"></form:input></td>

				</tr>
			</table>
			<h4 style="margin-left: 20px;">Organization Information</h4>
			<table class="table borderless">
				<tr>
					<td width="200px">Organization:</td>
					<td><form:input class="form-control" path="organization"></form:input></td>
					<td width="40px"></td>
					<td width="200px">Address Line1:</td>
					<td><form:input class="form-control"
							path="organizationaddressline1"></form:input></td>
				</tr>
				<tr>
					<td>Contact Person:</td>
					<td><form:input class="form-control" path="orgperson"></form:input></td>
					<td></td>
					<td>Address Line2:</td>
					<td><form:input class="form-control" path="orgaddressline2"></form:input></td>
				</tr>
				<tr>
					<td>Daytime Phone:</td>
					<td><form:input class="form-control" path="daytimephone"></form:input></td>
					<td></td>
					<td>City:</td>
					<td><form:input class="form-control" path="orgcity"></form:input></td>
				</tr>
				<tr>
					<td>Best Phone:</td>
					<td><form:input class="form-control" path="bestphone"></form:input></td>
					<td></td>
					<td>State:</td>
					<td><form:input class="form-control" path="orgstate"></form:input></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><form:input class="form-control" path="email"></form:input></td>
					<td></td>
					<td>Zip:</td>
					<td><form:input class="form-control" path="orgzip"></form:input></td>
				</tr>
			</table>

			<h4 style="margin-left: 20px;">Event Information</h4>
			<table class="table borderless">
				<tr>
					<td width="200px">Date of the event:</td>
					<td><form:input class="form-control" path="date"></form:input></td>
					<td width="40px"></td>
					<td width="200px">Location:</td>
					<td><form:input class="form-control" path="location"></form:input></td>
				</tr>
				<tr>
					<td>Time of the event:</td>
					<td><form:input class="form-control" path="time"></form:input></td>
					<td></td>
					<td>Room Number:</td>
					<td><form:input class="form-control" path="roomnumber"></form:input></td>
				</tr>
				<tr>
					<td>Alternate Date of the event:</td>
					<td><form:input class="form-control" path="alternatedate"></form:input></td>
					<td></td>
					<td>Address Line1:</td>
					<td><form:input class="form-control" path="eventaddressline1"></form:input></td>
				</tr>
				<tr>
					<td>Alternate Time of the event:</td>
					<td><form:input class="form-control" path="alternatetime"></form:input></td>
					<td></td>
					<td>Address Line2:</td>
					<td><form:input class="form-control" path="eventaddressline2"></form:input></td>
				</tr>
				<tr>
					<td>Allotted Time for speaker:</td>
					<td><form:input class="form-control" path="allottedtime"></form:input></td>
					<td></td>
					<td>City:</td>
					<td><form:input class="form-control" path="eventcity"></form:input></td>
				</tr>
				<tr>
					<td>Audience Size:</td>
					<td><form:input class="form-control" path="size"></form:input></td>
					<td></td>
					<td>State:</td>
					<td><form:input class="form-control" path="eventstate"></form:input></td>
				</tr>
				<tr>
					<td>Audience Composition:</td>
					<td><form:input class="form-control" path="composition"></form:input></td>
					<td></td>
					<td>Zip:</td>
					<td><form:input class="form-control" path="eventzip"></form:input></td>
				</tr>
				<tr>
					<td>Requested Topic:</td>
					<td><form:input class="form-control" path="requestedtopic"></form:input></td>
					<td></td>
					<td>Public parking available:</td>
					<td><label class="radio-inline"> <form:radiobutton
								path="parking" value="yes" />Yes
					</label> <label class="radio-inline"> <form:radiobutton
								path="parking" value="no" />No
					</label></td>
				</tr>
				<tr>
					<td>Alternate Topic 1:</td>
					<td><form:input class="form-control" path="alternatetopic1"></form:input></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>Alternate Topic 2:</td>
					<td><form:input class="form-control" path="alternatetopic2"></form:input></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td colspan="5"><h4 style="margin-left: 20px;">Comments</h4></td>
				</tr>
				<tr>
					<td colspan="2"><form:textarea class="form-control"
							path="comments" cols="50" rows="5" /></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td align="right"><input id="submit" type="submit"
						class="btn btn-primary" value="Submit"></td>
				</tr>
			</table>
		</form:form>
	</div>
	<script src="/GMUSpeaker/resources/js/requestspeaker.js"></script>
	<script src="/GMUSpeaker/resources/js/jquery-2.1.1.js"></script>
</body>