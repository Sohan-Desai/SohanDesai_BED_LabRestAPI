<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,700;1,100;1,300;1,400;1,700&family=Poppins:ital,wght@0,500;0,600;1,400&display=swap" rel="stylesheet">
<style>
body {
	font-family: Montserrat, Sans Serif;
	color: #4f546c;
	font-size: 15px;
	background: linear-gradient(to right, #fefefe, #ebedee 75%);
}

a {
	text-decoration: none;
	font-style: italic;
	color: #2962ff;
}
.container{
	margin-left: 10px;
}
</style>
<title>College Fest Registration</title>
</head>

<!-- This is a welcome page that is loaded when the application boots on -->
<body>
	<div class="container">
		<h3>Welcome to the Student Registration Portal</h3>
		
		<!-- Link to the student list page -->
		<a href="students/list">Click here to view the list of registered
			students</a>
	</div>
</body>
</html>