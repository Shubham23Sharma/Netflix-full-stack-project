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

.signinform{
	
	
	width: 25vw;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	background: transparent;
	background-color: rgb(42, 43, 42);
	opacity: 0.9;
	height: 75vh;
	color: rgb(225, 227, 225);
	margin-left: 35%;

	
}

input{

height: 8vh;
width: 15vw;
background-color: rgb(42, 43, 42);
color: rgb(225, 227, 225);

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
		<div class="background"></div>
		
		<div style="position:relative;  top: 5vh;">
	
	<ul style="display: flex; justify-content: space-around; list-style-type: none; ">
		<a href="home.jsp"><img alt="" src="png-transparent-netflix-logo-netflix-television-show-streaming-media-film-netflix-logo-television-text-trademark-thumbnail-removebg-preview.png" height="80vh"></a>
		<li><a href="home.jsp">Home</a></li>
		<li><a href="#">About Us</a> </li>
		<li><a href="#">Contact Us</a></li>
		
		<li><form action="userLogin" method="post"><input type="submit" value="SignIn" name="userSignIn" style="background-color: red; color: white; border: none;  border-radius: 10px; text-align: center; height: 30px; width: 80px;" ></form></li>
		
	</ul>
	
	</div>
		<div class="signinform">
		<form action="startpage" method="post">
		<h2 style="color: white;">Sign In</h2>
		<input type="text" placeholder="Email or mobile number" name="email"> <br> <br>
		<input type="password" placeholder="Password" name="password"> <br> <br>
		<div style="display: flex; position: relative; flex-direction: column; gap:20px; justify-content: center; align-items: center;">
		<input type="submit" value="Sign In" name="signin" style="background-color: red; height: 5vh">
		<p>OR</p>
		<input type="submit" value="Use a sign-in code">
		<p>Forgot Password?</p>
		<div class="RememberMe" style="display: flex;">
		<input type="checkbox" value="Remember me" id="rem" style="height: 2vh; width: 2vw;">
		<label for="rem">Remember Me
		</label>
		</div>
		<p>New to Netflix?<a href="#" style="font-weight: bold;">Sign Up Now</a></p>
		</div>
		</form>

		</div>
		
</body>
</html>