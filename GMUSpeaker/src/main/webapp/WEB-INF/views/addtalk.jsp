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
	<div class="well">Add Talk</div>
	<div id="content">
		<form:form method="POST" action="/GMUSpeaker/addtalksubmit"
			commandName="addTalk" id="addtalkform">
			<table class="table borderless">
				<tr>
					<td width="150px;">Topic Title:</td>
					<td><form:input class="form-control" path="topicTitle" /></td>
					<td width="150px;">Date:</td>
					<td><form:input class="form-control" path="date" /></td>
				</tr>
				<tr>
					<td>Timing:</td>
					<td><form:input class="form-control" path="time" /></td>
					<td>Location:</td>
					<td><form:input class="form-control" path="location" /></td>
				</tr>
				<tr>
					<td>Parking:</td>
					<td><label class="radio-inline"> <form:radiobutton
								path="parking" value="yes" />Yes
					</label> <label class="radio-inline"> <form:radiobutton
								path="parking" value="no" />No
					</label></td>
					<td colspan="2" />
				</tr>
				<tr>
					<td colspan="4">Categories:</td>
				</tr>
				<tr>
					<td colspan="4"><table>
							<tr height="40px;">
								<td width="300px;"><form:checkbox path="categories"
										value="Aging" />Aging</td>
								<td />
								<td width="200px;"><form:checkbox path="categories"
										value="American Culture" />American Culture</td>
								<td />
								<td width="300px;"><form:checkbox path="categories"
										value="Arts" />Arts</td>
								<td />
								<td><form:checkbox path="categories"
										value="Business and Finance" />Business and Finance</td>
							</tr>
							<tr height="40px;">
								<td><form:checkbox path="categories"
										value="Childhood
								Development and Parenting" />Childhood
									Development and Parenting</td>
								<td />
								<td><form:checkbox path="categories" value="Communication" />Communication
								</td>
								<td />
								<td><form:checkbox path="categories" value="Crime/Violence" />Crime/Violence
								</td>
								<td />
								<td><form:checkbox path="categories"
										value="Cultural, Social & World Issues" />Cultural, Social &
									World Issues</td>
							</tr>
							<tr height="40px;">
								<td><form:checkbox path="categories"
										value="Economic Development" />Economic Development</td>
								<td />
								<td><form:checkbox path="categories"
										value="Education and Teaching" />Education and Teaching</td>
								<td />
								<td><form:checkbox path="categories" value="Environment" />Environment
								</td>
								<td />
								<td><form:checkbox path="categories" value="Ethics" />Ethics
								</td>
							</tr>
							<tr height="40px;">
								<td><form:checkbox path="categories"
										value="George Mason University" />George Mason University</td>
								<td />
								<td><form:checkbox path="categories"
										value="Government and Politics" />Government and Politics</td>
								<td />
								<td><form:checkbox path="categories"
										value="Health, Nutrition, Exercise and Sports" />Health,
									Nutrition, Exercise and Sports</td>
								<td />
								<td><form:checkbox path="categories" value="History" />History
								</td>
							</tr>
							<tr height="40px;">
								<td><form:checkbox path="categories"
										value="Human Resource Management/Personnel" />Human Resource
									Management/Personnel</td>
								<td />
								<td><form:checkbox path="categories" value="Judaic Studies" />Judaic
									Studies</td>
								<td />
								<td><form:checkbox path="categories"
										value="Law Enforcement" />Law Enforcement</td>
								<td />
								<td><form:checkbox path="categories"
										value="Leadership and Career Development" />Leadership and
									Career Development</td>
							</tr>
							<tr height="40px;">
								<td><form:checkbox path="categories"
										value="Literature, Poetry and Writing" />Literature, Poetry
									and Writing</td>
								<td />
								<td><form:checkbox path="categories" value="None" />None</td>
								<td />
								<td><form:checkbox path="categories"
										value="Nonprofit Organizations and Charities" />Nonprofit
									Organizations and Charities</td>
								<td />
								<td><form:checkbox path="categories" value="Philosophy" />Philosophy
								</td>
							</tr>
							<tr height="40px;">
								<td><form:checkbox path="categories" value="Psychology" />Psychology
								</td>
								<td />
								<td><form:checkbox path="categories"
										value="Public Policy and the Law" />Public Policy and the Law</td>
								<td />
								<td><form:checkbox path="categories" value="Religion" />Religion
								</td>
								<td />
								<td><form:checkbox path="categories" value="Safety" />Safety
								</td>
							</tr>
							<tr height="40px;">
								<td><form:checkbox path="categories"
										value="Science, Technology, Engineering and Math" />Science,
									Technology, Engineering and Math</td>
								<td />
								<td><form:checkbox path="categories" value="Transportation" />Transportation
								</td>
								<td />
								<td><form:checkbox path="categories"
										value="Washington Metropolitan Regional Issues" />Washington
									Metropolitan Regional Issues</td>
								<td />
								<td>
									<div class="input-group">
										<form:checkbox path="categories" value="" />
										<form:input class="form-control" placeholder="Other"
											path="categories" />
									</div>
								</td>
							</tr>
						</table></td>
				</tr>
				<tr>
					<td colspan="4">A/V:</td>
				</tr>
				<tr>
					<td colspan="4">
						<table>
							<tr height="40px;">
								<td width="150px;"><form:checkbox path="avs"
										value="Flip Chart" />Flip Chart</td>
								<td />
								<td width="150px;"><form:checkbox path="avs"
										value="Internet Acess" />Internet Acess</td>
								<td />
								<td width="200px;"><form:checkbox path="avs" value="Laptop" />Laptop</td>
								<td />
								<td width="150px;"><form:checkbox path="avs"
										value="LCD Projector" />LCD Projector</td>
								<td />
								<td></td>
							</tr>
							<tr height="40px;">
								<td><form:checkbox path="avs" value="Screen" />Screen</td>
								<td />
								<td><form:checkbox path="avs" value="TV and VCR" />TV and
									VCR</td>
								<td />
								<td><form:checkbox path="avs"
										value="White Board and Markers" />White Board and Markers</td>
								<td />
								<td><form:checkbox path="avs" value="None" />None</td>
								<td />
								<td><div class="input-group">
										<form:checkbox path="avs" value="" />
										<form:input class="form-control" path="avs"
											placeholder="Other" />
									</div></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="4" align="right"><input id="submit" type="submit"
						class="btn btn-primary" value="Submit"></td>
				</tr>
			</table>
		</form:form>
	</div>
	<script src="/GMUSpeaker/resources/js/addtalk.js"></script>
	<script src="/GMUSpeaker/resources/js/jquery-2.1.1.js"></script>
</body>