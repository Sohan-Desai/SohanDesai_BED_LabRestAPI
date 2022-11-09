<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Custom CSS styling for the page -->
<style>
	<%@ include file="../css/form-page.css" %>
</style>

<title>Student Details Form</title>
</head>

<body>
	<header class="header">
		<h1>Student Register</h1>
		<hr color="#009879">
	</header>
	
	<!-- custom div class: "registration-form" -->
	<div class="registration-form">
		<!-- custom header class: "form-header" -->
		<p class="form-header">Student details form</p>
		<form action="/studentcollegefest/students/save" method="POST">
			<!-- Add hidden form field to handle update -->
			<input type="hidden" name="id" value="${student.id}" />
	
			<!-- Each text input is preceded by corresponding text,
			the fields can populated existing values to be updated else have 
			a placeholder text in their place-->
			<!-- This is a required field -->
			<div>
				<p>First Name</p>
				<input type="text" name="firstName" value="${student.firstName}" placeholder="Eg: John" required>
			</div>
			<div>
				<p>Last Name</p>
				<input type="text" name="lastName" value="${student.lastName}" placeholder="Eg: Smith" required>
			</div>
			<!-- This is a required field -->
			<div>
				<p>Course</p>
				<input type="text" name="course" value="${student.course}" placeholder="Eg: IT" required>
			</div>
			<div>
				<p>Country</p>
				<input type="text" name="country" value="${student.country}" placeholder="Eg: India">
			</div>
			<!-- Button of type="submit" -->
			<button type="submit" class="save-button">Submit</button>
		</form>
		<!-- a link leading back to student list page -->
		<a href="/studentcollegefest/students/list">Back to view list of students</a>
		<hr color="#009879">
	</div>
</body>
</html>