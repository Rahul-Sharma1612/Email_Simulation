<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="https://fonts.googleapis.com/css2?family=Lobster&display=swap"
	rel="stylesheet">

<title>Sent</title>
<style type="text/css">
td {
	width: 190px;
	height: 40px;
}

body, tr, td {
	text-align: center;
	font-family: 'Lobster', cursive;
}

thead {
	font-weight: bold;
}
</style>
</head>
<body>
	<div align="center">
		<h1>welcome to Sent</h1>
		<hr>


		<table border="1px">
			<thead>
				<tr>
					<td>From</td>
					<td>Subject</td>
					<td>Message</td>
					<td>To</td>
				</tr>
			</thead>

			<c:forEach var="email" items="${msg}">
				<tr>
					<td><c:out value="${email.getFrom_email()}"></c:out></td>
					<td><c:out value="${email.getSubject()}"></c:out></td>
					<td><c:out value="${email.getMessage()}"></c:out></td>
					<td><c:out value="${email.getTo_email()}"></c:out></td>
				</tr>
			</c:forEach>

		</table>
	</div>


</body>
</html>