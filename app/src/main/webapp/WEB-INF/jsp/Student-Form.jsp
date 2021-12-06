<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Form</title>
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
	<br>
	<div align="center" class="container my-2">
		<form action="/home" method="post">
			<br>
			<h1>Student Registration Form</h1>
			<br>
			<h5>Name :</h5>
			<input type="text" class="form-control mb-2 col-2" name="name"
				autocomplete="off"> <br>
			<h5>Email :</h5>
			<input type="email" class="form-control mb-2 col-2" name="email"
				autocomplete="off" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$">
			<br>
			<h5>City :</h5>
			<input type="text" class="form-control mb-2 col-2" name="city"
				autocomplete="off"><br> <br> <input type="submit"
				value="Add" class="btn btn-success col-2"><br> <br>
		</form>
	</div>

</body>
</html>