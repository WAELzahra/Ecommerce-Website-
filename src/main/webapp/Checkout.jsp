<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:ital,wght@0,200;0,300;0,400;0,600;0,700;0,900;1,200;1,300;1,400;1,600;1,700;1,900&display=swap" rel="stylesheet">
<link rel="shortcut icon" href="Images\iconn.png" type="image/x-icon">
<title>Checkout</title>
</head>
<body style="animation-name: animated;animation-iteration-count: infinite;animation-duration: 30s;animation-play-state: running;animation-timing-function:ease;font-family: 'Cairo', sans-serif;">
<div style="width: 500px;height: 520px;padding: 20px 20px;background-color: rgb(245, 245, 245);flex-direction: column;box-shadow: 0px -1px 45px -4px rgba(0,0,0,0.56);-webkit-box-shadow: 0px -1px 45px -4px rgba(0,0,0,0.56);-moz-box-shadow: 0px -1px 45px -4px rgba(0,0,0,0.56);position: absolute;top: 20%;right: 35%;" id="pay">
			<form action="/E-commerce/Checkout" method="post">
				<h1 style="color: rgb(105, 105, 105);font-size: 20px;font-weight: 900;text-align: center;">Personal information</h1>
				<label for="name" style=" font-size: 18px;font-weight: 400;">Full name <span style=" color : red;">*</span></label> <input required="required" type="text"
					name="Checkoutname" id="name" style="width: 450px;padding: 10px;margin : 20px 0px;border: none;border-bottom: 1px solid gray;outline: none;background-color:rgb(245, 245, 245);"
					placeholder="Your name"> <label for="phonenumber" style=" font-size: 18px;font-weight: 400;">Phone number <span style=" color : red;">*</span></label> <input required="required" type="text" name="Checkoutphonenumber"
					id="phonenumber" style="width: 450px;padding: 10px;margin : 20px 0px;border: none;border-bottom: 1px solid gray;outline: none;background-color:rgb(245, 245, 245);" placeholder="Your phone number">
				<label for="email" style=" font-size: 18px;font-weight: 400;">Email <span style=" color : red;">*</span></label> <input required="required" type="email"
					name="Checkoutemail" id="email" style="width: 450px;padding: 10px;margin : 20px 0px;border: none;border-bottom: 1px solid gray;outline: none;background-color:rgb(245, 245, 245);"
					placeholder="Your email"> <label for="Address" style=" font-size: 18px;font-weight: 400;">Address <span style=" color : red;">*</span></label>
				<input required="required" type="text" name="CheckoutAddress" id="Address"
					style="width: 450px;padding: 10px;margin : 20px 0px;border: none;border-bottom: 1px solid gray;outline: none;background-color:rgb(245, 245, 245);" placeholder="Your Address">
				<button style=" position: absolute;height: 40px;width: 80%;bottom: 4%; left: 10%;cursor: pointer;">Checkout</button>
				<p style=" color : red;">${error}</p>
			</form>
			<a href="Index.jsp">
			<span style="width: 20px;height: 20px;display: flex;justify-content: center;align-items: center;cursor: pointer;position: absolute;top: 3%;right: 3%;">X</span>
			</a>
		</div>
</body>
</html>