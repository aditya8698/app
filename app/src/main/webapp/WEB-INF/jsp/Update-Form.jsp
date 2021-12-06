<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Form</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<style type="text/css">
form {
	padding: 20px;
	border: 2px solid black;
	box-shadow: 10px 10px 5px grey;
}
</style>
</head>
<body>
	<div align="center" class="container my-4">
		<form action="/home" method="post">
			<h2>Update Student Form</h2>
			<input type="hidden" class="form-control mb-2 col-2" name="id"
				value="${student.id}"><br> <br>
			<h5>Name :</h5>
			<input type="text" class="form-control mb-2 col-2" name="name"
				value="${student.name}"><br> <br>
			<h5>Email :</h5>
			<input type="email" class="form-control mb-2 col-2" name="email"
				value="${student.email}"
				pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"><br>
			<br>
			<h5>City :</h5>
			<input type="text" class="form-control mb-2 col-2" name="city"
				value="${student.city }"><br> <br> <input
				type="submit" value="Update" class="btn btn-info col-2">
		</form>
	</div>
</body>
</html>