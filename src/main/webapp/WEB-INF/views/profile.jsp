<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="/resources/css/style.css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/app.js"></script>
<title>Profile View</title>
</head>
<body>
	<header>
		<h1>Profile View</h1>
	</header>
	<hr>
	<img src=${user.picture} /> ${user.name.first} ${user.name.middle}. ${user.name.last}
	<br><br>
	ID: ${user.id}
	<br>
	Profile: ${user.profile}
	<br>
	Email: ${user.email}
	<br>
	Phone: ${user.phone}
	<br>
	Address: ${user.address}
	<br>
	Age: ${user.age}
	<br>
	Balance: ${user.balance}
	<br>
	<input type="button" onclick="history.back();" value="Back to Home Page">
	<footer>Copyright &copy; Stratnet.com</footer>
</body>
</html>