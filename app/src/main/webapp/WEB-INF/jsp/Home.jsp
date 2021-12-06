<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<br>
	<div align="center" class="container my-2">
		<h2>Welcome to home page</h2>
		<br> <input type="button"
			onclick="window.location.href='/student-form';return false"
			value="Add Student" class="btn btn-success"> <br> <br>
		<table border="1" class="table table-striped">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Email</th>
				<th>City</th>
				<th>Actions</th>
			</tr>
			<c:forEach items="${list}" var="std">
				<tr>
					<td><c:out value="${std.id}" /></td>
					<td><c:out value="${std.name }" /></td>
					<td><c:out value="${std.email }" /></td>
					<td><c:out value="${std.city }" /></td>
					<td><a href="/updateStudent?id=${std.id}"><i
							class="fas fa-user-edit"></i></a> &nbsp;||&nbsp; <a
						href="/deleteStudent?id=${std.id}"
						onclick="return confirm('sure you want to delete this record?');"><i
							class="fas fa-trash"></i></a></td>
				</tr>
			</c:forEach>
		</table>
		<br>
		<div align="center">
			<nav aria-label="Page">
				<ul class="pagination">
					<li class="page-item"><a class="page-link" href="/getPage">Previous</a></li>
					<li class="page-item"><a class="page-link" href="/getPage">1</a></li>
					<li class="page-item"><a class="page-link" href="/getPage">2</a></li>
					<li class="page-item"><a class="page-link" href="/getPage">Next</a></li>
				</ul>
			</nav>
		</div>

	</div>
</body>
</html>