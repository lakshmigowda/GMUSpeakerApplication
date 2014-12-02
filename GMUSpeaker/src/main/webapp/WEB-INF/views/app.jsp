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
	href="/GMUSpeaker/resources/css/signin.css" />
</head>

<body>
	<div class="container">
		<div class="row">
			<div class="span12">
				<div class="" id="loginModal">
					<div class="modal-header">
						<h3>Welcome to GMUSpeaker !</h3>
					</div>
					<div class="modal-body">
						<div class="well">
							<ul class="nav nav-tabs" id="tabs">
								<li class="active"><a href="#login" data-toggle="tab">Login</a></li>
								<li><a href="#register" data-toggle="tab">Create
										Account</a></li>
							</ul>
							<div id="myTabContent" class="tab-content">
								<div class="tab-pane active in" id="login">
									<div class="container">
										<form:form method="POST" action="/GMUSpeaker/loginsubmit"
											commandName="login" id="loginform" class="form-signin">
											<table class="table borderless">
												<tr>
													<td>Email</td>
													<td><form:input class="form-control" path="email"></form:input></td>
												</tr>
												<tr>
													<td>Password:</td>
													<td><form:input class="form-control" path="password"></form:input></td>
												</tr>
												<tr>
													<td align="right" colspan="2"><input id="submit"
														type="submit" class="btn btn-primary" value="Login"></td>
												</tr>
											</table>
										</form:form>
									</div>
								</div>

								<div class="tab-pane fade" id="register">
									<form:form method="POST" action="/GMUSpeaker/registersubmit"
										commandName="register" id="registerform" class="form-register">
										<table class="table borderless">
											<tr>
												<td>Name</td>
												<td><form:input class="form-control" path="name"></form:input></td>
											</tr>
											<tr>
												<td>Email</td>
												<td><form:input class="form-control" path="email"></form:input></td>
											</tr>
											<tr>
												<td>Password:</td>
												<td><form:input class="form-control" path="password"></form:input></td>
											</tr>
											<tr>
												<td>Password(Confirm):</td>
												<td><form:input class="form-control" path="repassword"></form:input></td>
											</tr>
											<tr>
												<td>Role:</td>
												<td><form:select class="form-control" path="role">
														<option value="speaker">Speaker</option>
														<option value="user">User</option>
													</form:select></td>
											</tr>
											<tr>
												<td align="right" colspan="2"><input id="submit"
													type="submit" class="btn btn-primary" value="Submit"></td>
											</tr>
										</table>
									</form:form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="/GMUSpeaker/resources/js/jquery-2.1.1.js"></script>
	<script src="/GMUSpeaker/resources/js/app.js"></script>
	<script src="/GMUSpeaker/resources/js/bootstrap.min.js"></script>
</body>
</html>