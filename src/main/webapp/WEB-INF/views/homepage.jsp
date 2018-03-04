<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Static content -->
<link rel="stylesheet" href="/resources/static/css/style.css">
<script type="text/javascript" src="/resources/js/app.js"></script>

<title>Home Page</title>
</head>
<body>
	<h1>Home Page</h1>
	<hr>
	<table border="1">
		<tr>
			<th>Name</th>
			<th>Age</th>
			<th>Active</th>
			<th>Blocked</th>
		</tr>
		<c:forEach var="user" items="${users}">
		<!-- hidden id input -->
		<input type="hidden" id="id" name="id" value=${user.id}>		
		<tr>
			<td><a href="<c:url value="/profile/${user.id}" />">${user.name.first} ${user.name.middle}. ${user.name.last}</a></td>
			<td>${user.age}</td>
			<c:choose>
				<c:when test='${user.active==true}'>
					<td><input type="checkbox" id="active" checked="checked"></td>
				</c:when>
				<c:otherwise>
					<td><input type="checkbox" id="active"></td>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test='${user.blocked==true}'>
					<td><input type="checkbox" id="active" checked="checked"></td>
				</c:when>
				<c:otherwise>
					<td><input type="checkbox" id="active"></td>
				</c:otherwise>
			</c:choose>
		</tr>
		</c:forEach>
	</table>

</body>
</html>