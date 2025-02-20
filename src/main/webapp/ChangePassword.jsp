<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Change Password</title>
<link
	href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:ital,wght@0,200;0,300;0,400;0,600;0,700;0,900;1,200;1,300;1,400;1,600;1,700;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="style.css">
<link rel="shortcut icon" href="Images\iconn.png" type="image/x-icon">
</head>
<body class="loginbody">
<style>
.control {
    position: absolute;
    padding-left: 15px;
    font-size: 16px;
    left: 10%;
    bottom: 30%;
}
.checkbox {
	position: absolute;
	height: 16px;
	width: 16px;
	bottom : 30%;
	cursor: pointer;
}
</style>
	<div class="container" style="height: 380px;">
		<div class="logincontainer">
			<form action="/E-commerce/ChangePassword" method="post">
				<h1 class="logintitle"
					style="padding-bottom: 40px; padding-top: 20px;">Change password</h1>
				<label for="name">Password <span style=" color : red;">*</span></label> <input type="password" class="inputs"
					placeholder="Password" name="password1" required="required" style="margin-bottom: 40px;"> <label
					for="password">Confirm password <span style=" color : red;">*</span></label> <input required="required" type="password"
					class="inputs" placeholder="Confirm Password" name="password2">
				<button class="loginbutton">Change password</button>
				<p style=" color : red;">${error}</p>
			</form>
			<a href="Index.jsp">
			<span style="width: 20px;height: 20px;display: flex;justify-content: center;align-items: center;cursor: pointer;position: absolute;top: 3%;right: 3%;">X</span>
			</a>
		</div>
	</div>
</body>
</html>