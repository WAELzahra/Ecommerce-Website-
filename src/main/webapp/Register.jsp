<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register</title>
<link
	href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:ital,wght@0,200;0,300;0,400;0,600;0,700;0,900;1,200;1,300;1,400;1,600;1,700;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="style.css">
<link rel="shortcut icon" href="Images\iconn.png" type="image/x-icon">
</head>
<body class="registerbody">
	<div class="container">
		<div class="logincontainer">
			<form action="/E-commerce/Register" method="post">
				<h1 class="logintitle">Register</h1>
				<label for="lastname">First Name <span style=" color : red;">*</span></label> <input required="required" type="text"
					class="inputs" placeholder="First name" name="RegisterFname">
				<label for="lastname">Last Name <span style=" color : red;">*</span></label> <input required="required" type="text"
					class="inputs" placeholder="Last name" name="RegisterLname">
				<label for="name">Email <span style=" color : red;">*</span></label> <input required="required" type="email" class="inputs"
					placeholder="Email" name="Registeremail"> <label
					for="password">Password <span style=" color : red;">*</span></label> <input required="required" type="password"
					class="inputs" placeholder="Password" name="Registerpassword">
				<label for="password">Confirm password <span style=" color : red;">*</span></label> <input 
				required="required" type="password" class="inputs" placeholder="Repeat Password" name="RegisterCpassword">
				<p style="color: green;">${success}</p>
				<p style="color: red;">${error}</p>
				<p style="color: red;">${exists}</p>
				<button class="registerbutton">Register</button>
			</form>
			<a href="Index.jsp">
			<span style="width: 20px;height: 20px;display: flex;justify-content: center;align-items: center;cursor: pointer;position: absolute;top: 3%;right: 3%;">X</span>
			</a>
		</div>
	</div>

</body>
</html>