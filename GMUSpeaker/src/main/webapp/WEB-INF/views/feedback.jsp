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
	<div class="well">Feedback</div>
	<div id="content" style="width: 800px;">
		<table class="table borderless">
			<tbody>
				<tr>
					<td colspan="3"><p>Please provide the following details.</p></td>
				</tr>
				<tr>
					<td>Name:</td>
					<td><input type="text" class="form-control" /></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><input type="text" class="form-control" /></td>
				</tr>
				<tr>
					<td>Rating [ 0 (Poor)-5 (Excellent) ]:</td>
					<td><input type="text" class="form-control" /></td>
				</tr>
				<tr>
					<td>Comments:</td>
					<td><textarea rows="5" cols="50" class="form-control"></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="right"><button type="button"
							id="feedbacksubmitbtn" class="btn btn-primary">Submit</button></td>
				</tr>
			</tbody>
		</table>
	</div>
	<script src="/GMUSpeaker/resources/js/feedback.js"></script>
	<script src="/GMUSpeaker/resources/js/jquery-2.1.1.js"></script>
</body>