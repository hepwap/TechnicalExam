<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Static content -->
<link rel="stylesheet" href="/resources/css/style.css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/app.js"></script>
<title>Home Page</title>
</head>
<body>
	<header>
		<h1>Home Page</h1>
	</header>
	<hr>
	<input type="text" id="search" onkeyup="searchFunction()" placeholder="Search for names.." title="Type in a name">
	<table id="usersTable">
		<tr class="header">
			<th style="width:40%;">Name</th>
			<th style="width:20%;">Age</th>
			<th style="width:20%;">Active</th>
			<th style="width:20%;">Blocked</th>
		</tr>
		<c:forEach var="user" items="${users}">		
		<tr>
			<td><a href="<c:url value="/profile/${user.id}" />">${user.name.first} ${user.name.middle}. ${user.name.last}</a></td>
			<td>${user.age}</td>
			<c:choose>
				<c:when test='${user.active==true}'>
					<td><input type="checkbox" id="active" checked="checked" onclick="return false;"></td>
				</c:when>
				<c:otherwise>
					<td><input type="checkbox" id="active" onclick="return false;"></td>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test='${user.blocked==true}'>
					<td><input type="checkbox" id="active" checked="checked" onclick="return false;"></td>
				</c:when>
				<c:otherwise>
					<td><input type="checkbox" id="active" onclick="return false;"></td>
				</c:otherwise>
			</c:choose>
		</tr>
		</c:forEach>
	</table>
	<footer>Copyright &copy; Stratpoint.com</footer>
</body>
</html>