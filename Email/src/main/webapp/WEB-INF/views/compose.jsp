<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

<title>Compose</title>
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
			<i class="fa fa-user-circle-o" aria-hidden="true"></i>msg bhejo
		</h1>
		<br>
	</div>
	<div class="container">
		<br>

		<div class="col-lg-6 m-auto d-block">
			<form:form action="composemail" method="post" modelAttribute="info">
				<div class="form-group">
					<label class="font-weight-bold"> From: </label> <input type="email"
						name="from_email" value="${us }" class="form-control" id="emails">
					<span id="emailids" class="text-danger font-weight-bold"> </span>
				</div>

				<div class="form-group">
					<label class="font-weight-bold"> To: </label> <input type="email"
						name="to_email" class="form-control" id="emails"> <span
						id="emailids" class="text-danger font-weight-bold"> </span>
				</div>

				<div class="form-group">
					<label class="font-weight-bold"> Subject: </label> <input
						type="text" name="subject" class="form-control" id="subject">
					<span id="subject" class="text-danger font-weight-bold"> </span>
				</div>

				<div class="form-group">
					<label class="font-weight-bold"> Message: </label>
					<textarea id="subject" name="message"
						placeholder="Type your message.." style="width: 525px"
						class="form-control"></textarea>
				</div>

				<div>
					<input type="submit" name="submit" value="send"
						class="btn btn-success">
			</form:form>
			<br> <br>


		</div>
	</div>



	<script type="text/javascript">
		function validation() {
			var returnval = true;

			var subject = document.getElementById('subject').value;
			var emails = document.getElementById('emails').value;

			if (subject == "") {
				document.getElementById('subject').innerHTML = " ** Please fill the username field";
				returnval = false;
			}
			if ((subject.length <= 2) || (user.length > 20)) {
				document.getElementById('subject').innerHTML = " ** Username lenght must be between 2 and 20";
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