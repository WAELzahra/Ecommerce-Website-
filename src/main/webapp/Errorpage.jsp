<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Oops...</title>
    <link rel="icon" type="image/x-icon" href="images/icon2.png">

</head>
<body>
	<style>
		body {
			margin: 0px;
			padding: 0px;
			font-family: "montserrat", sans-serif;
			min-height: 100vh;
			background-image: linear-gradient(125deg,#6a89cc,#b8e994);
		}
		.container{
			width: 100%;
			padding-top:250px;
			text-align: center;
			color: #343434
		}
		.container h2,p {
			font-weight: 700;
			font-size:40px;
		}
		.container h1 {	
			font-size: 160px;
			margin: 0;
			font-weight: 900;
			letter-spacing: 20px;
			background-image:url("Images/bgn.jpg");
			background-position: center;
			background-repeat: no-repeat;
			-webkit-text-fill-color: transparent;
			-webkit-background-clip: text;
		}
		.container a {
			text-decoration: none;
			background: linear-gradient(125deg,#6a89cc,#b8e994);
			padding: 15px 26px;
			color:white;
			border-radius: 20px;
			display: inline-block;
			font-size: 14px;
			font-weight: bold;
			transition: 0.4s;
		}
		.container a:hover {
			background: linear-gradient(125deg,#6a89cc,#38ada9);
			transform: scale(1.1);
		}
	</style>
	<div class="container">
		<h2>Oops! Page not found.</h2>
		<h1>404</h1>
		<p>We can't find the page you are looking for.</p>
		<a href="/E-commerce/Index.jsp">GO BACK HOME</a>
	</div>
</body>
</html>