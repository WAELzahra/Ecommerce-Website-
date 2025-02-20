<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Nike store</title>
<link
	href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:ital,wght@0,200;0,300;0,400;0,600;0,700;0,900;1,200;1,300;1,400;1,600;1,700;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="style.css">
<link rel="shortcut icon" href="Images\icon.png" type="image/x-icon">
</head>
<body>
	<style>
	.settings{
		position: absolute; 
		right : 2%; 
		transition : 0.5s;
	}
	.settings:hover {
		transform : scale(1.15);
	}
	</style>
	<nav>
		<div class="navtop">
			<div class="navitem">
				<img src="Images/nikelogo.png" height="px" width="50px" alt="Logo"
					style="padding-top: 15px; position: absolute;" class="toplogo">
			</div>
			<div class="navitem">
				<div class="search">
					<input type="text" class="searchinput" placeholder="Search..">
					<img src="Images/searchicon.png" width="20" height="20"
						alt="searchicon" class="searchicon">
				</div>
			</div>
			<div class="navitem" style="padding-top: 15px;">
				<a href="dashboard.jsp"> <img
					src="Images/settings.png" width="40" height="40" alt="dash"
					class="settings">
				</a>
			</div>
		</div>
		<div class="navbottom">
			<h2 class="bottomitem">Air force</h2>
			<h2 class="bottomitem">Air jordan</h2>
			<h2 class="bottomitem">Blazer</h2>
			<h2 class="bottomitem">Air Max</h2>
		</div>
	</nav>
	<div class="slider">
		<div class="sliderwrap">
			<div class="slideritem">
				<img src="Images/airforce.png" alt="Air Force" class="sliderimg">
				<h1 class="slidertitle">
					AIR <br>FORCE 1<br> WHITE
				</h1>
				<h2 class="sliderprice">140$</h2>
				<a href="Checkout.jsp">
					<button class="buybutton1">BUY</button>
				</a>
			</div>
			<div class="slideritem">
				<img src="Images/airjordan.png" alt="Air Force" class="sliderimg">
				<h1 class="slidertitle">AIR JORDAN</h1>
				<h2 class="sliderprice">315$</h2>
				<a href="Checkout.jsp">
					<button class="buybutton2">BUY</button>
				</a>
			</div>
			<div class="slideritem">
				<img src="Images/blazer.png" alt="Air Force" class="sliderimg">
				<h1 class="slidertitle">BLAZER</h1>
				<h2 class="sliderprice">105$</h2>
				<a href="Checkout.jsp">
					<button class="buybutton3">BUY</button>
				</a>
			</div>
			<div class="slideritem">
				<img src="Images/airmax.png" alt="Air Force" class="sliderimg">
				<h1 class="slidertitle">AIR MAX</h1>
				<h2 class="sliderprice">130$</h2>
				<a href="Checkout.jsp">
					<button class="buybutton4">BUY</button>
				</a>
			</div>
		</div>
	</div>
	<div class="features">
		<div class="feature">
			<img src="Images/worldwide.png" alt="ww" class="imgfeature"> <span
				class="featuretitle">Worldwide</span> <span class="featuredesc">Shipping
				all around the world</span>
		</div>
		<div class="feature">
			<img src="Images/Shipping.png" alt="shipping" class="imgfeature">
			<span class="featuretitle">Fast delivery</span> <span
				class="featuredesc">Within 2 days</span>
		</div>
		<div class="feature">
			<img src="Images/phone.png" alt="contact" class="imgfeature"> <span
				class="featuretitle">Contact</span> <span class="featuredesc">Excellent
				support service</span>
		</div>
	</div>
	<div class="product">
		<img src="Images/retro.png" alt="airforce" class="productimg">
		<div class="productdetails">
			<h1 class="producttitle">AIR JORDAN RETRO</h1>
			<h2 class="productprice">520$</h2>
			<p class="productdes">Nike is best known for its footwear,
				apparel, and equipment. Founded in 1964 as Blue Ribbon Sports, the
				company became Nike in 1971 after the Greek goddess of victory.</p>
			<div class="sizes">
				<div class="size">40</div>
				<div class="size">41</div>
				<div class="size">42</div>
			</div>
			<a href="Checkout.jsp">
				<button class="productbutton">BUY NOW</button>
			</a>
		</div>
	</div>
	<div class="gallery">
		<div class="galleryitem">
			<img src="Images/gallery1.jpg" alt="gallery1" class="galleryimg">
			<h1 class="gallerytitle">My better is better than your better</h1>
		</div>
		<div class="galleryitem">
			<h1 class="gallerytitle">Failure’s not an option. It’s a step</h1>
			<img src="Images/gallery2.jpg" alt="gallery2" class="galleryimg">
		</div>
		<div class="galleryitem">
			<img src="Images/gallery3.jpg" alt="gallery3" class="galleryimg">
			<h1 class="gallerytitle">Run the day. Don’t let it run you</h1>
		</div>
	</div>
	<div class="newseason">
		<div class="nsitem">
			<img src="Images/ns1.jpg" alt="" class="nsimg">
		</div>
		<div class="nsitem">
			<h3 class="nstitlesm">NEW ARRIVALS</h3>
			<h1 class="nstitle">2023 COLLECTION</h1>
		</div>
		<div class="nsitem">
			<img src="Images/ns2.png" alt="" class="nsimg">
		</div>
	</div>
	<footer>
		<div class="footerleft">
			<div class="footermenu">
				<h1 class="fmenutitle">About us</h1>
				<ul class="menulist">
					<li class="footerlistitem">Company</li>
					<li class="footerlistitem">Contact</li>
					<li class="footerlistitem">Careers</li>
					<li class="footerlistitem">Affiliates</li>
					<li class="footerlistitem">Stores</li>
				</ul>
			</div>
			<div class="footermenu">
				<h1 class="fmenutitle">Useful links</h1>
				<ul class="menulist">
					<li class="footerlistitem">Support</li>
					<li class="footerlistitem">Refund</li>
					<li class="footerlistitem">FAQ</li>
					<li class="footerlistitem">Feedback</li>
					<li class="footerlistitem">Stories</li>
				</ul>
			</div>
			<div class="footermenu">
				<h1 class="fmenutitle">Products</h1>
				<ul class="menulist">
					<li class="footerlistitem">Air Force</li>
					<li class="footerlistitem">Air Jordan</li>
					<li class="footerlistitem">Blazer</li>
					<li class="footerlistitem">Air Max</li>
				</ul>
			</div>
			<div class="copyright">
				<span>@Hypex All rights reserved. 2022.</span>
			</div>
		</div>
		<div class="footerright">
			<div class="mapouter">
				<div class="gmap_canvas">
					<iframe width="600" height="400" id="gmap_canvas"
						src="https://maps.google.com/maps?q=2880%20Broadway,%20New%20York&t=&z=13&ie=UTF8&iwloc=&output=embed"
						frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
					<a
						href="https://www.embedgooglemap.net/blog/divi-discount-code-elegant-themes-coupon/"></a><br>
					<style>
.mapouter {
	position: relative;
	text-align: right;
	height: 400px;
	width: 600px;
}
</style>
					<a href="https://www.embedgooglemap.net"></a>
					<style>
.gmap_canvas {
	overflow: hidden;
	background: none !important;
	height: 400px;
	width: 600px;
}
</style>
				</div>
			</div>
		</div>
	</footer>
	<script src="app.js"></script>
</body>
</html>