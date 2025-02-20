<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:ital,wght@0,200;0,300;0,400;0,600;0,700;0,900;1,200;1,300;1,400;1,600;1,700;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css" type="text/css">
    <link rel="icon" type="image/x-icon" href="Images/dashboardbg.png">
</head>
<body>
    <div class="dashboardcontainer">
        <div class="leftnavbar">
            <div class="leftnavbaritem">
                <div class="leftnavbarheader" style="width: 100px;">
                    <p>Hello <br><b>${username}</b></p>
                </div>
            </div>
            <div class="leftnavbaritem">
                <a href="">
                    <span class="las la-user-alt"></span><br>
                    <small>Profile</small>
                </a>
            </div>
            <div class="leftnavbaritem">
                <a href="">
                    <span class="las la-home"></span><br>
                    <small>Dashboard</small>
                </a>
            </div>
            <div class="leftnavbaritem">
                <a href="">
                    <span class="las la-shopping-cart"></span><br>
                    <small>Orders</small>
                </a>
            </div>
            <div class="leftnavbaritem">
                <a href="">
                    <span class="las la-question-circle"></span><br>
                    <small>Support</small>
                </a>
            </div>
        </div>
        <div class="dashboardtopnavbar">
            <div class="topnavbarbars">
                <label for="navtoggle">
                    <span class="las la-bars" id="toggbars"></span>
                </label>
            </div>
            <div class="topnavbarlogout">
                <a href="Index.jsp">
                    <span class="las la-power-off"></span>
                    <span>Logout</span>
                </a>
            </div>
        </div>
        <div class="maindashboardcomp">
            <div class="undermaindash">
                <form action="/E-commerce/Dashboard" method="post">
                    <div class="undermaindashform">
                        <div class="undermaintitle">
                            <h1>Personal Informations</h1>
                        </div>
                        <div class="firstandlastname">
                            <label for="firstname">First Name</label>
                            <input type="text" name="inputfirstname" id="firstname" placeholder="First name" value = "${username}"><br>
                            <label for="lastname">Last  Name</label>
                            <input type="text" name="inputlastname" id="lastname"  placeholder="Last name" value="${lastname}">
                        </div>
                        <div class="emailcon">
                            <label for="email">Email</label>
                            <input type="email" name="inputemail" id="email" placeholder="Email" value="${email}">
                        </div>
                        <div class="passwordandconfirm">
                            <label for="password">Password</label>
                            <input type="password" name="inputpassword" id="" placeholder="Password"><br>
                            <label for="password">Confirm </label>
                            <input type="password" id="" placeholder="Confirm Password">
                        </div><br><p style="color : green;"> ${updated}</p><p style="color : red;"> ${Deleted}</p><br>
                    <button style="left:55%; width: 180px;" name="submit" value="Update" type="submit">Update Profile</button>
					<button style="left:10%; width: 180px; background-image: linear-gradient(1.25deg,#fc5c65,#eb3b5a); type="submit"; name="submit"; value="Delete">Delete Account</button>
                    </div>
                </form>
                <div class="undermaindashpic">
                    <img src="Images/retrojo.jpg" alt="pic">
                </div>
            </div>
        </div>

    </div>

    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</body>
</html>