<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
	<title>Home Page</title>
	<style type="text/css">
		h1
      {
         font-family: 'Lobster', cursive;

      }
		.sea
	{
		margin-right: 100px;

	}
	
	a
	{
		border-radius: 20px;

	}
	.an
	{
      border-radius: 20px;
      background: cyan;
	}
	
	  .bg-basic
		{
			background: linear-gradient(45deg,darkslategray,darkred);
		}
		body
		{
			background: transparent;
			background-image: url("https://i.pinimg.com/originals/5f/92/96/5f9296f0364ebfdb00b594fe368768ab.gif");
            background-size: cover;
            background-repeat: no-repeat;
		}
	</style>
</head>
<body>
	<div class="bg-dark text-white">
    <h1 class="display-4 text-center "><i class="fa fa-envelope-o" aria-hidden="true"></i>  Welcome to Mail Application </h1>
    <br>
</div>
   <nav class="navbar bg-basic navbar-dark navbar-expand-lg">
	<div class="container">
		<a href="#" class="navbar-brand"> <i class="fa fa-snowflake-o pr-3"></i>JSPIDERS</a>
		<div>
		<ul class="navbar-nav pr-5 sea">
			<li class="nav-item">
                   <a href="#" class="nav-link">
                   <i class="fa fa-home pr-2"></i>Home</a>
            </li>

                    <li class="nav-item">
               <a href="#" class="nav-link">
                  <i class="fa fa-id-badge pr-2"></i>About</a></li>

                      <li class="nav-item">
               <a href="#" class="nav-link">
                  <i class="fa fa-cogs pr-2"></i>Services</a></li>

                    <li class="nav-item dropdown"><a href="#" class="nav-link" data-toggle="dropdown">
             <i class="fa fa-user-graduate pr-2"></i>
              Courses <span class="fa fa-caret-down "></span></a>
               <div class="dropdown-menu  ">
        <a href="#" class="dropdown-item text-white bg-primary text-center">HTML</a>
        <a href="#" class="dropdown-item text-white bg-success text-center">CSS</a>
        <a href="#" class="dropdown-item text-white bg-warning  text-center">JAVA</a>
    </div>
</li>
      	</ul>
	</div>
	<a href="SignUp"><button  class="btn btn-outline-white " ><i class="fa fa-user pr-2"></i>SIGNUP</button></a>
	<a href="Login"><button class="btn btn-outline-white"><i class="fa fa-sign-in pr-2" ></i> LOGIN</button></a>
</div>
</nav>

	



 <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
</body>
</html>