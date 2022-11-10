<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=deivice-width, initial-scale=1, shrink-to-fit=no">
<style type="text/css">
	<%@ include file="../css/list-page.css" %>
</style>
<title>Students List</title>
</head>

<body>
	<header class="header">
		<h1>Student Register</h1>
	</header>
	
	<div class="block1">
		<div class="button-bar">
			<!-- Add a button "Add Student" -->
			<a href="/studentcollegefest/students/showFormForAdd"
				class="addStudent-button">Add Student</a>
			<a href="/studentcollegefest/logout"
				class="addStudent-button logout-button">Logout</a>
		</div>
		<!-- custom table class -->
		<table class="custom-table">
			<thead>
				<!-- Table-header row -->
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Course</th>
					<th>Country</th>
					<th style="text-align:center">Action</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${students}" var="tempStudent">
					<tr>
						<td><c:out value="${tempStudent.firstName}" /></td>
						<td><c:out value="${tempStudent.lastName}" /></td>
						<td><c:out value="${tempStudent.course}" /></td>
						<td><c:out value="${tempStudent.country}" /></td>
						<td style="text-align:center">
							<!-- Add "Update" button/link --> 
							<a href="/studentcollegefest/students/showFormForUpdate?studentId=${tempStudent.id}" class="update-button"> Update</a> 
							<!-- Add "Delete button/link which asks for confirmation whether to proceed with delete operation -->
							<a href="/studentcollegefest/students/delete?studentId=${tempStudent.id}" class="delete-button"
							onclick="if(!(confirm('Are you sure you want to delete ${tempStudent.firstName}?'))) return false">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>