<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,700;1,100;1,300;1,400;1,700&family=Poppins:ital,wght@0,500;0,600;1,400&display=swap"
	rel="stylesheet">
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
<title>Access Denied</title>
</head>
<body>
	<div class="container">
		<h1>HTTP Status 403 - Access is denied</h1>
		<h2>${msg}</h2>
		<br>
		<br>
		<!-- a link leading back to student list page -->
		<a href="/studentcollegefest/students/list">Back to view list of students</a>
	</div>
</body>
</html>