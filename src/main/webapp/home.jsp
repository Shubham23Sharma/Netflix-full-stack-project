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
    background: url('https://techovedas.com/wp-content/uploads/2024/04/netflix-octobre-contenus-2022.jpg') no-repeat center center fixed;
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
		<li><img alt="" src="png-transparent-netflix-logo-netflix-television-show-streaming-media-film-netflix-logo-television-text-trademark-thumbnail-removebg-preview.png" height="80vh"></li>
		<li><a href="home.jsp">Home</a></li>
		<li><a href="#">About Us</a> </li>
		<li><a href="#">Contact Us</a></li>
		
		<li><form action="userLogin" method="post"><input type="submit" value="SignIn" name="userSignIn" style="background-color: red; color: white; border: none;  border-radius: 10px; text-align: center; height: 30px; width: 80px;" ></form></li>
		
	</ul>
	
	</div>
	
	
	<div class="section">
	
	<h1  style="font-size: 8vh">Unlimited movies, TV shows and more</h1> <br>
	<h3>Watch Anywhere. Cancel Anytime </h3>  <br>
	<p>Ready to watch? Enter your email to create or restart your membership</p> <br> <br>
	<div class="inline-container">
	
	<input type="email" class="transparent-input" placeholder="Email Address" style="height: 10vh; width: 25vw; background-color: transparent; border: 2px solid grey; border-radius: 5px"> 
	
	<button style="background-color: red; border: none; width: 150px; font-weight: bold; font-size: 20px" >Get Started</button>
	</div>
	</div>
	
	
	
	
	
</body>
</html>