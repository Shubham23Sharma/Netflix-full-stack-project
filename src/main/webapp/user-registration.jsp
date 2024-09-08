<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">


*{
margin: 0px;
padding: 0px;
box-sizing: border-box;

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

.signUpForm{
	
	
	width: 25vw;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	background: transparent;
	background-color: #FFFFFF;
	height: 80vh;
	color:black;
	margin-left: 35%;
	border-radius: 25px;

	
}

input{

height: 8vh;
width: 15vw;
border-radius: 15px;


}

::placeholder{

color: rgb(225, 227, 225);

}

a{

text-decoration: none;
color: rgb(225, 227, 225);

}



ul a{
color: white;
font-weight: bold;
font-size: 25px;

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
		
		<li><form action="user-login.jsp" method="post"><input type="submit" value="SignIn" name="userSignIn" style="background-color: red; color: white; border: none;  border-radius: 10px; text-align: center; height: 40px; width: 100px; font-size: 18px; cursor: pointer;" ></form></li>
		
	</ul>
	
	</div>
	
	<div class="signUpForm">
		<form action="signUpForm" method="post">
		<h2 style="color: black;">Sign Up</h2> <br>
		<input type="text" placeholder="Enter name" name="name"> <br> <br>
		<input type="email" placeholder="Email" name="email"> <br> <br>
		<input type="password" placeholder="Password" name="password"> <br> <br>
		<input type="date" placeholder="DOB" name="date"> <br> <br>
		<input type="number" placeholder="Phone" name="phone"> <br> <br>
		<input type="text" placeholder="Gender" name="gender"> <br> <br>
		<div style="display: flex; position: relative; flex-direction: column; gap:20px; justify-content: center; align-items: center;">
		<input type="submit" value="Sign Up" name="signUp" style="background-color: red; height: 5vh">
		
	
		</div>
		</form>

	</div>

</body>
</html>