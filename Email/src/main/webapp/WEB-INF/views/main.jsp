<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Lobster&display=swap"
	rel="stylesheet">

<title>Main Page</title>
<style type="text/css">
html {
	scroll-behavior: smooth;
}

.bg-dark {
	background: linear-gradient(45deg, darkslategray, coral);
}

h1 {
	font-family: 'Lobster', cursive;
}

h1 .fa fa-bars {
	float: right;
}

.icon-bar {
	width: 170px;
	background-color: #555;
}

.icon-bar a {
	display: block;
	text-align: center;
	padding: 16px;
	transition: all 0.3s ease;
	color: white;
	font-size: 16px;
}

.icon-bar a:hover {
	background-color: #000;
}

.active {
	background-color: #4CAF50;
}

.navlist-right {
	float: right;
	margin-right: 20px;
}
</style>
</head>
<body>

	<div class="bg-dark text-white">

		<div class="bg-dark text-white">
			<h1 class="display-4 text-center ">
				Main Menu <i class="fa fa-bars  navlist-right" aria-hidden="true"></i>
			</h1>
		</div>
		<br>
	</div>
	<div class="icon-bar">
		<a href="http://localhost:8080/Email/"><span>Home <i
				class="fa fa-home"></i></span></a> <a href="compose"><span>Compose <i
				class="fa fa-home"></i></span></a> <a href="inbox"><span>Inbox <i
				class="fa fa-envelope"></i></span></a> <a href="sent"><span>Sent <i
				class="fa fa-globe"></i></span></a> <a href="#"><span>Search <i
				class="fa fa-search"></i></span></a> <a href="draft"><span>Drafts <i
				class="fa fa-file"></i></span></a> <a href="#"><span>Delete <i
				class="fa fa-trash"></i></span></a> <a href="forget"><span>Forget
				Pass <i class="fa fa-trash"></i>
		</span></a> <a href="logout"><span>Logout <i class="fa fa-sign-out"></i></span></a>
	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

</body>
</html>