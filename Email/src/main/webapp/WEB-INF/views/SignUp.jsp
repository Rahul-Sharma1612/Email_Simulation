<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
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

<title>Home Page</title>
<style type="text/css">
h1 {
	font-family: 'Lobster', cursive;
}

.bg-dark {
	background: linear-gradient(45deg, darkslategray, coral);
}
</style>
</head>
<body>
	<div class="bg-dark text-white">

		<h1 class="display-4 text-center ">
			<i class="fa fa-user-circle-o" aria-hidden="true"></i> Register Here
		</h1>
		<br>
	</div>
	<div class="container">
		<br>

		<div class="col-lg-6 m-auto d-block">

			<form action="processform" method="post"
				" onsubmit="return validation()" class="bg-light">

				<div class="form-group">
					<label for="user" class="font-weight-bold"> Username: </label> <input
						type="text" name="userName" class="form-control" id="user">
					<span id="username" class="text-danger font-weight-bold"> </span>
				</div>

				<div class="form-group">
					<label class="font-weight-bold"> Password: </label> <input
						type="password" name="password" class="form-control" id="pass">
					<span id="passwords" class="text-danger font-weight-bold"> </span>
				</div>

				<div class="form-group">
					<label class="font-weight-bold"> Confirm Password: </label> <input
						type="password" name="confirmPassword" class="form-control"
						id="conpass"> <span id="confrmpass"
						class="text-danger font-weight-bold"> </span>
				</div>

				<div class="form-group">
					<label class="font-weight-bold"> Mobile Number: </label> <input
						type="text" name="mobileNumber" class="form-control"
						id="mobileNumber"> <span id="mobileno"
						class="text-danger font-weight-bold"> </span>
				</div>

				<div class="form-group">
					<label class="font-weight-bold"> Email: </label> <input type="text"
						name="email" class="form-control" id="emails"> <span
						id="emailids" class="text-danger font-weight-bold"> </span>
				</div>
				<div>
					<input type="submit" name="submit" value="Submit"
						class="btn btn-success">
			</form>
			<br> <br>


		</div>
	</div>



	<script type="text/javascript">
		function validation() {
			var returnval = true;

			var user = document.getElementById('user').value;
			var pass = document.getElementById('pass').value;
			var confirmpass = document.getElementById('conpass').value;
			var mobileNumber = document.getElementById('mobileNumber').value;
			var emails = document.getElementById('emails').value;

			if (user == "") {
				document.getElementById('username').innerHTML = " ** Please fill the username field";
				returnval = false;
			}
			if ((user.length <= 2) || (user.length > 20)) {
				document.getElementById('username').innerHTML = " ** Username lenght must be between 2 and 20";
				returnval = false;
			}
			if (!isNaN(user)) {
				document.getElementById('username').innerHTML = " ** only characters are allowed";
				returnval = false;
			}

			if (pass == "") {
				document.getElementById('passwords').innerHTML = " ** Please fill the password field";
				returnval = false;
			}
			if ((pass.length <= 5) || (pass.length > 20)) {
				document.getElementById('passwords').innerHTML = " ** Passwords lenght must be between  5 and 20";
				returnval = false;
			}

			if (pass != confirmpass) {
				document.getElementById('confrmpass').innerHTML = " ** Password does not match the confirm password";
				returnval = false;
			}

			if (confirmpass == "") {
				document.getElementById('confrmpass').innerHTML = " ** Please fill the confirmpassword field";
				returnval = false;
			}

			if (mobileNumber == "") {
				document.getElementById('mobileno').innerHTML = " ** Please fill the mobile NUmber field";
				returnval = false;
			}
			if (isNaN(mobileNumber)) {
				document.getElementById('mobileno').innerHTML = " ** user must write digits only not characters";
				returnval = false;
			}
			if (mobileNumber.length != 10) {
				document.getElementById('mobileno').innerHTML = " ** Mobile Number must be 10 digits only";
				returnval = false;
			}

			if (emails == "") {
				document.getElementById('emailids').innerHTML = " ** Please fill the email idx` field";
				returnval = false;
			}
			if (emails.indexOf('@') <= 0) {
				document.getElementById('emailids').innerHTML = " ** @ Invalid Position";
				returnval = false;
			}

			if ((emails.charAt(emails.length - 4) != '.')
					&& (emails.charAt(emails.length - 3) != '.')) {
				document.getElementById('emailids').innerHTML = " ** . Invalid Position";
				returnval = false;
			}
			return returnval;
		}
	</script>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
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