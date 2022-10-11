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
<link
	href="https://fonts.googleapis.com/css2?family=Lobster&display=swap"
	rel="stylesheet">

<title>Forget Page</title>
<style type="text/css">
.bg-dark {
	background: linear-gradient(45deg, darkslategray, coral);
}

h1 {
	font-family: 'Lobster', cursive;
}
</style>
</head>
<body>
	<div class="bg-dark text-white">

		<div class="bg-dark text-white">
			<h1 class="display-4 text-center ">
				<i class="fa fa-sign-in pr-2"></i> Login Here
			</h1>
			<br>
		</div>
	</div>

	<div class="container">
		<br>

		<div class="col-lg-6 m-auto d-block">

			<form action="loginform" method="post"
				" onsubmit="return validation()" class="bg-light">

				<div class="form-group">
					<label for="user" class="font-weight-bold"> Email: </label> <input
						type="text" name="userName" class="form-control" id="user"
						autocomplete="off"> <span id="username"
						class="text-danger font-weight-bold"> </span>
				</div>

				<div class="form-group">
					<label class="font-weight-bold">New Password: </label> <input
						type="password" name="password" class="form-control" id="pass"
						autocomplete="off"> <span id="passwords"
						class="text-danger font-weight-bold"> </span>
				</div>
				<div class="form-group">
					<label class="font-weight-bold">Confirm Password: </label> <input
						type="password" name="cpassword" class="form-control" id="cpass"
						autocomplete="off"> <span id="cpasswords"
						class="text-danger font-weight-bold"> </span>
				</div>




				<input type="submit" name="submit" value="Submit"
					class="btn btn-success" autocomplete="off"> <a href="Login"><input
					type="submit" name="submit" value="Login" class="btn btn-success"
					autocomplete="off"> </a>

			</form>
			<br>
			<br>


		</div>
	</div>



	<script type="text/javascript">
		function validation() {
			var returnval = true;

			var pass = document.getElementById('pass').value;
			var emails = document.getElementById('emails').value;

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

			if (pass == "") {
				document.getElementById('passwords').innerHTML = " ** Please fill the password field";
				returnval = false;
			}
			if ((pass.length <= 5) || (pass.length > 20)) {
				document.getElementById('passwords').innerHTML = " ** Passwords lenght must be between  5 and 20";
				returnval = false;
			}

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