<%@page import="jakarta.servlet.http.HttpServletRequest"%>
<%@page import="jakarta.servlet.RequestDispatcher"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MovieRegister</title>
<style type="text/css">
*{
margin: 0px;
padding: 0px;
box-sizing: border-box;
color: white;

}
a{

text-decoration: none;


}

ul a{
color: white;
font-weight: bold;
font-size: 25px;

}
.section{
	
	display: flex;
	flex-direction:column;
	justify-content: center;
	align-items: center;
	position:relative;
	top: 25vh;
	font-weight: bold;
	opacity: 10;

}
.background {
    background: url('https://png.pngtree.com/thumb_back/fh260/background/20191113/pngtree-blue-film-technology-film-background-image_322042.jpg') no-repeat center center fixed;
    background-size: cover;
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
   	z-index: -1;
    opacity: 0.9; /* Adjust opacity to make the image more transparent */
}

.transparent-input::placeholder {
    font-weight: bold;
    color: rgba(255, 255, 255, 0.7); /* Optional: Adjust color and transparency */
    font-size: 2.5vh;
    
}
.inline-container{
	
	display: flex;

}
</style>

</head>
<body>
	<%
	String adminMsg = (String) request.getAttribute("adminMsg");
	%>
	<div class="background"></div>
	<div style="position:relative;  top: 5vh;">
	
	
	
	<ul style="display: flex; justify-content: space-around; list-style-type: none; ">
		<li><img alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwrek_NkgFxYQnQ0jzLnZ1UVlIHVWUek0lLA&s" height="100vh" width="100vw"></li>
		<li><a href="home.jsp">Home</a></li>
		<li><a href="#">About Us</a> </li>
		<li><a href="#">Contact Us</a></li>     
		<li><form action="user-login.jsp" method="post"><input type="submit" value="User Signin" name="userSignIn" style="background-color: red; color: white; border: none;  border-radius: 10px; text-align: center; height: 40px; width: 100px; font-size: 18px; cursor: pointer;" ></form></li>
		<li><form action="admin-login.jsp" method="post"><input type="submit" value="Admin Signin" name="adminSignin" style="background-color: red; color: white; border: none;  border-radius: 10px; text-align: center; height: 40px; width: 120px; font-size: 18px; cursor: pointer;" ></form></li>
		
	</ul>
	
	</div>	
	<div class="section">
	
	<h1  style="font-size: 8vh">Unlimited movies, TV shows and more</h1> <br>
	<h3>Watch Anywhere. Cancel Anytime </h3>  <br>
	<p>Ready to watch? Enter your email to create or restart your membership</p> <br> <br>
	<div class="inline-container">
	
	<input type="email" class="transparent-input" placeholder="Email Address" style="height: 10vh; width: 25vw; background-color: transparent; border: 2px solid grey; border-radius: 5px; font-size: 18px"> 
	
	<form action="admin-login.jsp" method="post"><button style="background-color: red; border: none; width: 150px; font-weight: bold; font-size: 20px; height: 65px" >Get Started</button></form>
	</div>
	</div>
	
</body>
</html>