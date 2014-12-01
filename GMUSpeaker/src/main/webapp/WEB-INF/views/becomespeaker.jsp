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
		<h3>Become Speaker</h3>
		<p>
			If you are a current or retired member of Mason s faculty or staff,
			or a Mason alum, and would like to participate in the Mason Speakers
			program, please complete the form below. All speakers are involved on
			a volunteer basis. Speaking engagements are made by the <a
				href="http://relations.gmu.edu/community-relations/" target="_blank">Office
				of Community and Local Government Relations </a> and free of charge to
			community organizations.
		</p>
		<p>
			For more information about the program, or to notify us of a problem
			with submission of this form, please contact <a
				href="mailto:sgallag5@gmu.edu" target="_blank">Sarah Gallagher</a> ,
			Mason Speakers Coordinator, via <a href="mailto:sgallag5@gmu.edu"
				target="_blank">email</a> or by calling (703) 993-8761.
		</p>
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
					<td>Topic Title:</td>
					<td><form:input class="form-control" path="topicTitle" /></td>
					<td></td>
				</tr>
			</table>
			<table class="table borderless">
				<tr>
					<td>Categories:</td>
				</tr>
				<tr>
					<td><table>
							<tr height="40px;">
								<td><form:checkbox path="categories" value="Aging" />Aging</td>
								<td />
								<td><form:checkbox path="categories"
										value="American culture" />American culture</td>
								<td />
								<td><form:checkbox path="categories" value="Arts" />Arts</td>
								<td />
								<td><form:checkbox path="categories"
										value="Business and Finance" />Business and Finance</td>
							</tr>
							<tr height="40px;">
								<td><form:checkbox path="categories"
										value="Childhood Development & Parenting" />Childhood
									Development & Parenting</td>
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
										value="Education & Teaching" />Education & Teaching</td>
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
										value="Government & Politics" />Government & Politics</td>
								<td />
								<td><form:checkbox path="categories"
										value="Health, Nutrition, Exercise & Sports" />Health,
									Nutrition, Exercise & Sports</td>
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
										value="Leadership & Career Development" />Leadership & Career
									Development</td>
							</tr>
							<tr height="40px;">
								<td><form:checkbox path="categories"
										value="Literature, Poetry & Writing" />Literature, Poetry &
									Writing</td>
								<td />
								<td><form:checkbox path="categories" value="None" />None</td>
								<td />
								<td><form:checkbox path="categories"
										value="Nonprofit Organizations & Charities" />Nonprofit
									Organizations & Charities</td>
								<td />
								<td><form:checkbox path="categories" value="Philosophy" />Philosophy
								</td>
							</tr>
							<tr height="40px;">
								<td><form:checkbox path="categories" value="Psychology" />Psychology
								</td>
								<td />
								<td><form:checkbox path="categories"
										value="Public Policy & the Law" />Public Policy & the Law</td>
								<td />
								<td><form:checkbox path="categories" value="Religion" />Religion
								</td>
								<td />
								<td><form:checkbox path="categories" value="Safety" />Safety
								</td>
							</tr>
							<tr height="40px;">
								<td><form:checkbox path="categories"
										value="Science, Technology, Engineering & Math" />Science,
									Technology, Engineering & Math</td>
								<td />
								<td><form:checkbox path="categories" value="Transportation" />Transportation
								</td>
								<td />
								<td><form:checkbox path="categories"
										value="Washington Metropolitan Regional Issues" />Washington
									Metropolitan Regional Issues</td>
								<td />
								<td></td>
							</tr>
						</table></td>
				</tr>
				<tr>
					<td>A/V</td>
				</tr>
				<tr>
					<td>
						<table>
							<tr height="40px;">
								<td><form:checkbox path="avs" value="Flip Chart" />Flip
									Chart</td>
								<td />
								<td><form:checkbox path="avs" value="Internet Acess" />Internet
									Acess</td>
								<td />
								<td><form:checkbox path="avs" value="Laptop" />Laptop</td>
								<td />
								<td><form:checkbox path="avs" value="LCD Projector" />LCD
									Projector</td>
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
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td align="right"><input id="submit" type="submit"
						class="btn btn-primary" value="Submit"></td>
				</tr>
			</table>

		</form:form>
	</div>
</body>